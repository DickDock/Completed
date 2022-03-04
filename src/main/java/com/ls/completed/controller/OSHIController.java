package com.ls.completed.controller;

import cn.hutool.system.oshi.CpuInfo;
import cn.hutool.system.oshi.OshiUtil;
import com.ls.completed.util.VueDataTransForm;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import oshi.hardware.ComputerSystem;
import oshi.hardware.GlobalMemory;
import oshi.hardware.HWDiskStore;
import oshi.hardware.HWPartition;
import oshi.software.os.OSProcess;
import oshi.software.os.OperatingSystem;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@RestController
@RequestMapping("/oshi")
public class OSHIController {

    private static DecimalFormat df = new DecimalFormat("#0.00");

    /**
     * 获取操作系统资源信息
     *
     * @return
     */
    @GetMapping("/os")
    public VueDataTransForm getOSHI() {
        //返回结果
        HashMap<String, Object> map = new HashMap<>();
        //1.计算机系统和固件，底板
        ComputerSystem system = OshiUtil.getSystem();
        map.put("system", system);

        //2、操作系统名称
        map.put("osName", OshiUtil.getOs().getFamily());

        VueDataTransForm vueDataTransForm = new VueDataTransForm(true, "成功");
        vueDataTransForm.setData(map);
        return vueDataTransForm;
    }

    /**
     * 获取进程的信息
     * @return
     */
        @GetMapping("/process")
    public VueDataTransForm getProcess() {
        HashMap<String, Object> map = new HashMap<>();
        //1.物理（核心）和逻辑（超线程）CPU，处理器组，NUMA节点
        OperatingSystem os = OshiUtil.getOs();
        VueDataTransForm vueDataTransForm = new VueDataTransForm(true, "成功");

        List<OSProcess> processes = os.getProcesses();
        List<HashMap<String, Object>> result = new ArrayList<>();
        for (OSProcess process : processes) {
            HashMap<String, Object> pro = new HashMap<String, Object>();
            pro.put("name", process.getName());
            pro.put("id", process.getProcessID());
            pro.put("username", process.getUser());
            pro.put("state", process.getState().toString());
            result.add(pro);
        }


        map.put("processes", result);
        vueDataTransForm.setData(map);
        return vueDataTransForm;
    }

    /**
     * 获取内存信息
     * @return
     */
    @GetMapping("/memory")
    public VueDataTransForm getMemory() {
        HashMap<String, Object> map = new HashMap<>();
        GlobalMemory memory = OshiUtil.getMemory();
        double available = Double.valueOf(memory.getAvailable());
        double total = Double.valueOf(memory.getTotal());
        double res = available / total  * 100d;
        //使用百分比
        String result = "%" + df.format(res);
        //可用内存
        String avi = df.format(available / 1024 / 1024 / 1024) + "G";
        //总内存
        String tot = df.format(total / 1024 / 1024 / 1024) + "G";

        VueDataTransForm vueDataTransForm = new VueDataTransForm(true, "成功");
        map.put("memory", result);
        map.put("available", avi);
        map.put("total", tot);
        vueDataTransForm.setData(map);
        return vueDataTransForm;
    }

    /**
     * 获取挂载的磁盘的信息
     * @return
     */
    @GetMapping("/disk")
    public VueDataTransForm getdiskStores() {
        List<HWDiskStore> diskStores = OshiUtil.getDiskStores();

        List<HashMap<String, Object>> result = new ArrayList<>();
        for (HWDiskStore diskStore : diskStores) {
            HashMap<String, Object> map = new HashMap<>();
            map.put("name", diskStore.getModel());
            //使用百分比
            map.put("size", byteToMb(diskStore.getSize()));
            List<Object> partitions = new ArrayList<>();
            for (HWPartition partition : diskStore.getPartitions()) {
                HashMap<String, Object> par = new HashMap<>();
                par.put("mountPoint", partition.getMountPoint());
                par.put("name", partition.getName());
                par.put("identification", partition.getIdentification());
                par.put("size", byteToMb(partition.getSize()));
                partitions.add(par);
            }
            map.put("partitions", partitions);
            result.add(map);
        }

        VueDataTransForm vueDataTransForm = new VueDataTransForm(true, "成功");
        vueDataTransForm.setData(result);
        return vueDataTransForm;
    }

    /**
     * 获取CPU信息
     * @return
     */
    @GetMapping("/cpu")
    public VueDataTransForm getCPU() {

        HashMap<String, Object> map = new HashMap<>();
        CpuInfo cpuInfo = OshiUtil.getCpuInfo();

        map.put("cpu", cpuInfo);
        //cpu使用率
        map.put("used", "%" + df.format(100d - OshiUtil.getCpuInfo().getFree()));

        VueDataTransForm vueDataTransForm = new VueDataTransForm(true, "成功");
        vueDataTransForm.setData(map);
        return vueDataTransForm;
    }




    private String byteToMb(long value) {
        double val = Double.valueOf(value);
        String result = df.format(val / 1024 / 1024 / 1024) + "G";
        return result;
    }



}
