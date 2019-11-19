package com.muhuan.api.service.test;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @ClassName Test
 * @Description TODO
 * @Author geng <yg.db@uniteddata.com>
 * @Date 2019/10/22
 * @Version 1.0.0
 **/
@FeignClient(value = "ud-feign-provider")
public interface Test {
    @RequestMapping(value = "/test/{name}",method = RequestMethod.GET)
    String test(@PathVariable String name);


}
