package com.ls.completed;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ls.completed.domain.User;
import com.ls.completed.mapper.UserMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class MPPageTest {
    @Autowired
    private UserMapper userMapper;

    @Test
    void testPage() {
        IPage<User> page = new Page<User>(1, 2);
        userMapper.selectPage(page, null);
        System.out.println(page.getTotal());
        System.out.println(page.getPages());
        System.out.println(page.getSize());
        System.out.println(page.getCurrent());
        System.out.println(page.getRecords());
    }
}
