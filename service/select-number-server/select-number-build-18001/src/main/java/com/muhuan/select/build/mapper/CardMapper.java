package com.muhuan.select.build.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.muhuan.common.entity.Card;
import com.muhuan.select.build.cache.MybatisRedisCache;
import org.apache.ibatis.annotations.CacheNamespace;
import org.apache.ibatis.annotations.Mapper;

/**
 * @ClassName CardMapper
 * @Description TODO
 * @Author geng <yg.db@uniteddata.com>
 * @Date 2019/11/4
 * @Version 1.0.0
 **/
@Mapper
@CacheNamespace(implementation= MybatisRedisCache.class,eviction=MybatisRedisCache.class)
public interface CardMapper extends BaseMapper<Card> {

}
