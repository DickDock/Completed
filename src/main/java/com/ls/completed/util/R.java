package com.ls.completed.util;

import lombok.Data;

@Data
public class R {
    private Boolean status;
    private Object data;

    public R() {
    }

    public R(Boolean status) {
        this.status = status;
    }

    public R(Object data) {
        this.data = data;
    }

    public R(Boolean status, Object data) {
        this.status = status;
        this.data = data;
    }
}
