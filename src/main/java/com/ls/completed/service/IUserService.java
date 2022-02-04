package com.ls.completed.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.ls.completed.domain.User;

public interface IUserService extends IService<User> {
    int insertUser(User user);

    int updateUser(User user);

    int deleteUser(User user);

    IPage<User> getByPage(int currentPage, int pageSize);

    Boolean loginByName(String username, String password);

    Boolean loginByEmail(String username, String password);
}
