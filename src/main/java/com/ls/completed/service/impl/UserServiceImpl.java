package com.ls.completed.service.impl;

import cn.hutool.crypto.digest.DigestUtil;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ls.completed.domain.User;
import com.ls.completed.mapper.UserMapper;
import com.ls.completed.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public int insertUser(User user) {
        user.setPassWord(DigestUtil.md5Hex(user.getPassWord()));
        return userMapper.insert(user);
    }

    @Override
    public int updateUser(User user) {
        if (user.getPassWord() == null) {
            System.out.println("传入密码为空");
        } else {
            user.setPassWord(DigestUtil.md5Hex(user.getPassWord()));
        }
        return userMapper.updateById(user);
    }

    @Override
    public int deleteUser(User user) {
        return userMapper.deleteById(user.getId());
    }

    @Override
    public IPage<User> getByPage(int currentPage, int pageSize) {
        IPage<User> page = new Page<>(currentPage, pageSize);
        userMapper.selectPage(page, null);
        return page;
    }
}
