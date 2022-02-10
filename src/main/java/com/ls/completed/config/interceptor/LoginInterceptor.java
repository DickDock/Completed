package com.ls.completed.config.interceptor;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@Component
public class LoginInterceptor implements HandlerInterceptor {
    @Autowired
    private HttpSession session;

    @Autowired
    private ObjectMapper objectMapper;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
        Object user = session.getAttribute("token");
        if (user != null) {
            return true;
        } else {
            Map<String, Object> notLogin = new HashMap<>();
            notLogin.put("msg", "not login");
            notLogin.put("code", 403);
            notLogin.put("data", null);
            try (PrintWriter printWriter = response.getWriter()) {
                printWriter.print(objectMapper.writeValueAsString(notLogin));
            } catch (Exception e) {
                e.printStackTrace();
            }
            return false;
        }
    }


    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) {
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {
    }
}
