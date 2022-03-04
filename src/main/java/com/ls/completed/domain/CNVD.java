package com.ls.completed.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@TableName("cnvds")
public class CNVD {
    @TableId(type = IdType.AUTO)
    private Integer id;
    private String cveId;
    private String cnvdId;
    private String vulName;
    private String vulRank;
    private String vulLevel;
    private String vulRange;
    private String vulDetail;
    private String vulType;
    private String refUrl;
    private String vulSolution;
    private String officialPatchInfo;
    private String verifyMessage;
    private String publicDate;
    private String reportDate;
    private String collectionDate;
    private String updateDate;
    private String vulAttachment;
    private String platformCollectionDate;
    @TableField(value = "fr0m")
    private String fr0m;
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;
    //注解@TableField，fill属性，配置自动填充，在更新时，自动更新时间。默认是不处理的
    @TableField(fill = FieldFill.UPDATE)
    private LocalDateTime updateTime;
}
