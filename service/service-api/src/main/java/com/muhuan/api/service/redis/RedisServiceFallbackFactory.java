package com.muhuan.api.service.redis;

import feign.hystrix.FallbackFactory;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

/**
 * @ClassName RedisServiceFallbackFactory
 * @Description TODO
 * @Author dong <feng.db@uniteddata.com>
 * @Date 2019/10/14
 * @Version 1.0.0
 **/
@Component
public class RedisServiceFallbackFactory implements FallbackFactory<RedisService> {
    @Override
    public RedisService create(Throwable throwable) {
        return new RedisService() {
            @Override
            public boolean insert(String key, Object value, long time) {
                return false;
            }

            @Override
            public boolean insert(String key, Map<Object, Object> value, long time) {
                return false;
            }

            @Override
            public boolean insert(String key, List<Object> value, long time) {
                return false;
            }


            @Override
            public boolean delete(String key) {
                return false;
            }

            @Override
            public long getExpire(String key) {
                return -1;
            }

            @Override
            public boolean hasKey(String key) {
                return false;
            }

            @Override
            public boolean hasObj(String key, Object obj) {
                return false;
            }

            @Override
            public Object getObj(String key) {
                return "服务熔断暂停";
            }

            @Override
            public List getList(String key) {
                return null;
            }

            @Override
            public Map getMap(String key) {
                return null;
            }
        };
    }
}
