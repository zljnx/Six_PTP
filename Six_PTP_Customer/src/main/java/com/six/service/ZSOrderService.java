package com.six.service;

import com.six.model.DingDanGuanLi;

import java.util.List;

public interface ZSOrderService {

    List<DingDanGuanLi> orderList(DingDanGuanLi dd, Integer start, Integer limit) throws Exception;

    long queryCount(DingDanGuanLi dd) throws Exception;

    List<DingDanGuanLi> ddtype() throws Exception;
}
