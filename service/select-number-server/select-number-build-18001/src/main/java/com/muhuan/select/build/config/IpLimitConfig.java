package com.muhuan.select.build.config;

import com.muhuan.select.build.interceptor.IpLimitInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @ClassName IpLimitConfig
 * @Description TODO ip限流
 * @Author geng <yg.db@uniteddata.com>
 * @Date 2019/12/24
 * @Version 1.0.0
 **/
@Configuration
public class IpLimitConfig implements WebMvcConfigurer {
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(ipLimitInterceptor()).addPathPatterns("/**");
    }
    @Bean
    public IpLimitInterceptor ipLimitInterceptor(){
        return new IpLimitInterceptor();
    }
}
