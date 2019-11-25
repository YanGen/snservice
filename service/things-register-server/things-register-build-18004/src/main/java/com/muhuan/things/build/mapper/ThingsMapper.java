package com.muhuan.things.build.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.muhuan.things.common.entity.Thing;
import org.apache.ibatis.annotations.Mapper;

/**
 * @ClassName ThingsMapper
 * @Description TODO
 * @Author geng <yg.db@uniteddata.com>
 * @Date 2019/11/25
 * @Version 1.0.0
 **/
@Mapper
public interface ThingsMapper extends BaseMapper<Thing> {
}
