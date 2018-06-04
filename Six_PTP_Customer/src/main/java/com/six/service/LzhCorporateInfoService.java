package com.six.service;

import com.six.model.CorporateInfo;
import com.six.model.WhbContract;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @ProjectName: Six_PTP
 * @ClassName: LzhCorporateInfoService
 * @Package com.six.service
 * @Description: TODO
 * @Author 李中豪
 * @Date 2018/5/25 16:05
 * @Version 1.0
 */
public interface LzhCorporateInfoService {
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/25 16:06
     * @Param [corporateInfo, start, number]
     * @return java.util.List<com.six.model.CorporateInfo>
     */
    List<CorporateInfo> queryCorporateInfo(CorporateInfo corporateInfo, Integer start, Integer number);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/25 16:07
     * @Param [corporateInfo]
     * @return long
     */
    long queryCorporateInfoCount(CorporateInfo corporateInfo);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/26 10:06
     * @Param [corporateInfo]
     * @return com.six.model.CorporateInfo
     */
    CorporateInfo queryuInformation(CorporateInfo corporateInfo);
    /**
     * @Author 李中豪
     * @Description TODO:修改企业信息
     * @Date 2018/5/27 14:10
     * @Param [corporateInfo]
     * @return void
     */
    void updateCorporateInfo(CorporateInfo corporateInfo);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/27 17:57
     * @Param [corporateInfo]
     * @return com.six.model.CorporateInfo
     */
    CorporateInfo queryReviewtSize(CorporateInfo corporateInfo);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/27 18:08
     * @Param [reviewid, start, number]
     * @return java.util.List<com.six.model.UserInfo>
     */
    List<CorporateInfo> queryReviewtInfo(String reviewid, Integer start, Integer number);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/27 18:08
     * @Param [reviewid]
     * @return long
     */
    long queryReviewtInfoCount(String reviewid);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/27 18:11
     * @Param [corporateInfo]
     * @return void
     */
    void updateAndsaveReviewt(CorporateInfo corporateInfo);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/27 19:41
     * @Param [corporate_id, start, number]
     * @return java.util.List<com.six.model.CorporateInfo>
     */
    List<CorporateInfo> queryReviewtnotesInfo(String corporate_id, Integer start, Integer number);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/27 19:41
     * @Param [corporate_id]
     * @return long
     */
    long queryReviewtnotesInfoCount(String corporate_id);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/27 20:26
     * @Param [ids]
     * @return void
     */
    void delAllCorporateInfo(String ids);
    /**
     * @Author 李中豪
     * @Description TODO:导出查询
     * @Date 2018/5/28 21:40
     * @Param [corporateInfo]
     * @return java.util.List<com.six.model.CorporateInfo>
     */
    List<CorporateInfo> querycorporateInfo(CorporateInfo corporateInfo);
    /**
     * @Author 李中豪
     * @Description TODO:保全导出查询
     * @Date 2018/5/29 14:24
     * @Param [whbContract]
     * @return java.util.List<com.six.model.WhbContract>
     */
    List<WhbContract> queryBaoquanById(WhbContract whbContract);

}
