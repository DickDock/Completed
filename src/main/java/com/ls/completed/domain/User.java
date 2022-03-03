package com.ls.completed.domain;

import com.baomidou.mybatisplus.annotation.*;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@TableName("users")
public class User {
    @TableId(type = IdType.AUTO)
    private Integer id;
    private String userName;
    private Boolean status;
    private String passWord;
    private String email;
    private String phone;
    private String qq;
    //注解@TableField，fill属性，配置自动填充，在插入时，自动插入创建时间。默认是不处理的
    @TableField(fill = FieldFill.INSERT)
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "Asia/Shanghai")
    private LocalDateTime createTime;
    //注解@TableField，fill属性，配置自动填充，在更新时，自动更新时间。默认是不处理的
    @TableField(fill = FieldFill.UPDATE)
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "Asia/Shanghai")
    private LocalDateTime updateTime;

    @JsonIgnore
    public String getPassWord() {
        return passWord;
    }

    @JsonProperty
    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }
}
