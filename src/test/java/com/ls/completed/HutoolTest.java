package com.ls.completed;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.IdUtil;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class HutoolTest {
    @Test
    void DataTest() {
        System.out.println("当前时间为：" + DateUtil.now());
    }

    @Test
    void UuidTest() {
        System.out.println("唯一UUID为：" + IdUtil.randomUUID());
    }
}
