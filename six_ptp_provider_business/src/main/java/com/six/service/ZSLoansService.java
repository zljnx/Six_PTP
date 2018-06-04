package com.six.service;

import com.six.model.Borrowingmanagement;

import java.util.List;

public interface ZSLoansService {
    List<Borrowingmanagement> loanslist(Borrowingmanagement borrowingmanagement, Integer start, Integer limit) throws Exception;

    long queryCount(Borrowingmanagement borrowingmanagement) throws Exception;

    void addjiekuan(Borrowingmanagement borrowingmanagement) throws Exception;

    Borrowingmanagement xiangqing(String jkid) throws Exception;

    void zuofei(String jkid) throws Exception;

    void tongguo(String jkid) throws Exception;

    void butongguo(String jkid) throws  Exception;

    void fabu(String jkid) throws Exception;

    void yufabu(String yufabutime, String jkid) throws Exception;

    void tuijian(String jkid) throws Exception;
}
