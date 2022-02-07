package com.ls.completed;

import cn.hutool.core.lang.Console;
import cn.hutool.system.oshi.CpuInfo;
import cn.hutool.system.oshi.OshiUtil;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;


@SpringBootTest
public class OSHITest {
    @Test
    void oshiSysInfTest(){
        long total = OshiUtil.getMemory().getTotal();
        System.out.println(total);

        CpuInfo cpuInfo = OshiUtil.getCpuInfo();
        Console.log(cpuInfo);
    }
}
