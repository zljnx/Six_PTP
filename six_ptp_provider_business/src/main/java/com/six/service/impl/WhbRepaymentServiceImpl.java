package com.six.service.impl;

import com.six.dao.WhbRepaymentMapper;
import com.six.model.WhbRepayment;
import com.six.service.WhbRepaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/5/17.
 */
@Service("whbRepaymentService")
public class WhbRepaymentServiceImpl implements WhbRepaymentService {

    @Autowired
    private WhbRepaymentMapper whbRepaymentMapper;

    public List<WhbRepayment> selectRepayment(WhbRepayment whbRepayment, Integer start, Integer pageSize){
        return whbRepaymentMapper.selectRepayment(whbRepayment,(start-1)*pageSize,pageSize);
    }

    public long selectRepaymentCount(WhbRepayment whbRepayment) {
        return whbRepaymentMapper.selectRepaymentCount(whbRepayment);
    }

    @Override
    public Double queryAllMoney() {

        return whbRepaymentMapper.queryAllMoney();
    }

    @Override
    public Double queryAllMoney1() {
        return whbRepaymentMapper.queryAllMoney1();
    }

    @Override
    public Double queryAllMoney2() {
        return whbRepaymentMapper.queryAllMoney2();
    }


}
