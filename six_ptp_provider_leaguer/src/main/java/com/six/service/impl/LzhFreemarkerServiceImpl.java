package com.six.service.impl;

import com.six.dao.LzhFreemarkerMapper;
import com.six.model.Amount;
import com.six.model.UserInfo;
import com.six.service.LzhFreemarkerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @ProjectName: Six_PTP
 * @ClassName: LzhFreemarkerServiceImpl
 * @Package com.six.service.impl
 * @Description: TODO
 * @Author 李中豪
 * @Date 2018/6/1 17:34
 * @Version 1.0
 */
@Service("LzhFreemarkerService")
public class LzhFreemarkerServiceImpl implements LzhFreemarkerService {
    @Autowired
    private LzhFreemarkerMapper lzhFreemarkerMapper;
    @Override
    public List<UserInfo> queryUserInfoFm(UserInfo userInfo) {
        return lzhFreemarkerMapper.queryUserInfoFm(userInfo);
    }

    @Override
    public List<UserInfo> queryUserInfoFmt(UserInfo userInfo) {
        return lzhFreemarkerMapper.queryUserInfoFmt(userInfo);
    }
}
