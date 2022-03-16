package com.ls.completed;

import cn.hutool.core.codec.Base64;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class JsonTest {

    @Test
    void index() {
        String strs = "eyJ0eXBlIjogMjA1NCwgImV0aGVyIjogeyJzcmMiOiAiNjI6M2I6NmE6YWY6MGY6YjQiLCAiZHN0\nIjogImZmOmZmOmZmOmZmOmZmOmZmIiwgInR5cGUiOiAiMjA1NCJ9LCAiYXJwIjogeyJwc3JjIjog\nIjEwLjM1LjI4LjE2OCIsICJ0eXBlIjogMSwgInBkc3QiOiAiMTAuMzUuMjguMSJ9fQ==";
        System.out.println(Base64.decodeStr(strs));
    }

}
