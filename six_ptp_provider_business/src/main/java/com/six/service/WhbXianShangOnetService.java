package com.six.service;


import com.six.model.WhbOnlinecollection;

import java.util.List;

/**
 * Created by Administrator on 2018/5/19.
 */
public interface WhbXianShangOnetService {

    List<WhbOnlinecollection> selectUnderline1(WhbOnlinecollection whbOnlinecollection, Integer start, Integer limit);

    long selectUnderlineCount1(WhbOnlinecollection whbOnlinecollection);

    void addXianShang(WhbOnlinecollection whbOnlinecollection);

    WhbOnlinecollection selectXianXia1(Integer id);
}
