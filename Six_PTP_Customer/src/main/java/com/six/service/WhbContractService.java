package com.six.service;

import com.six.model.WhbContract;

import java.util.List;

/**
 * Created by Administrator on 2018/5/27.
 */
public interface WhbContractService {
    List<WhbContract> selectContract(WhbContract whbContract, Integer start, Integer limit);

    long selectContractCount(WhbContract whbContract);

    List<WhbContract> selectContract1(WhbContract whbContract, Integer start, Integer limit);

    long selectContractCount1(WhbContract whbContract);

    List<WhbContract> queryContract(WhbContract whbContract);
}
