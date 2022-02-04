package com.ls.completed.controller;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.CircleCaptcha;
import cn.hutool.core.date.DateField;
import cn.hutool.core.date.DateTime;
import cn.hutool.core.io.IORuntimeException;
import cn.hutool.core.lang.Validator;
import cn.hutool.core.util.IdUtil;
import cn.hutool.db.nosql.redis.RedisDS;
import cn.hutool.jwt.JWT;
import cn.hutool.jwt.JWTPayload;
import cn.hutool.jwt.JWTUtil;
import com.ls.completed.service.impl.UserServiceImpl;
import com.ls.completed.util.VueDataTransForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import redis.clients.jedis.Jedis;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

@RestController
@RequestMapping("/login")
public class LoginController {
    @Autowired
    private UserServiceImpl userService;

    @PostMapping
    public VueDataTransForm doLogin(@RequestBody HashMap<String, String> data, HttpServletResponse response) {
        VueDataTransForm vueDataTransForm = new VueDataTransForm(false, "登录失败！");
        System.out.println("登陆数据 =>" + data);

        String verifyCode = data.get("verifyCode");
        String passWd = data.get("passWd");
        String userName = data.get("userName");
        String captchaID = data.get("captchaID");

        if (!Objects.equals(verifyCode, "") && !Objects.equals(passWd, "") && !Objects.equals(userName, "") && !Objects.equals(captchaID, "")) {
            // 尝试Redis获取存储的验证码
            Jedis jedis = RedisDS.create().getJedis();
            String redisCapCode = jedis.get(captchaID);
            jedis.del(captchaID); // 取完即删除验证码
            jedis.close();

            if (redisCapCode == null) {
                return new VueDataTransForm(true, 200, "验证码失效，请刷新验证码！", "refreshCaptcha");
            }

            // 比对验证码
            if (redisCapCode.equals(verifyCode)) {
                System.out.println("验证码比对正确");
                // 判断是否为邮箱登录
                // 验证码匹配成功才能进行登录
                if (Validator.isEmail(data.get("userName"))) {
                    System.out.println("邮箱登录");
                    Boolean loginStatus = userService.loginByEmail(data.get("userName"), data.get("passWd"));
                    System.out.println("登陆状态 => " + loginStatus);
                    vueDataTransForm.setData(loginStatus);
                    if (loginStatus) {
                        vueDataTransForm.setStatus(true);
                        vueDataTransForm.setMsg("登录成功");
                    }
                } else {
                    System.out.println("用户名登录");
                    Boolean loginStatus = userService.loginByName(data.get("userName"), data.get("passWd"));
                    System.out.println("登陆状态 => " + loginStatus);
                    vueDataTransForm.setData(loginStatus);
                    if (loginStatus) {
                        vueDataTransForm.setStatus(true);
                        vueDataTransForm.setMsg("登录成功");
                    }
                }
                // 创建一个 cookie对象
                Cookie cookie = new Cookie("token", this.generateToken(userName));

                //将cookie对象加入response响应
                response.addCookie(cookie);

            } else {
                System.out.println("验证码比对不正确");
                return new VueDataTransForm(true, 200, "验证码错误，请重试！", "captchaErr");
            }
        } else {
            System.out.println("参数缺失！！");
            vueDataTransForm.setStatus(true);
            vueDataTransForm.setCode(200);
            vueDataTransForm.setMsg("缺失参数，请重试！");
        }

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

    // 生成认证token
    public String generateToken(String name) {
        DateTime now = DateTime.now();
        DateTime newTime = now.offsetNew(DateField.SECOND, 5);

        Map<String, Object> payload = new HashMap<String, Object>();
        //签发时间
        payload.put(JWTPayload.ISSUED_AT, now);
        //过期时间
        payload.put(JWTPayload.EXPIRES_AT, newTime);
        //生效时间
        payload.put(JWTPayload.NOT_BEFORE, now);
        //载荷
        payload.put("userName", name + now);

        String key = "wafasf";
        return JWTUtil.createToken(payload, key.getBytes());
    }

    // 验证token
    public Boolean cerifyToken(String token) {
        String key = "wafasf";
        JWT jwt = JWTUtil.parseToken(token);

        boolean verifyKey = jwt.setKey(key.getBytes()).verify();
        System.out.println(verifyKey);

        boolean verifyTime = jwt.validate(0);
        System.out.println(verifyTime);

        return verifyKey && verifyTime;
    }
}
