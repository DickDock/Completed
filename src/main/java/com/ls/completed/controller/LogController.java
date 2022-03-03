package com.ls.completed.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.ls.completed.domain.Log;
import com.ls.completed.service.ILogService;
import com.ls.completed.util.VueDataTransForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/logs")
public class LogController {

    @Autowired
    private ILogService iLogService;

    //分页获取用户
    @GetMapping("/pages/{currentPage}/{pageSize}")
    public VueDataTransForm getLogByPage(@PathVariable int currentPage, @PathVariable int pageSize) {

        IPage<Log> iPage = iLogService.getByPage(currentPage, pageSize);

        VueDataTransForm vueDataTransForm = new VueDataTransForm(false, "查询日志信息失败！");
        if (iPage.getRecords().size() > 0) {
            vueDataTransForm.setStatus(true);
            vueDataTransForm.setMsg("查询日志信息成功！");
            vueDataTransForm.setData(iPage);
        }
        return vueDataTransForm;
    }

}
