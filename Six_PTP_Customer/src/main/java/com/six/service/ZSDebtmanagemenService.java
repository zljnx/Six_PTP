package com.six.service;

import com.six.model.DebtManagement;

import java.util.List;

public interface ZSDebtmanagemenService {
    List<DebtManagement> queryDebtmanagementList(DebtManagement debtManagement, Integer start, Integer limit,Integer zqstatus) throws Exception;

    long queryCount(DebtManagement debtManagement,Integer zqstatus) throws Exception;
}
