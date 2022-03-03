package com.ls.completed.domain;


import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@TableName("logs")
public class Log {
    @TableId(type = IdType.AUTO)
    private Integer id;
    private String reqUrl;
    private String reqMethod;
    private String reqArgs;
    private String reqMethodName;
    private String reqClass;
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;
    @TableField(fill = FieldFill.UPDATE)
    private LocalDateTime updateTime;
}
