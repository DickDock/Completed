package com.ls.completed.domain;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("users")
public class User {
    private Integer id;
    private String userName;
    private String passWord;
    private String email;
    private String phone;
    private String qq;
}
