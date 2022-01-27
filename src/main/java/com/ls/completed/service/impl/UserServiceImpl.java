package com.ls.completed.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ls.completed.domain.User;
import com.ls.completed.mapper.UserMapper;
import com.ls.completed.service.IUserService;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public int insertUser(User user) {
        return userMapper.insert(user);
    }

    @Override
    public int updateUser(User user) {
        return userMapper.updateById(user);
    }

    @Override
    public int deleteUser(User user) {
        return userMapper.deleteById(user.getId());
    }

    @Override
    public User findUserByName(String userName) {
        return userMapper.selectById(userName);
    }

    @Override
    public List<User> getAll() {
        return userMapper.selectList(null);
    }
}
