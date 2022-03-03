package com.ls.completed.config.interceptor;

import com.ls.completed.domain.Log;
import com.ls.completed.mapper.LogMapper;
import com.ls.completed.service.impl.LogServicelmpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Component
public class LogDoInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
        long startTime = System.currentTimeMillis();
        System.out.println("\n--------LogInterception.preHandle---");
        System.out.println("Request URL: " + request.getRequestURL());
        System.out.println("StartTime:" + System.currentTimeMillis());
        request.setAttribute("startTime", startTime);

        Log log = new Log();
        log.setReqUrl(String.valueOf(request.getRequestURL()));

        return true;
    }
}
