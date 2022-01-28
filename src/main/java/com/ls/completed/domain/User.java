package com.ls.completed.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@Data
@TableName("users")
public class User {
    @TableId(type = IdType.AUTO)
    private Integer id;
    private String userName;
    private Boolean status;
    private String registrationDate;
    private String passWord;
    private String email;
    private String phone;
    private String qq;
}
