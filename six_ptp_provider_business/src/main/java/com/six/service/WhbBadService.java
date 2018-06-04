package com.six.service;

import com.six.model.WhbBad;

import java.util.List;

/**
 * Created by Administrator on 2018/5/24.
 */
public interface WhbBadService {
    List<WhbBad> selectBad(WhbBad whbBad, Integer start, Integer limit);

    long selectBadCount(WhbBad whbBad);
}
