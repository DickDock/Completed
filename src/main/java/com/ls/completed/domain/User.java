package com.ls.completed.domain;

import com.baomidou.mybatisplus.annotation.*;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@TableName("users")
public class User {
    @TableId(type = IdType.AUTO)
    private Integer id;
    private String userName;
    private Boolean status;
    @JsonIgnore
    private String passWord;
    private String email;
    private String phone;
    private String qq;
    //注解@TableField，fill属性，配置自动填充，在插入时，自动插入创建时间。默认是不处理的
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;
    //注解@TableField，fill属性，配置自动填充，在更新时，自动更新时间。默认是不处理的
    @TableField(fill = FieldFill.UPDATE)
    private LocalDateTime updateTime;
}
