package com.ls.completed;

import cn.hutool.core.lang.Console;
import cn.hutool.system.oshi.CpuInfo;
import cn.hutool.system.oshi.OshiUtil;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class CpuInfTest {
    @Test
    void GetCpuInf() {
        CpuInfo cpuInfo = OshiUtil.getCpuInfo();
        System.out.println(cpuInfo.toString());
        Console.log(cpuInfo);
    }
}
