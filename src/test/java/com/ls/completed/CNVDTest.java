package com.ls.completed;

import cn.hutool.core.io.file.FileReader;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.ls.completed.domain.CNVD;
import com.ls.completed.service.impl.CnvdServiceImpl;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;

@SpringBootTest
public class CNVDTest {
    @Autowired
    private CnvdServiceImpl cnvdService;

    @Test
    void runPyTest() {
        String pythonPath = "C:\\Users\\19482\\Desktop\\cnvd.py";
        String[] arguments = new String[]{"python", pythonPath, "2022-02-01"};//指定命令、路径、传递的参数
        StringBuilder sbrs = null;
        StringBuilder sberror = null;
        try {
            ProcessBuilder builder = new ProcessBuilder(arguments);
            Process process = builder.start();
            BufferedReader in = new BufferedReader(new InputStreamReader(process.getInputStream(), StandardCharsets.UTF_8));//获取字符输入流对象
            BufferedReader error = new BufferedReader(new InputStreamReader(process.getErrorStream(), StandardCharsets.UTF_8));//获取错误信息的字符输入流对象
            String line = null;
            sbrs = new StringBuilder();
            sberror = new StringBuilder();
            //记录输出结果
            while ((line = in.readLine()) != null) {
                sbrs.append(line);
            }
            //记录错误信息
            while ((line = error.readLine()) != null) {
                sberror.append(line);
            }
            in.close();
            process.waitFor();
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(sbrs);
        System.out.println(sberror);
    }

    @Test
    void testMysql() {
        //默认UTF-8编码，可以在构造中传入第二个参数做为编码
        FileReader fileReader = new FileReader("C:\\Users\\19482\\Desktop\\cnvd.json");
        //从字符串解析JSON数组
        String result = fileReader.readString();
        JSONArray arr = JSON.parseArray(result);
        for (Object n : arr) {
            CNVD cnvd = JSON.parseObject(n.toString(), CNVD.class);
            System.out.println(cnvd);
            cnvdService.insertCnvd(cnvd);
        }
    }
}
