package com.six.service.impl;

import com.six.dao.WhbAdvanceMapper;
import com.six.model.WhbAdvance;
import com.six.service.WhbAdvanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/5/24.
 */
@Service("whbAdvanceService")
public class WhbAdvanceServiceImpl implements WhbAdvanceService {

    @Autowired
    private WhbAdvanceMapper whbAdvanceMapper;

    @Override
    public List<WhbAdvance> selectAdvance(WhbAdvance whbAdvance, Integer start, Integer pageSize) {
        return whbAdvanceMapper.selectAdvance(whbAdvance,(start-1)*pageSize,pageSize);
    }

    @Override
    public long selectAdvanceCount(WhbAdvance whbAdvance) {
      return   whbAdvanceMapper.selectAdvanceCount(whbAdvance);
    }
}
