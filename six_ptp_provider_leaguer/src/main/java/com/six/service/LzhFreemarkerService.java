package com.six.service;

import com.six.model.Amount;
import com.six.model.UserInfo;

import java.util.List;

/**
 * @ProjectName: Six_PTP
 * @ClassName: LzhFreemarkerService
 * @Package com.six.service
 * @Description: TODO
 * @Author 李中豪
 * @Date 2018/6/1 17:03
 * @Version 1.0
 */
public interface LzhFreemarkerService {
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/6/1 17:31
     * @Param [userInfo]
     * @return java.util.List<com.six.model.UserInfo>
     */
    List<UserInfo> queryUserInfoFm(UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/6/1 21:27
     * @Param [amount]
     * @return java.util.List<com.six.model.Amount>
     */
    List<UserInfo> queryUserInfoFmt(UserInfo userInfo);
}
