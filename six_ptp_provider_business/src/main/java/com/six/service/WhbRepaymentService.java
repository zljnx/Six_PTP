package com.six.service;

import com.six.model.WhbRepayment;

import java.util.List;

/**
 * Created by Administrator on 2018/5/17.
 */
public interface WhbRepaymentService {
    List<WhbRepayment> selectRepayment(WhbRepayment whbRepayment, Integer start, Integer limit);

    long selectRepaymentCount(WhbRepayment whbRepayment);

    Double queryAllMoney();

    Double queryAllMoney1();

    Double queryAllMoney2();
}
