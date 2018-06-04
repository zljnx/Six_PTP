package com.six.service.impl;

import com.six.dao.WhbEnterpriseMapper;
import com.six.model.WhbPersonal;
import com.six.service.WhbEnterpriseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/5/23.
 */
@Service("whbEnterpriseService")
public class WhbEnterpriseServiceImpl implements WhbEnterpriseService {

    @Autowired
    private WhbEnterpriseMapper whbEnterpriseMapper;

    @Override
    public List<WhbPersonal> selectEnterprise(WhbPersonal whbPersonal, Integer start, Integer pageSize) {
        return whbEnterpriseMapper.selectEnterprise(whbPersonal,(start-1)*pageSize,pageSize);
    }

    @Override
    public long selectEnterpriseCount(WhbPersonal whbPersonal) {
        return whbEnterpriseMapper.selectEnterpriseCount(whbPersonal);
    }

    @Override
    public List<WhbPersonal> selectEnterprise2(WhbPersonal whbPersonal, Integer start, Integer pageSize) {
        return whbEnterpriseMapper.selectEnterprise2(whbPersonal,(start-1)*pageSize,pageSize);
    }

    @Override
    public long selectEnterpriseCount2(WhbPersonal whbPersonal) {
        return whbEnterpriseMapper.selectEnterpriseCount2(whbPersonal);
    }
}
