package com.six.service;

import com.six.model.WhbRepayment;

import java.util.List;

/**
 * Created by Administrator on 2018/5/19.
 */
public interface WhbRepaymentServiceSan {

    List<WhbRepayment> selectRepayment2(WhbRepayment whbRepayment, Integer start, Integer limit);

    long selectRepaymentCount2(WhbRepayment whbRepayment);

    void delRepayment(Integer id);

    Double queryAllMoney();

    Double queryAllMoney1();

    Double queryAllMoney2();
}
