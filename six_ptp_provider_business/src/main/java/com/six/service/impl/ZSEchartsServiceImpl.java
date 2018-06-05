package com.six.service.impl;

import com.six.dao.ZSEchartsMapper;
import com.six.model.ZSJieKuanTongji;
import com.six.service.ZSEchartsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("echartsService")
public class ZSEchartsServiceImpl implements ZSEchartsService {

    @Autowired
    private ZSEchartsMapper echartsDao;

    @Override
    public List<ZSJieKuanTongji> jiekuantongji() throws Exception {

        return echartsDao.jiekuantongji();
    }
}
