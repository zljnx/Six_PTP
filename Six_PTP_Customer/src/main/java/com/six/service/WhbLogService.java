package com.six.service;

import com.six.model.Logs;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/5/30.
 */
public interface WhbLogService {
    Map<String,Object> logsList(Logs logs, Integer page, Integer rows);

    List selecttongji();
}
