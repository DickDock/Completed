package com.ls.completed.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.ls.completed.domain.CNVD;
import com.ls.completed.service.ICnvdService;
import com.ls.completed.util.VueDataTransForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/vuls")
public class VulInfController {
    @Autowired
    private ICnvdService iCnvdService;

    //分页获取漏洞信息
    @GetMapping("/pages/{currentPage}/{pageSize}")
    public VueDataTransForm getLogByPage(@PathVariable int currentPage, @PathVariable int pageSize) {

        IPage<CNVD> iPage = iCnvdService.getByPage(currentPage, pageSize);

        VueDataTransForm vueDataTransForm = new VueDataTransForm(false, "查询漏洞信息失败！");
        if (iPage.getRecords().size() > 0) {
            vueDataTransForm.setStatus(true);
            vueDataTransForm.setMsg("查询漏洞信息成功！");
            vueDataTransForm.setData(iPage);
        }
        return vueDataTransForm;
    }
}
