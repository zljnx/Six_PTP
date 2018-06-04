package com.six.service;

import com.six.model.Debenturetransfer;

import java.util.List;

public interface ZSDebenturetransferService {
    List<Debenturetransfer> queryDebenturetransferList(Debenturetransfer debenturetransfer, Integer start, Integer limit, Integer zrstatus) throws Exception;

    long queryCount(Debenturetransfer debenturetransfer, Integer zrstatus) throws Exception;

    void pldelDebenturetransfer(String ids) throws Exception;

    void plxiajiaDebenturetransfer(String ids) throws Exception;

    void delDebenturetransfer(String zrid, Integer zrstatus) throws Exception;
}
