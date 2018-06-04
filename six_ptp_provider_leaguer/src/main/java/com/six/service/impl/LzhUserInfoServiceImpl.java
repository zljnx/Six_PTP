package com.six.service.impl;

import com.six.dao.LzhUserInfoMapper;
import com.six.model.Amount;
import com.six.model.UserInfo;
import com.six.service.LzhUserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;import java.text.ParseException;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @ProjectName: Six_PTP
 * @ClassName: LzhUserInfoServiceImpl
 * @Package com.six.service.impl
 * @Description: TODO
 * @Author 李中豪
 * @Date 2018/5/18 18:59
 * @Version 1.0
 */
@Service("LzhUserInfoService")
public class LzhUserInfoServiceImpl implements LzhUserInfoService {
    @Autowired
    private LzhUserInfoMapper lzhUserInfoMapper;

    @Override
    public List<UserInfo> queryUserInfo(UserInfo userInfo, Integer start, Integer number) {

        return lzhUserInfoMapper.queryUserInfo(userInfo,(start-1)*number,number);
    }

    @Override
    public long queryUserInfoCount(UserInfo userInfo) {
        return lzhUserInfoMapper.queryUserInfoCount(userInfo);
    }

    @Override
    public UserInfo queryuInformation(UserInfo userInfo) {
        return lzhUserInfoMapper.queryuInformation(userInfo);
    }

    @Override
    public void updateUserInfo(UserInfo userInfo) {
        lzhUserInfoMapper.updateUserInfoById(userInfo);
        lzhUserInfoMapper.updateWorkInfoById(userInfo);
        lzhUserInfoMapper.updateeducationById(userInfo);
        lzhUserInfoMapper.updateAreaById(userInfo);
        lzhUserInfoMapper.updateReviewById(userInfo);
        lzhUserInfoMapper.updateBorrowing_recordById(userInfo);
    }

    @Override
    public void updateUserRiskassess(UserInfo userInfo) {
        lzhUserInfoMapper.updateUserRiskassess(userInfo);
    }

    @Override
    public void delAllUserInfo(String ids) {
        String[] strs=ids.split(",");
        for (int i = 0; i < strs.length; i++) {
            String id = strs[i];
            lzhUserInfoMapper.delAllUserInfo(id);
        }
    }

    @Override
    public UserInfo queryReviewSize(UserInfo userInfo) {
        return lzhUserInfoMapper.queryReviewSize(userInfo);
    }

    @Override
    public List<UserInfo> queryReviewInfo(String reviewid, Integer start, Integer number) {
        return lzhUserInfoMapper.queryReviewInfo(reviewid,(start-1)*number,number);
    }

    @Override
    public long queryReviewInfoCount(String reviewid) {
        return lzhUserInfoMapper.queryReviewInfoCount(reviewid);
    }

    @Override
    public void updateAndsaveReview(UserInfo userInfo) throws ParseException {
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date time = sdf.parse(date.toLocaleString());
        userInfo.setCertificationdate(time);
        lzhUserInfoMapper.updateReviewBystatus(userInfo);
        lzhUserInfoMapper.saveReviewBystatus(userInfo);
    }

    @Override
    public List<UserInfo> queryReviewnotesInfo(String id, Integer start, Integer number) {
        return lzhUserInfoMapper.queryReviewnotesInfo(id,(start-1)*number,number);
    }

    @Override
    public long queryReviewnotesInfoCount(String id) {
        return lzhUserInfoMapper.queryReviewnotesInfoCount(id);
    }

    @Override
    public void deleteReviewnotes(String reviewid) {
        lzhUserInfoMapper.deleteReviewnotes(reviewid);
    }

    @Override
    public void saveUserInfo(UserInfo userInfo) throws ParseException {
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date time = sdf.parse(date.toLocaleString());
        userInfo.setSendtime(time);
        lzhUserInfoMapper.saveUserInfo(userInfo);
        /*lzhUserInfoMapper.saveWorkInfo(userInfo);
        lzhUserInfoMapper.saveEducation(userInfo);
        lzhUserInfoMapper.saveArea(userInfo);
        lzhUserInfoMapper.saveReview(userInfo);
        lzhUserInfoMapper.saveBorrowing_record(userInfo);*/
    }

    public List<UserInfo> queryuserInfo(UserInfo userInfo) {
        return lzhUserInfoMapper.queryuserInfo(userInfo);
    }

    @Override
    public List<Amount> queryTreportforms(String id) {
        return lzhUserInfoMapper.queryTreportforms(id);
    }
}
