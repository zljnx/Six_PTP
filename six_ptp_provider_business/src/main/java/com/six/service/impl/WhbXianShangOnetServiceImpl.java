package com.six.service.impl;

import com.six.dao.WhbXianShangMapper;
import com.six.model.WhbOnlinecollection;
import com.six.service.WhbXianShangOnetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/5/19.
 */
@Service("whbXianShangOnetService")
public class WhbXianShangOnetServiceImpl implements WhbXianShangOnetService {

    @Autowired
    private WhbXianShangMapper whbXianShangMapper;

    @Override
    public List<WhbOnlinecollection> selectUnderline1(WhbOnlinecollection whbOnlinecollection, Integer start, Integer pageSize) {
        return whbXianShangMapper.selectUnderline1(whbOnlinecollection,(start-1)*pageSize,pageSize);
    }

    @Override
    public long selectUnderlineCount1(WhbOnlinecollection whbOnlinecollection) {
        return whbXianShangMapper.selectUnderlineCount1(whbOnlinecollection);
    }

    @Override
    public void addXianShang(WhbOnlinecollection whbOnlinecollection) {
        whbXianShangMapper.addXianShang(whbOnlinecollection);
    }

    @Override
    public WhbOnlinecollection selectXianXia1(Integer id) {


        return whbXianShangMapper.selectXianXia1(id);
    }
}
