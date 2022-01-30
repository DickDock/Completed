package com.ls.completed;

import com.ls.completed.util.ServerOSUtil;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import oshi.SystemInfo;
import oshi.software.os.OperatingSystem;


@SpringBootTest
public class OSHITest {
    @Test
    void oshiSysInfTest(){
        SystemInfo systemInfo = new SystemInfo();
        OperatingSystem operatingSystem = systemInfo.getOperatingSystem();
        System.out.println(systemInfo.getOperatingSystem());
        System.out.println(systemInfo.getHardware());
        System.out.println(operatingSystem.getFamily());
        System.out.println(operatingSystem.getVersionInfo());

        System.out.println(operatingSystem.getFileSystem().getFileStores());
        System.out.println(operatingSystem.getFileSystem().getMaxFileDescriptors());
        System.out.println(operatingSystem.getFileSystem().getOpenFileDescriptors());

        System.out.println(operatingSystem.getNetworkParams().getIpv4DefaultGateway());
        System.out.println(operatingSystem.getNetworkParams().getIpv6DefaultGateway());

        System.out.println(operatingSystem.getProcessCount());
        System.out.println(operatingSystem.getThreadCount());

        System.out.println(systemInfo.getHardware().getProcessor());
        System.out.println(systemInfo.getHardware().getComputerSystem());
        System.out.println(systemInfo.getHardware().getMemory());
        System.out.println(systemInfo.getHardware().getDiskStores());
        System.out.println(systemInfo.getHardware().getNetworkIFs());
    }

    @Test
    void ServerOsUtilTest(){
        System.out.println(ServerOSUtil.getInfo());
    }
}
