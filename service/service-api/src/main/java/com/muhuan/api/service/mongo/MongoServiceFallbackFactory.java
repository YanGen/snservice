package com.muhuan.api.service.mongo;

import com.muhuan.api.bean.entity.BaseEntity;
import feign.hystrix.FallbackFactory;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * @ClassName MongoServiceFallbackFactory
 * @Description TODO
 * @Author dong <feng.db@uniteddata.com>
 * @Date 2019/10/14
 * @Version 1.0.0
 **/
public class MongoServiceFallbackFactory implements FallbackFactory<MongoService> {
    @Override
    public MongoService create(Throwable throwable) {
        return new MongoService() {

            @Override
            public BaseEntity add(BaseEntity obj) {
                return null;
            }

            @Override
            public List add(BaseEntity[] objs) {
                return null;
            }

            @Override
            public void deleteById(Serializable serializable) {

            }

            @Override
            public void deleteByIds(Serializable[] serializables) {

            }

            @Override
            public void delete(BaseEntity obj) {

            }

            @Override
            public void deleteAll(BaseEntity[] objs) {

            }

            @Override
            public BaseEntity update(BaseEntity obj) {
                return null;
            }

            @Override
            public List update(BaseEntity[] objs) {
                return null;
            }

            @Override
            public List findAll() {
                return null;
            }

            @Override
            public List findAll(int pageSize, int pageNum) {
                return null;
            }

            @Override
            public List findAllByCondition(Map condition) {
                return null;
            }

            @Override
            public List findAllByCondition(Map condition, int pageSize, int pageNum) {
                return null;
            }

            @Override
            public BaseEntity findOneByCondition(Map condition) {
                return null;
            }

            @Override
            public long count(Map condition) {
                return 0;
            }
        };
    }
}
