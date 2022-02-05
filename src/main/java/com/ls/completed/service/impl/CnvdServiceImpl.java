package com.ls.completed.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.ls.completed.domain.CNVD;
import com.ls.completed.mapper.CnvdMapper;
import com.ls.completed.service.ICnvdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CnvdServiceImpl extends ServiceImpl<CnvdMapper, CNVD> implements ICnvdService {
    @Autowired
    CnvdMapper cnvdMapper;


    @Override
    public int insertCnvd(CNVD cnvd) {
        return cnvdMapper.insert(cnvd);
    }

    @Override
    public int updateCnvd(CNVD cnvd) {
        return 0;
    }

    @Override
    public int deleteCnvd(CNVD cnvd) {
        return 0;
    }
}
