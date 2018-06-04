package com.six.service;

import com.six.model.Personalloanintention;

import java.util.List;

public interface ZSPersonalloanintentionService {
    List<Personalloanintention> queryPersonalloanintentionList(Personalloanintention personalloanintention, Integer start, Integer limit) throws Exception;

    long queryCount(Personalloanintention personalloanintention) throws Exception;

    void gerenchuli(String dispose, String grjkid, String loginname, String username) throws Exception;

    Personalloanintention gerenxiangqing(String grjkid) throws Exception;

    List<Personalloanintention> queryQiyeList(Personalloanintention personalloanintention, Integer start, Integer limit) throws Exception;

    long queryCount1(Personalloanintention personalloanintention) throws Exception;

    Personalloanintention qiyexiangqing(String grjkid) throws Exception;

    List<Personalloanintention> querygeren(Personalloanintention personalloanintention) throws Exception;
}
