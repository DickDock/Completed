package com.ls.completed.config.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LogDoInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
        long startTime = System.currentTimeMillis();
        System.out.println("\n--------LogInterception.preHandle---");
        System.out.println("Request URL: " + request.getRequestURL());
        System.out.println("StartTime:"+System.currentTimeMillis());
        request.setAttribute("startTime",startTime);
        return true;
    }
}
