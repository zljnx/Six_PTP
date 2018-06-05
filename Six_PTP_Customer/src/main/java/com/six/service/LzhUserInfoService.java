package com.six.service;

import com.six.model.*;

import java.util.List;

/**
 * @ProjectName: Six_PTP
 * @ClassName: LzhUserInfoService
 * @Package com.six.service
 * @Description: TODO
 * @Author 李中豪
 * @Date 2018/5/18 18:52
 * @Version 1.0
 */
public interface LzhUserInfoService {
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/18 21:50
     * @Param [userInfo, start, number]
     * @return java.util.List<com.six.model.UserInfo>
     */
    List<UserInfo> queryUserInfo(UserInfo userInfo, Integer start, Integer number);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/18 21:50
     * @Param [userInfo]
     * @return long
     */
    long queryUserInfoCount(UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/21 15:27
     * @Param [userInfo]
     * @return com.six.model.UserInfo
     */
    UserInfo queryuInformation(UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/22 15:01
     * @Param [userInfo]
     * @return void
     */
    void updateUserInfo(UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO:增加用户评估次数
     * @Date 2018/5/22 19:59
     * @Param [userInfo]
     * @return void
     */
    void updateUserRiskassess(UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO:用户批量删除
     * @Date 2018/5/22 21:38
     * @Param [ids]
     * @return void
     */
    void delAllUserInfo(String ids);
    /**
     * @Author 李中豪
     * @Description TODO:用户审核信息查询审核ID
     * @Date 2018/5/23 20:18
     * @Param [userInfo]
     * @return com.six.model.UserInfo
     */
    UserInfo queryReviewSize(UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/23 21:19
     * @Param [reviewid, start, number]
     * @return java.util.List<com.six.model.UserInfo>
     */
    List<UserInfo> queryReviewInfo(String reviewid, Integer start, Integer number);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/23 21:20
     * @Param [reviewid]
     * @return long
     */
    long queryReviewInfoCount(String reviewid);
    /**
     * @Author 李中豪
     * @Description TODO:修改审核中的认证状态并新增到审核记录表中
     * @Date 2018/5/23 23:07
     * @Param [userInfo]
     * @return void
     */
    void updateAndsaveReview(UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO:查询出用户所对应的审核记录
     * @Date 2018/5/24 11:17
     * @Param [id, start, number]
     * @return java.util.List<com.six.model.UserInfo>
     */
    List<UserInfo> queryReviewnotesInfo(String id, Integer start, Integer number);
    /**
     * @Author 李中豪
     * @Description TODO:
     * @Date 2018/5/24 11:18
     * @Param [id]
     * @return long
     */
    long queryReviewnotesInfoCount(String id);
    /**
     * @Author 李中豪
     * @Description TODO:删除审核记录
     * @Date 2018/5/24 15:03
     * @Param [reviewid]
     * @return void
     */
    void deleteReviewnotes(String reviewid);
    /**
     * @Author 李中豪
     * @Description TODO:新增用户信息
     * @Date 2018/5/27 22:02
     * @Param [userInfo]
     * @return void
     */
    void saveUserInfo(UserInfo userInfo) throws Exception;
    /**
     * @Author 李中豪
     * @Description TODO:导出查询
     * @Date 2018/5/28 21:08
     * @Param [userInfo]
     * @return java.util.List<com.six.model.UserInfo>
     */
    List<UserInfo> queryuserInfo(UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO:借款投资报表
     * @Date 2018/5/29 23:12
     * @Param []
     * @return java.util.List
     */
    List<Amount> queryTreportforms(String id);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/31 22:45
     * @Param [userInfo]
     * @return com.six.model.UserInfo
     */
    UserInfo queryUserInfoh(UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/6/1 11:56
     * @Param [fileUrl]
     * @return void
     */
    void saveUserPhoto(String fileUrl, UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/6/3 16:27
     * @Param [id]
     * @return java.util.List<com.six.model.UserInfo>
     */
    List<UserInfo> queryUserImg(String id);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/6/4 9:18
     * @Param [userInfo]
     * @return void
     */
    void uploadMainInfo(UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO:查询密码是否一致
     * @Date 2018/6/4 15:36
     * @Param [userMain]
     * @return java.util.List<com.six.model.UserInfo>
     */
    List<UserInfo> queryUserMainByPwd(UserMain userMain);
    /**
     * @Author 李中豪
     * @Description TODO：修改密码
     * @Date 2018/6/4 15:37
     * @Param [userMain]
     * @return void
     */
    void updateUserMainPwd(UserMain userMain);

    List<UserSex> queryUserSex();
}
