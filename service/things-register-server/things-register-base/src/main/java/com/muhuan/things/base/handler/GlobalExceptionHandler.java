package com.muhuan.things.base.handler;

import com.muhuan.api.bean.ajax.ResponseResult;
import com.muhuan.api.util.ResultGeneratorUtil;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

/**
 * @ClassName GlobalExceptionHandler
 * @Description TODO
 * @Author dong <feng.db@uniteddata.com>
 * @Date 2019/9/5
 * @Version 1.0.0
 **/
@RestControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler({RuntimeException.class,Exception.class})
    public ResponseResult globalExceptionHandler(Exception e){
        return ResultGeneratorUtil.getResultFail("服务器出错啦！错误信息为:" + e.getMessage());
    }
}
