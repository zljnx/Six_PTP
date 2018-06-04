package com.six.service.impl;

import com.six.dao.WhbBadMapper;
import com.six.model.WhbBad;
import com.six.service.WhbBadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/5/24.
 */
@Service("whbBadService")
public class WhbBadServiceImpl implements WhbBadService {

    @Autowired
    private WhbBadMapper whbBadMapper;

    @Override
    public List<WhbBad> selectBad(WhbBad whbBad, Integer start, Integer pageSize) {
        return whbBadMapper.selectBad(whbBad,(start-1)*pageSize,pageSize);
    }

    @Override
    public long selectBadCount(WhbBad whbBad) {
        return   whbBadMapper.selectAdvanceCount(whbBad);
    }
}
