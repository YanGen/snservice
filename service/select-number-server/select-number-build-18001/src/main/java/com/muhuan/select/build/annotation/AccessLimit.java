package com.muhuan.select.build.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * @ClassName AccessLimit
 * @Description TODO
 * @Author geng <yg.db@uniteddata.com>
 * @Date 2019/12/24
 * @Version 1.0.0
 **/
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
public @interface AccessLimit {
    // 一个小时只能请求800次
    long seconds() default 60*60;
    int maxCount() default 800;
}
