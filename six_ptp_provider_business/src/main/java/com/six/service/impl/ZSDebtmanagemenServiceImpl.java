package com.six.service.impl;

import com.six.dao.ZSDebtmanagemenMapper;
import com.six.model.DebtManagement;
import com.six.service.ZSDebtmanagemenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("debtmanagemenService")
public class ZSDebtmanagemenServiceImpl implements ZSDebtmanagemenService{

    @Autowired
    private ZSDebtmanagemenMapper debtmanagemendao;

    @Override
    public List<DebtManagement> queryDebtmanagementList(DebtManagement debtManagement, Integer start, Integer pageSize,Integer zqstatus) throws Exception {

        if(debtManagement.getZqstatus()==2){
            return debtmanagemendao.queryDebtmanagementList1(debtManagement,(start-1)*pageSize,pageSize,zqstatus);
        }

        return debtmanagemendao.queryDebtmanagementList(debtManagement,(start-1)*pageSize,pageSize,zqstatus);
    }

    @Override
    public long queryCount(DebtManagement debtManagement,Integer zqstatus) throws Exception {
        if(debtManagement.getZqstatus()==2){
            return debtmanagemendao.queryCount1(debtManagement,zqstatus);
        }

        return debtmanagemendao.queryCount(debtManagement,zqstatus);
    }
}
