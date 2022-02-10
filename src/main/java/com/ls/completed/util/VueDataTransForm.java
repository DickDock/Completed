package com.ls.completed.util;

import lombok.Data;

@Data
public class VueDataTransForm {
    private Boolean status;
    private Integer code;
    private String msg;
    private Object data;

    public VueDataTransForm(Boolean status, Integer code, String msg, Object data) {
        this.status = status;
        this.code = code;
        this.msg = msg;
        this.data = data;
    }

    public VueDataTransForm(Boolean status, String msg) {
        this.status = status;
        this.msg = msg;
        this.code = 200;
    }
}
