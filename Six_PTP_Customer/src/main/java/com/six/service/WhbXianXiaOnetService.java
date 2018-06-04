package com.six.service;

import com.six.model.WhbUnderline;

import java.util.List;

/**
 * Created by Administrator on 2018/5/19.
 */
public interface WhbXianXiaOnetService {
    List<WhbUnderline> selectUnderline(WhbUnderline whbUnderline, Integer start, Integer limit);

    long selectUnderlineCount(WhbUnderline whbUnderline);

    void addXianXia(WhbUnderline whbUnderline);

    WhbUnderline selectXianXia(Integer id);
}
