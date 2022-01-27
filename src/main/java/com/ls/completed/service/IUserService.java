package com.ls.completed.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.ls.completed.domain.User;

import java.util.List;

public interface IUserService extends IService<User> {
    int insertUser( User user );
    int updateUser( User user );
    int deleteUser( User user );
    User findUserByName( String userName );
    List<User> getAll();
}
