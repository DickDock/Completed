package com.ls.completed.controller;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.CircleCaptcha;
import cn.hutool.core.io.IORuntimeException;
import com.ls.completed.util.VueDataTransForm;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/login")
public class LoginController {

    @RequestMapping("/getCode")
    public VueDataTransForm getCode() {
        VueDataTransForm vueDataTransForm = new VueDataTransForm(false, "获取验证码失败！");
        try {
            //定义图形验证码的长、宽、验证码字符数、干扰元素个数
            CircleCaptcha captcha = CaptchaUtil.createCircleCaptcha(200, 100, 4, 20);
            //图形验证码写出，可以写出到文件，也可以写出到流
            System.out.println("获取到的验证码为：" + captcha.getCode());
            vueDataTransForm.setStatus(true);
            vueDataTransForm.setMsg("验证码获取成功");
            vueDataTransForm.setData(captcha.getImageBase64());
        } catch (IORuntimeException e) {
            e.printStackTrace();
        }
        return vueDataTransForm;
    }
}
