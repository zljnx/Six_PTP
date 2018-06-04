package com.six.service.impl;

import com.six.dao.WhbContractMapper;
import com.six.model.WhbContract;
import com.six.service.WhbContractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2018/5/27.
 */
@Service("whbContractService")
public class WhbContractServiceImpl implements WhbContractService {

    @Autowired
    private WhbContractMapper whbContractMapper;

    @Override
    public List<WhbContract> selectContract(WhbContract whbContract, Integer start, Integer pageSize) {
        return whbContractMapper.selectContract(whbContract,(start-1)*pageSize,pageSize);
    }

    @Override
    public long selectContractCount(WhbContract whbContract) {
        return whbContractMapper.selectContractCount(whbContract);
    }

    @Override
    public List<WhbContract> selectContract1(WhbContract whbContract, Integer start, Integer pageSize) {
        return whbContractMapper.selectContract1(whbContract,(start-1)*pageSize,pageSize);
    }

    @Override
    public long selectContractCount1(WhbContract whbContract) {
        return whbContractMapper.selectContractCount1(whbContract);
    }

    @Override
    public List<WhbContract> queryContract(WhbContract whbContract) {
        return whbContractMapper.queryContract(whbContract);
    }
}
