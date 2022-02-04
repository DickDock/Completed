package com.ls.completed;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.CircleCaptcha;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class VerifyCaptchaTest {
    @Test
    void captchaTest() {
        //定义图形验证码的长、宽、验证码字符数、干扰元素个数
        CircleCaptcha captcha = CaptchaUtil.createCircleCaptcha(200, 100, 4, 20);
        //图形验证码写出，可以写出到文件，也可以写出到流
        System.out.println(captcha.getCode());
        captcha.write("./circle.png");
        //验证图形验证码的有效性，返回boolean值
        System.out.println(captcha.verify(captcha.getCode()));
        System.out.println(captcha.verify("1234"));
    }

}
