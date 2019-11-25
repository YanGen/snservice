package com.muhuan.select.build.service;

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
    @Autowired
    public CardService(CardMapper mapper) {
        super(mapper);
    }

}
