package com.ls.completed.controller;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.CircleCaptcha;
import cn.hutool.core.io.IORuntimeException;
import cn.hutool.core.util.IdUtil;
import cn.hutool.db.nosql.redis.RedisDS;
import com.ls.completed.util.VueDataTransForm;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import redis.clients.jedis.Jedis;

import java.util.HashMap;

@RestController
@RequestMapping("/login")
public class LoginController {

    @PostMapping
    public VueDataTransForm doLogin(@RequestBody HashMap<String, String> data) {
        VueDataTransForm vueDataTransForm = new VueDataTransForm(false, "登录失败！");
        vueDataTransForm.setStatus(true);
        System.out.println(data);
        return vueDataTransForm;
    }


    @RequestMapping("/getCode")
    public VueDataTransForm getCode() {
        VueDataTransForm vueDataTransForm = new VueDataTransForm(false, "获取验证码失败！");
        try {
            //定义图形验证码的长、宽、验证码字符数、干扰元素个数
            CircleCaptcha captcha = CaptchaUtil.createCircleCaptcha(200, 100, 4, 20);
            //图形验证码写出，可以写出到文件，也可以写出到流
            System.out.println("获取到的验证码为：" + captcha.getCode());

            String simpleUUID = IdUtil.simpleUUID();

            Jedis jedis = RedisDS.create().getJedis();
            jedis.set(simpleUUID, captcha.getCode());
            jedis.expire(simpleUUID, 300);
            jedis.close();

            HashMap<String, String> dataTmp = new HashMap<>();
            dataTmp.put("captcha", captcha.getImageBase64());
            dataTmp.put("captchaId", simpleUUID);

            vueDataTransForm.setStatus(true);
            vueDataTransForm.setMsg("验证码获取成功");
            vueDataTransForm.setData(dataTmp);
        } catch (IORuntimeException e) {
            e.printStackTrace();
        }
        return vueDataTransForm;
    }
}
