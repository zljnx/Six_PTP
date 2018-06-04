package com.six.service.impl;

import com.six.dao.ZSPersonalloanintentionMapper;
import com.six.model.Personalloanintention;
import com.six.service.ZSPersonalloanintentionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("personalloanintentionService")
public class ZSPersonalloanintentionServiceImpl implements ZSPersonalloanintentionService{

    @Autowired
    private ZSPersonalloanintentionMapper personalloanintentionDao;

    @Override
    public List<Personalloanintention> queryPersonalloanintentionList(Personalloanintention personalloanintention, Integer start, Integer pageSize) throws Exception {
        return personalloanintentionDao.queryPersonalloanintentionList(personalloanintention,(start-1)*pageSize,pageSize);
    }

    @Override
    public long queryCount(Personalloanintention personalloanintention) throws Exception {
        return personalloanintentionDao.queryCount(personalloanintention);
    }

    @Override
    public void gerenchuli(String dispose, String grjkid,String loginname,String username) throws Exception {

        personalloanintentionDao.gerenchuli(dispose,grjkid,loginname,username);
    }

    @Override
    public Personalloanintention gerenxiangqing(String grjkid) throws Exception {

        return personalloanintentionDao.gerenxiangqing(grjkid);
    }

    @Override
    public List<Personalloanintention> queryQiyeList(Personalloanintention personalloanintention, Integer start, Integer pageSize) throws Exception {
        return personalloanintentionDao.queryQiyeList(personalloanintention,(start-1)*pageSize,pageSize);
    }

    @Override
    public long queryCount1(Personalloanintention personalloanintention) throws Exception {
        return personalloanintentionDao.queryCount1(personalloanintention);
    }

    @Override
    public Personalloanintention qiyexiangqing(String grjkid) throws Exception {
        return personalloanintentionDao.qiyexiangqing(grjkid);
    }

    @Override
    public List<Personalloanintention> querygeren(Personalloanintention personalloanintention) throws Exception {
        return personalloanintentionDao.querygeren(personalloanintention);
    }

}
