package com.ls.completed;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.RandomUtil;
import com.ls.completed.domain.User;
import com.ls.completed.mapper.UserMapper;
import com.ls.completed.service.impl.UserServiceImpl;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class UserFactoryTest {
    @Autowired
    private UserServiceImpl userService;

    @Test
    void generateUsers() {
        for (int i = 0; i < 500; i++) {
            User user = new User();
            user.setUserName("测试用户-"+RandomUtil.randomString(3));
            user.setStatus(true);
            user.setEmail(RandomUtil.randomString(10) + "@qq.com");
            user.setPhone(RandomUtil.randomNumbers(11));
            user.setQq(RandomUtil.randomNumbers(10));
            user.setRegistrationDate(DateUtil.now());
            user.setPassWord(RandomUtil.randomString(10));

            userService.insertUser(user);
        }
    }

}
