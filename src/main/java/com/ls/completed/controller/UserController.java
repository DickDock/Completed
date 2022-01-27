package com.ls.completed.controller;

import com.ls.completed.domain.User;
import com.ls.completed.service.IUserService;
import com.ls.completed.util.R;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("/users")
public class UserController {

    @Autowired
    private IUserService iUserService;

    @GetMapping
    public R getAll() {
        R r = new R();
        r.setStatus(true);
        r.setData(iUserService.list());
        return new R(true, iUserService.list());
    }

    @PostMapping
    public R save(@RequestBody User user) {
        return new R(iUserService.save(user));
    }

    @PutMapping
    public R update(@RequestBody User user) {
        return new R(iUserService.save(user));
    }

    @DeleteMapping
    public R delete(@PathVariable Integer id) {
        return new R(true);
    }

    @GetMapping("/{id}")
    public R getByID(@PathVariable Integer id) {
        return new R(true, iUserService.getById(id));
    }

}
