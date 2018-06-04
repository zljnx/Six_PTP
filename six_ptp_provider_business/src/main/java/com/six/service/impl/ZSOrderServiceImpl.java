package com.six.service.impl;

import com.six.dao.ZSOrderMapper;
import com.six.model.DingDanGuanLi;
import com.six.service.ZSOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("orderService")
public class ZSOrderServiceImpl implements ZSOrderService {

    @Autowired
    private ZSOrderMapper orderDao;

    @Override
    public List<DingDanGuanLi> orderList(DingDanGuanLi dd, Integer start, Integer limit) throws Exception {
        return orderDao.orderList(dd,(start-1)*limit,limit);
    }

    @Override
    public long queryCount(DingDanGuanLi dd) throws Exception {
        return orderDao.queryCount(dd);
    }

    @Override
    public List<DingDanGuanLi> ddtype() throws Exception {
        return orderDao.ddtype();
    }
}
