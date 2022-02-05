package com.ls.completed.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.ls.completed.domain.CNVD;

public interface ICnvdService extends IService<CNVD> {
    int insertCnvd(CNVD cnvd);

    int updateCnvd(CNVD cnvd);

    int deleteCnvd(CNVD cnvd);
}
