package com.ls.completed.util;

import lombok.Data;

@Data
public class VueDataTransForm {
    private Boolean status;
    private Integer statusCode = 200;
    private String msg;
    private Object data;

    public VueDataTransForm() {
    }

    public VueDataTransForm(Boolean status, Integer statusCode, String msg, Object data) {
        this.status = status;
        this.statusCode = statusCode;
        this.msg = msg;
        this.data = data;
    }

    public VueDataTransForm(Boolean status, String msg) {
        this.status = status;
        this.msg = msg;
    }
}
