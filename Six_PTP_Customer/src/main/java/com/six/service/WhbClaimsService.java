package com.six.service;

import com.six.model.WhbClaims;

import java.util.List;

/**
 * Created by Administrator on 2018/5/24.
 */
public interface WhbClaimsService {

    List<WhbClaims> selectClaims(WhbClaims whbClaims, Integer start, Integer limit);

    long selectClaimsCount(WhbClaims whbClaims);
}
