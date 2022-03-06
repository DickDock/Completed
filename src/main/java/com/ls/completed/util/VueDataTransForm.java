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

    public VueDataTransForm setStatus(Boolean status) {
        this.status = status;
        return this;
    }

    public VueDataTransForm setCode(Integer code) {
        this.code = code;
        return this;
    }

    public VueDataTransForm setMsg(String msg) {
        this.msg = msg;
        return this;
    }

    public VueDataTransForm setData(Object data) {
        this.data = data;
        return this;
    }
}
