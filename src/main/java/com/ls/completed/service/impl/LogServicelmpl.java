package com.ls.completed.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ls.completed.domain.Log;
import com.ls.completed.mapper.LogMapper;
import com.ls.completed.service.ILogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LogServicelmpl extends ServiceImpl<LogMapper, Log> implements ILogService {
    @Autowired
    LogMapper logMapper;

    @Override
    public int insertLog(Log log) {
        return logMapper.insert(log);
    }

    @Override
    public int updateLog(Log log) {
        return 0;
    }

    @Override
    public int deleteLog(Log log) {
        return 0;
    }
}
