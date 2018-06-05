package com.six.service.impl;

import com.six.dao.ZSHouTaiTongJiMapper;
import com.six.model.HouTaiTongJi;
import com.six.service.ZSHouTaiTongJiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("httjService")
public class ZSHouTaiTongJiServiceImpl implements ZSHouTaiTongJiService{

    @Autowired
    private ZSHouTaiTongJiMapper houTaiTongJiDao;

    @Override
    public HouTaiTongJi houtaishouye() throws Exception {

        String dshjkxm = houTaiTongJiDao.dshjkxm();
        String dclgrjkyx = houTaiTongJiDao.dclgrjkyx();
        String dfbjkxm = houTaiTongJiDao.dfbjkxm();
        String dfkjkxm = houTaiTongJiDao.dfkjkxm();
        String dclqyjkyx = houTaiTongJiDao.dclqyjkyx();
        HouTaiTongJi httj = new HouTaiTongJi();
        httj.setDshjkxm(dshjkxm);
        httj.setDclgrjkyx(dclgrjkyx);
        httj.setDfbjkxm(dfbjkxm);
        httj.setDfkjkxm(dfkjkxm);
        httj.setDclqyjkyx(dclqyjkyx);
        System.out.println(httj);

        return httj;
    }
}
