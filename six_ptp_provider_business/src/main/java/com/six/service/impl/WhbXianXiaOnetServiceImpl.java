package com.six.service.impl;

import com.six.dao.WhbXianXiaMapper;
import com.six.model.WhbUnderline;
import com.six.service.WhbXianXiaOnetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/5/19.
 */
@Service("whbXianXiaOnetService")
public class WhbXianXiaOnetServiceImpl implements WhbXianXiaOnetService {

    @Autowired
    private WhbXianXiaMapper whbXianXiaMapper;

    @Override
    public List<WhbUnderline> selectUnderline(WhbUnderline whbUnderline, Integer start, Integer pageSize) {
        return whbXianXiaMapper.selectUnderline(whbUnderline,(start-1)*pageSize,pageSize);
    }

    @Override
    public long selectUnderlineCount(WhbUnderline whbUnderline) {
        return whbXianXiaMapper.selectUnderlineCount(whbUnderline);
    }

    @Override
    public void addXianXia(WhbUnderline whbUnderline) {
        whbXianXiaMapper.addXianXia(whbUnderline);
    }

    @Override
    public WhbUnderline selectXianXia(Integer id) {
        return whbXianXiaMapper.selectXianXia(id);
    }

}
