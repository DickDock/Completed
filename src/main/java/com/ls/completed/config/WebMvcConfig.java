package com.ls.completed.config;

import com.ls.completed.config.interceptor.LoginInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {
    @Autowired
    private LoginInterceptor loginInterceptor;


    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        //添加文件服务
        registry.addResourceHandler("/file/**").
                addResourceLocations("file:D:/file");
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        this.loginInterceptor(registry);//登录拦截
    }

    private void loginInterceptor(InterceptorRegistry registry){
        registry.addInterceptor(loginInterceptor)
                .addPathPatterns("/**")
                .excludePathPatterns(//释放登陆接口
                        "/login/**"
                );
    }

}
