package com.six.service.impl;

import com.six.dao.WhbClaimsMapper;
import com.six.model.WhbClaims;
import com.six.service.WhbClaimsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/5/24.
 */
@Service("whbClaimsService")
public class WhbClaimsServiceImpl implements WhbClaimsService {

    @Autowired
    private WhbClaimsMapper whbClaimsMapper;

    @Override
    public List<WhbClaims> selectClaims(WhbClaims whbClaims, Integer start, Integer pageSize) {
        return whbClaimsMapper.selectEnterprise(whbClaims,(start-1)*pageSize,pageSize);
    }

    @Override
    public long selectClaimsCount(WhbClaims whbClaims) {
        return whbClaimsMapper.selectEnterpriseCount(whbClaims);
    }
}
