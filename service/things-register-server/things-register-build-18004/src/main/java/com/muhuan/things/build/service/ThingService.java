package com.muhuan.things.build.service;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.muhuan.things.build.mapper.ThingsMapper;
import com.muhuan.things.common.entity.Thing;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName ThingService
 * @Description TODO
 * @Author geng <yg.db@uniteddata.com>
 * @Date 2019/11/25
 * @Version 1.0.0
 **/
@Service
public class ThingService extends BaseService<Thing> {
    @Autowired
    public ThingService(ThingsMapper mapper) {
        super(mapper);
    }
}
