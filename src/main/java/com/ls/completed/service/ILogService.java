package com.ls.completed.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ls.completed.domain.Log;

public interface ILogService extends IService<Log> {
    int insertLog(Log log);

    int updateLog(Log log);

    int deleteLog(Log log);
}
