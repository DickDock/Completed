package com.ls.completed;

import cn.hutool.core.date.DateField;
import cn.hutool.core.date.DateTime;
import cn.hutool.jwt.JWT;
import cn.hutool.jwt.JWTPayload;
import cn.hutool.jwt.JWTUtil;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.HashMap;
import java.util.Map;

@SpringBootTest
public class JWTOkenTest {

    @Test
    void index() throws InterruptedException {
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
        payload.put("userName", "zhangsan");

        String key = "test1234a";
        String token = JWTUtil.createToken(payload, key.getBytes());
        System.out.println(token);

        // 验证JWT
        Thread.sleep(6000);
        JWT jwt = JWTUtil.parseToken(token);

        boolean verifyKey = jwt.setKey(key.getBytes()).verify();
        System.out.println(verifyKey);

        boolean verifyTime = jwt.validate(0);
        System.out.println(verifyTime);
    }

}
