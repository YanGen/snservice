package com.muhuan.things.build.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.muhuan.things.build.mapper.ThingsMapper;
import com.muhuan.things.common.entity.Thing;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

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

    public Object getByTimeFrame(Date date, Date tomorrow) {
        QueryWrapper<Thing> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("delete_flag", 0);
        queryWrapper.between("execute_time", date,tomorrow);
        return mapper.selectList(queryWrapper);
    }

    public void updateStatusById(Integer thingId) {
        Thing thing = mapper.selectById(thingId);
        thing.setStatus(thing.getStatus() == 0?1:0);
        mapper.updateById(thing);
    }
}
