package com.six.service;

import com.six.model.WhbPersonal;

import java.util.List;

/**
 * Created by Administrator on 2018/5/23.
 */
public interface WhbEnterpriseService {
    List<WhbPersonal> selectEnterprise(WhbPersonal whbPersonal, Integer start, Integer limit);

    long selectEnterpriseCount(WhbPersonal whbPersonal);

    List<WhbPersonal> selectEnterprise2(WhbPersonal whbPersonal, Integer start, Integer limit);

    long selectEnterpriseCount2(WhbPersonal whbPersonal);
}
