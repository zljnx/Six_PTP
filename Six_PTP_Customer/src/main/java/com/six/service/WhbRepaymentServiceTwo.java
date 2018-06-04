package com.six.service;

import com.six.model.WhbRepayment;

import java.util.List;

/**
 * Created by Administrator on 2018/5/19.
 */
public interface WhbRepaymentServiceTwo {

    List<WhbRepayment> selectRepayment1(WhbRepayment whbRepayment, Integer start, Integer limit);

    long selectRepaymentCount1(WhbRepayment whbRepayment);

    Double queryAllMoney();

    Double queryAllMoney1();

    Double queryAllMoney2();
}
