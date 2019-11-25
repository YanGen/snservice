package com.muhuan.things.build.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.muhuan.api.bean.ajax.ResponseResult;
import com.muhuan.api.util.ResultGeneratorUtil;
import com.muhuan.things.build.service.BaseService;
import com.muhuan.things.build.service.ThingService;
import com.muhuan.things.common.entity.Thing;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * @ClassName ThingController
 * @Description TODO
 * @Author geng <yg.db@uniteddata.com>
 * @Date 2019/11/25
 * @Version 1.0.0
 **/
@RestController
@RequestMapping("/thing")
@CrossOrigin(allowCredentials = "true", allowedHeaders = "*")
public class ThingController extends BaseController<Thing> {

    @Autowired
    public ThingController(ThingService service) {
        super(service);
    }

    /**
     * 查询
     */
    @RequestMapping(value = "/insert")
    @ResponseBody
    public ResponseResult insert(@RequestBody Thing thing){
        thing.setStatus(0);
        service.add(thing);
        return ResultGeneratorUtil.getResultSuccessWithData("");
    }

    /**
     * 查询
     */
    @RequestMapping(value = "/query")
    @ResponseBody
    public ResponseResult query(Date date) throws Exception{
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String s = sdf.format(date);
        Date validateDate =  sdf.parse(s);
        Map<String,Object> params = new HashMap<>();
        params.put("execute_time", validateDate);
        return ResultGeneratorUtil.getResultSuccessWithData(service.getByMap(params));

    }

}
