package com.ls.completed.controller;

import com.ls.completed.domain.User;
import com.ls.completed.service.IUserService;
import com.ls.completed.util.VueDataTransForm;
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
    public VueDataTransForm insert(@RequestBody User user) {
        int lines = iUserService.insertUser(user);
        VueDataTransForm vueDataTransForm = new VueDataTransForm(false, "新增用户失败！");
        if (lines == 1) {
            vueDataTransForm.setStatus(true);
            vueDataTransForm.setMsg("新增用户成功！");
        }
        return vueDataTransForm;
    }

    // 改
    @PutMapping
    public VueDataTransForm update(@RequestBody User user) {
        int lines = iUserService.updateUser(user);
        VueDataTransForm vueDataTransForm = new VueDataTransForm(false, "修改用户失败！");
        if (lines == 1) {
            vueDataTransForm.setStatus(true);
            vueDataTransForm.setMsg("修改用户成功！");
        }
        return vueDataTransForm;
    }

    // 删
    @DeleteMapping
    public VueDataTransForm delete(@RequestBody User user) {
        int lines = iUserService.deleteUser(user);
        VueDataTransForm vueDataTransForm = new VueDataTransForm(false, "删除用户失败！");
        if (lines == 1) {
            vueDataTransForm.setStatus(true);
            vueDataTransForm.setMsg("删除用户成功！");
        }
        return vueDataTransForm;
    }

    // 查单个用户
    @GetMapping("/{id}")
    public VueDataTransForm getUserByID(@PathVariable Integer id) {
        User user = iUserService.getById(id);
        VueDataTransForm vueDataTransForm = new VueDataTransForm(false, "查询用户失败！");
        if (user.getId() != null) {
            vueDataTransForm.setStatus(true);
            vueDataTransForm.setMsg("查询用户成功！");
            vueDataTransForm.setData(user);
        }
        return vueDataTransForm;
    }

    //获取所有用户
    @GetMapping
    public VueDataTransForm getAllUser() {
        List<User> userList = iUserService.getAll();
        VueDataTransForm vueDataTransForm = new VueDataTransForm(false, "查询用户失败！");
        if (userList.size() > 0) {
            vueDataTransForm.setStatus(true);
            vueDataTransForm.setMsg("查询用户成功！");
            vueDataTransForm.setData(userList);
        }
        return vueDataTransForm;
    }
}
