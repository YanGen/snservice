package com.muhuan.select.build.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.muhuan.api.bean.ajax.ResponseResult;
import com.muhuan.api.util.ResultGeneratorUtil;
import com.muhuan.api.util.ValidateUtil;
import com.muhuan.common.entity.Card;
import com.muhuan.select.build.encapsulation.CardEncapsulation;
import com.muhuan.select.build.service.CardService;
import com.muhuan.select.build.util.RedisUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import pager.QueryCardPager;

import java.util.HashMap;
import java.util.Map;


/**
 * @ClassName CardController
 * @Description TODO
 * @Author geng <yg.db@uniteddata.com>
 * @Date 2019/11/4
 * @Version 1.0.0
 **/

@RestController
@RequestMapping("/number")
//@CrossOrigin(allowCredentials = "true", allowedHeaders = "*")
public class CardController extends BaseController<Card> {

    private RedisUtils redisUtils = new RedisUtils();


    private final CardService service;
    @Autowired
    public CardController(CardService service) {
        super(service);
        this.service = service;
    }


    @ResponseBody
    @RequestMapping("/list/{operatorId}/{provinceId}/{cityId}")
    public ResponseResult list(@PathVariable Integer operatorId, @PathVariable Integer provinceId, @PathVariable Integer cityId) {
        Map<String, Object> columnMap = new HashMap<>();
        columnMap.put("operator_id", operatorId);
        columnMap.put("province_id", provinceId);
        columnMap.put("city_id", cityId);
        return ResultGeneratorUtil.getResultSuccessWithData(service.getByMap(columnMap));
    }

    /**
     * 卡号简单分页条件查询
     */
    @RequestMapping(value = "/query")
    @ResponseBody
    public IPage<Card> query(QueryCardPager queryCardPager ) {
        Page page = new Page();
        page.setCurrent(queryCardPager.getOffset());
        page.setSize(queryCardPager.getLimit()<100?queryCardPager.getLimit():100);
        QueryWrapper<Card> wrapper = new QueryWrapper<>();
        wrapper.orderByDesc("id")
                .like("operator_id", queryCardPager.getParams().get("operatorId"))
                .like("city_id", queryCardPager.getParams().get("cityId"));
        return service.queryByPage(page,wrapper);

    }

    /**
     * 卡号复杂分页条件查询
     */
    @RequestMapping(value = "/queryFlex")
    @ResponseBody
    public IPage<Card> queryFlex(QueryCardPager queryCardPager ) {

        Map<String,Object> params = queryCardPager.getParams();
        Page<Card> page = new Page<>();
        page.setCurrent(queryCardPager.getOffset());
        page.setSize(queryCardPager.getLimit()<100?queryCardPager.getLimit():100);

        // 参数包装成wrapper
        QueryWrapper<Card> wrapper = CardEncapsulation.queryFlexParamsToWrapper(params);

        IPage<Card> result = service.queryByPage(page, wrapper);
        return result;
    }



}
