package com.muhuan.api.service.redis;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import java.util.Map;

/**
 * @ClassName RedisService
 * @Description TODO
 * @Author dong <feng.db@uniteddata.com>
 * @Date 2019/10/14
 * @Version 1.0.0
 **/
@FeignClient(value = "UD-REDIS-PROVIDER")
public interface RedisService {

    /************************* 添加数据，并设置过期时间 *************************/
    /**
     *
     * @param key 键 （遵循一定是设计规则，以确保唯一性）
     * @param value 值 （JSON对象）
     * @param time 小于等于0为持久化存储
     * @return
     */

    @RequestMapping(value = "/insertObj/{key}/{time}",method = RequestMethod.POST)
    boolean insert(@PathVariable("key") String key, @RequestBody Object value, @PathVariable("time") long time);

    @RequestMapping(value = "insertMap/{key}/{time}",method = RequestMethod.POST)
    boolean insert(@PathVariable("key") String key, @RequestBody Map<Object, Object> value, @PathVariable("time") long time);

    @RequestMapping(value = "insertList/{key}/{time}",method = RequestMethod.POST)
    boolean insert(@PathVariable("key") String key, @RequestBody List<Object> value, @PathVariable("time") long time);


    /**
     * 删除数据
     * @param key
     * @return
     */
    @RequestMapping(value = "/del/{key}",method = RequestMethod.GET)
    boolean delete(@PathVariable("key") String key);

    /**
     * 获取过期时间
     * @param key
     * @return 过期时间（小于等于0为持久化）
     */
    @RequestMapping(value = "/getExpire/{key}",method = RequestMethod.GET)
    long getExpire(@PathVariable("key") String key);

    /**
     * 检查key是否存在
     * @param key
     * @return
     */
    @RequestMapping(value = "/hasKey/{key}",method = RequestMethod.GET)
    boolean hasKey(@PathVariable("key") String key);

    /**
     * 检查key中是否存在指定数据
     * @param key
     * @param obj
     * @return
     */
    @RequestMapping(value = "/hasObj/{key}",method = RequestMethod.POST)
    boolean hasObj(@PathVariable("key") String key, @RequestBody Object obj);

    /************************* 获取数据 *************************/
    @RequestMapping(value = "/getObj/{key}",method = RequestMethod.GET)
    Object getObj(@PathVariable("key") String key);

    @RequestMapping(value = "/getList/{key}",method = RequestMethod.GET)
    List getList(@PathVariable("key") String key);

    @RequestMapping(value = "/getMap/{key}",method = RequestMethod.GET)
    Map getMap(@PathVariable("key") String key);
}
