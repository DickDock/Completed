package com.ls.completed.util.login;

import cn.hutool.core.date.DateField;
import cn.hutool.core.date.DateTime;
import cn.hutool.jwt.JWT;
import cn.hutool.jwt.JWTPayload;
import cn.hutool.jwt.JWTUtil;

import java.util.HashMap;
import java.util.Map;

public class tokenUtil {
    private static final String key = "wadasfa";
    private static final DateTime now = DateTime.now();
    private static final DateTime newTime = now.offsetNew(DateField.SECOND, 5);


    // 生成认证token
    public static String generateToken(String name) {
        Map<String, Object> payload = new HashMap<String, Object>();
        //签发时间
        payload.put(JWTPayload.ISSUED_AT, now);
        //过期时间
        payload.put(JWTPayload.EXPIRES_AT, newTime);
        //生效时间
        payload.put(JWTPayload.NOT_BEFORE, now);
        //载荷
        payload.put("userName", name + now);

        return JWTUtil.createToken(payload, key.getBytes());
    }

    // 验证token
    public static Boolean verifyToken(String token) {
        JWT jwt = JWTUtil.parseToken(token);

        boolean verifyKey = jwt.setKey(key.getBytes()).verify();
        System.out.println(verifyKey);

        boolean verifyTime = jwt.validate(0);
        System.out.println(verifyTime);

        return verifyKey && verifyTime;
    }
}
