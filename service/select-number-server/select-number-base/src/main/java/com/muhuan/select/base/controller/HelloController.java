package com.muhuan.select.base.controller;

import com.muhuan.api.bean.ajax.ResponseResult;
import com.muhuan.api.util.ResultGeneratorUtil;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @ClassName HelloController
 * @Description TODO
 * @Author dong <feng.db@uniteddata.com>
 * @Date 2019/10/16
 * @Version 1.0.0
 **/
@RestController
@RequestMapping("/hello")
public class HelloController {
    @GetMapping("/")
    public ResponseResult hello(){
        return ResultGeneratorUtil.getResultSuccessWithData("Hello!");
    }
}
