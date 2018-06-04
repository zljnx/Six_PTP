package com.six.service.impl;

import com.six.dao.LzhCorporateInfoMapper;
import com.six.model.CorporateInfo;
import com.six.model.WhbContract;
import com.six.service.LzhCorporateInfoService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @ProjectName: Six_PTP
 * @ClassName: LzhCorporateInfoServiceImpl
 * @Package com.six.service.impl
 * @Description: TODO
 * @Author 李中豪
 * @Date 2018/5/25 16:07
 * @Version 1.0
 */
@Service("LzhCorporateInfoService")
public class LzhCorporateInfoServiceImpl implements LzhCorporateInfoService {
    @Autowired
    private LzhCorporateInfoMapper lzhCorporateInfoMapper;
    @Override
    public List<CorporateInfo> queryCorporateInfo(CorporateInfo corporateInfo, Integer start, Integer number) {
        return lzhCorporateInfoMapper.queryCorporateInfo(corporateInfo,(start-1)*number,number);
    }

    @Override
    public long queryCorporateInfoCount(CorporateInfo corporateInfo) {
        return lzhCorporateInfoMapper.queryCorporateInfoCount(corporateInfo);
    }

    @Override
    public CorporateInfo queryuInformation(CorporateInfo corporateInfo) {
        return lzhCorporateInfoMapper.queryuInformation(corporateInfo);
    }

    @Override
    public void updateCorporateInfo(CorporateInfo corporateInfo) {
        lzhCorporateInfoMapper.updateCorporateInfoById(corporateInfo);
        lzhCorporateInfoMapper.updateContactById(corporateInfo);
        lzhCorporateInfoMapper.updateFinancialById(corporateInfo);
        lzhCorporateInfoMapper.updateBorrowingById(corporateInfo);
        lzhCorporateInfoMapper.updateReviewById(corporateInfo);
        lzhCorporateInfoMapper.updateAreaById(corporateInfo);
    }

    @Override
    public CorporateInfo queryReviewtSize(CorporateInfo corporateInfo) {
        return lzhCorporateInfoMapper.queryReviewtSize(corporateInfo);
    }

    @Override
    public List<CorporateInfo> queryReviewtInfo(String reviewid, Integer start, Integer number) {
        return lzhCorporateInfoMapper.queryReviewtInfo(reviewid,(start-1)*number,number);
    }

    @Override
    public long queryReviewtInfoCount(String reviewid) {
        return lzhCorporateInfoMapper.queryReviewtInfoCount(reviewid);
    }

    @Override
    public void updateAndsaveReviewt(CorporateInfo corporateInfo) throws ParseException {
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date time = sdf.parse(date.toLocaleString());
        corporateInfo.setCertificationdate(time);
        lzhCorporateInfoMapper.updateReviewtBystatus(corporateInfo);
        lzhCorporateInfoMapper.saveReviewtBystatus(corporateInfo);
    }

    @Override
    public List<CorporateInfo> queryReviewtnotesInfo(String corporate_id, Integer start, Integer number) {
        return lzhCorporateInfoMapper.queryReviewtnotesInfo(corporate_id,(start-1)*number,number);
    }

    @Override
    public long queryReviewtnotesInfoCount(String corporate_id) {
        return lzhCorporateInfoMapper.queryReviewtnotesInfoCount(corporate_id);
    }

    @Override
    public void delAllCorporateInfo(String ids) {
        String[] strs=ids.split(",");
        for (int i = 0; i < strs.length; i++) {
            String id = strs[i];
            lzhCorporateInfoMapper.delAllCorporateInfo(id);
        }
    }

    @Override
    public List<CorporateInfo> querycorporateInfo(CorporateInfo corporateInfo) {
        return lzhCorporateInfoMapper.querycorporateInfo(corporateInfo);
    }

    @Override
    public List<WhbContract> queryBaoquanById(WhbContract whbContract) {
        return lzhCorporateInfoMapper.queryBaoquanById(whbContract);
    }
}
