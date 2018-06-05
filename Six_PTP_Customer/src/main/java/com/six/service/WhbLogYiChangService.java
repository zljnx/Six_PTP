package com.six.service;

import com.six.model.Logs;
import com.six.model.WhbRepayment1;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/5/30.
 */
public interface WhbLogYiChangService {
    Map<String,Object> logsYiChangList(Logs logs, Integer page, Integer rows);

    List<WhbRepayment1> selectHuan();
}
