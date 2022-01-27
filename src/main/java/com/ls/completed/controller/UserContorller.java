package com.ls.completed.controller;

import com.ls.completed.domain.User;
import com.ls.completed.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@RestController
@RequestMapping("/users")
public class UserContorller {

    @Autowired
    private IUserService iUserService;

    // 增
    @PostMapping
    public Object insert(@RequestBody User user) {
        return iUserService.insertUser(user);
    }

    // 改
    @PutMapping
    public Object update(@RequestBody User user) {
        return iUserService.updateUser(user);
    }

    // 删
    @DeleteMapping
    public Object delete(@RequestBody User user) {
        return iUserService.deleteUser(user);
    }

    // 查单个用户
    @GetMapping("/{id}")
    public Object getUserByID(@PathVariable Integer id) {
        return iUserService.getById(id);
    }

    //获取所有用户
    @GetMapping
    public List<User> getAllUser() {
        return iUserService.getAll();
    }
}
