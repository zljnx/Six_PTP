package com.six.service;

import com.six.model.WhbAdvance;

import java.util.List;

/**
 * Created by Administrator on 2018/5/24.
 */
public interface WhbAdvanceService {
    List<WhbAdvance> selectAdvance(WhbAdvance whbAdvance, Integer start, Integer limit);

    long selectAdvanceCount(WhbAdvance whbAdvance);
}
