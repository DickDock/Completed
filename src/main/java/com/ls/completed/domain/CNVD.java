package com.ls.completed.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

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
    private String fromWhere;
}
