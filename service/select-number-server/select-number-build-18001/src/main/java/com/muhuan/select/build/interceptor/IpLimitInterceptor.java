package com.muhuan.select.build.interceptor;

import com.muhuan.api.util.ResultGeneratorUtil;
import com.muhuan.select.build.annotation.AccessLimit;
import com.muhuan.select.build.service.RedisService;
import com.muhuan.select.build.util.IpUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

/**
 * @ClassName IpLimitInterceptor
 * @Description TODO
 * @Author geng <yg.db@uniteddata.com>
 * @Date 2019/12/24
 * @Version 1.0.0
 **/
public class IpLimitInterceptor implements HandlerInterceptor {
    @Autowired
    private RedisService redisService;
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object object) throws UnsupportedEncodingException {
        if (object instanceof HandlerMethod) {
            HandlerMethod hm = (HandlerMethod) object;
            AccessLimit accessLimit = hm.getMethodAnnotation(AccessLimit.class);
            if (null == accessLimit) {
                return true;
            }
            long seconds = accessLimit.seconds();
            int maxCount = accessLimit.maxCount();
            String ip = IpUtil.getRealIP(httpServletRequest);

            String key = httpServletRequest.getContextPath() + ":" + httpServletRequest.getServletPath() + ":" + ip ;

            Integer count = (Integer) redisService.get(key);

            if (null == count || -1 == count) {
                redisService.set(key, 1,seconds);
                return true;
            }

            if (count < maxCount) {
                redisService.incr(key,1);
                return true;
            }

            if (count >= maxCount) {

                try {
                    PrintWriter printWriter = null;
                    httpServletResponse.setCharacterEncoding("UTF-8");
                    httpServletResponse.setContentType("application/json;charset=UTF-8");
                    printWriter = httpServletResponse.getWriter();
                    printWriter.print(ResultGeneratorUtil.getResultFail("请求过于频繁请稍后再试！"));
                }catch (Exception e){
                    throw new RuntimeException("获取写入对象失败");
                }

                return false;
            }
        }

        return true;
    }


}
