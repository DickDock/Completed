package com.ls.completed;

import cn.hutool.core.io.file.FileReader;
import cn.hutool.json.JSONArray;
import cn.hutool.json.JSONUtil;
import com.ls.completed.domain.CNVD;
import com.ls.completed.service.impl.CnvdServiceImpl;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.List;

@SpringBootTest
public class CNVDTest {
    @Autowired
    private CnvdServiceImpl cnvdService;

    @Test
    void runPyTest() {
        String pythonPath = "C:\\Users\\19482\\Desktop\\cnvd.py";
        String[] arguments = new String[]{"python", pythonPath, "2022-03-11"};//指定命令、路径、传递的参数
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
        System.out.println("脚本输出信息：" + sbrs);
        System.out.println("脚本错误信息：" + sberror);

        // 加载脚本输出内容并进行入库操作
        try {
            JSONArray array = JSONUtil.parseArray(sbrs);

            List<CNVD> cnvdList = JSONUtil.toList(array, CNVD.class);
            for (CNVD cnvd : cnvdList) {
                System.out.println(cnvd);
                cnvdService.insertCnvd(cnvd);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    void testMysql() {
        //默认UTF-8编码，可以在构造中传入第二个参数做为编码
        FileReader fileReader = new FileReader("C:\\Users\\19482\\Desktop\\cnvd.json");
        //从字符串解析JSON数组
        String result = fileReader.readString();
        JSONArray array = JSONUtil.parseArray(result);

        List<CNVD> cnvdList = JSONUtil.toList(array, CNVD.class);
        for (CNVD cnvd : cnvdList) {
            System.out.println(cnvd);
            cnvdService.insertCnvd(cnvd);
        }
    }
}
