package com.six.service.impl;

import com.six.dao.ZSLoansMapper;
import com.six.model.Borrowingmanagement;
import com.six.service.ZSLoansService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("loansService")
public class ZSLoansServiceImpl implements ZSLoansService{

    @Autowired
    private ZSLoansMapper loansDao;

    @Override
    public List<Borrowingmanagement> loanslist(Borrowingmanagement borrowingmanagement, Integer start, Integer pageSize) throws Exception {
        return loansDao.loanslist(borrowingmanagement,(start-1)*pageSize,pageSize);
    }

    @Override
    public long queryCount(Borrowingmanagement borrowingmanagement) throws Exception {
        return loansDao.queryCount(borrowingmanagement);
    }

    @Override
    public void addjiekuan(Borrowingmanagement borrowingmanagement) throws Exception {
       String productname  = borrowingmanagement.getProductname();
        String[] productname1 = productname.split("_");
        borrowingmanagement.setProductname(productname1[0]);

        String province = borrowingmanagement.getProvince();
        String[] province1 = province.split("_");
        borrowingmanagement.setProvince(province1[0]);

        String city = borrowingmanagement.getCity();
        String[] city1 = city.split("_");
        borrowingmanagement.setCity(city1[0]);
        loansDao.addjiekuan(borrowingmanagement);
    }

    @Override
    public Borrowingmanagement xiangqing(String jkid) throws Exception {
        return loansDao.xiangqing(jkid);
    }

    @Override
    public void zuofei(String jkid) throws Exception {
        loansDao.zuofei(jkid);
    }

    @Override
    public void tongguo(String jkid) throws Exception {
        loansDao.tongguo(jkid);
    }

    @Override
    public void butongguo(String jkid) throws Exception {
        loansDao.butongguo(jkid);
    }

    @Override
    public void fabu(String jkid) throws Exception {
        loansDao.fabu(jkid);
    }

    @Override
    public void yufabu(String yufabutime,String jkid) throws Exception {
        loansDao.yufabu(yufabutime,jkid);
    }
}
