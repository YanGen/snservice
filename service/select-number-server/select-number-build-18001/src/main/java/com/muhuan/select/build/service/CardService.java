package com.muhuan.select.build.service;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.muhuan.common.entity.Card;
import com.muhuan.select.build.mapper.CardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName CardService
 * @Description TODO
 * @Author geng <yg.db@uniteddata.com>
 * @Date 2019/11/4
 * @Version 1.0.0
 **/
@Service
public class CardService extends BaseService<Card> {
    private final CardMapper mapper;
    @Autowired
    public CardService(CardMapper mapper) {
        super(mapper);
        this.mapper = mapper;
    }

    @Override
    public IPage<Card> queryByPage(Page<Card> pager, Wrapper<Card> entityWrapper) {
        pager.setTotal(1000);
        pager.setPages(50);
        return mapper.selectPage(pager, entityWrapper);
    }


}
