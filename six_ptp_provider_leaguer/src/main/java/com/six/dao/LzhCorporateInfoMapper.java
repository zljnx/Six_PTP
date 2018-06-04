package com.six.dao;

import com.six.model.CorporateInfo;
import com.six.model.WhbContract;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @ProjectName: Six_PTP
 * @ClassName: LzhCorporateInfoMapper
 * @Package com.six.dao
 * @Description: TODO
 * @Author 李中豪
 * @Date 2018/5/25 16:09
 * @Version 1.0
 */
@Mapper
public interface LzhCorporateInfoMapper {
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/25 16:10
     * @Param [corporateInfo, start, number]
     * @return java.util.List<com.six.model.CorporateInfo>
     */
    @Select("<script> select * from p2p_corporate_information c,p2p_contact_form f where c.contact_id=f.contact_id "
            +"<if test='corporateInfo.corporate_name != null '>"
            +"and c.corporate_name LIKE '%${corporateInfo.corporate_name}%' "
            +"</if>"
            +"<if test='corporateInfo.person_phone_number != null '>"
            +"and f.person_phone_number LIKE '%${corporateInfo.person_phone_number}%' "
            +"</if>"
            +"limit #{start},#{number} </script>")
    List<CorporateInfo> queryCorporateInfo(@Param("corporateInfo") CorporateInfo corporateInfo, @Param("start") int start, @Param("number") int number);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/25 16:11
     * @Param [corporateInfo]
     * @return long
     */
    @Select("<script>select count(*) from p2p_corporate_information c,p2p_contact_form f where c.contact_id=f.contact_id "
            +"<if test='corporateInfo.corporate_name != null '>"
            +"  and c.corporate_name LIKE '%${corporateInfo.corporate_name}%' "
            +"</if>"
            +"<if test='corporateInfo.person_phone_number != null '>"
            +"and f.person_phone_number LIKE '%${corporateInfo.person_phone_number}%' "
            +"</if></script>")
    long queryCorporateInfoCount(@Param("corporateInfo") CorporateInfo corporateInfo);
    /**
     * @Author 李中豪
     * @Description TODO:用户信息查看
     * @Date 2018/5/26 10:07
     * @Param [corporateInfo]
     * @return com.six.model.CorporateInfo
     */
    @Select("select * from p2p_corporate_information i, p2p_contact_form cf,p2p_reviewt rev,p2p_borrowing_record rec ,p2p_areainfo a,p2p_financial f where i.contact_id = cf.contact_id and i.financial_id=f.financial_id and i.borrowing_id=rec.borrowing_id and i.reviewid=rev.reviewid and cf.contact_area=a.areaid and i.corporate_id=#{corporateInfo.corporate_id}")
    CorporateInfo queryuInformation(@Param("corporateInfo") CorporateInfo corporateInfo);
    /**
     * @Author 李中豪
     * @Description TODO:修改企业相关信息
     * @Date 2018/5/27 14:18
     * @Param [corporateInfo]
     * @return void
     */
    @Update("update p2p_corporate_information set corporate_name=#{corporateInfo.corporate_name}," +
            "social_credit=#{corporateInfo.social_credit}," +
            "corporate_referred=#{corporateInfo.corporate_referred}," +
            "industry=#{corporateInfo.industry}," +
            "status=#{corporateInfo.status}," +
            "corporate_scale=#{corporateInfo.corporate_scale}," +
            "credit_number=#{corporateInfo.credit_number}," +
            "enterprise_number=#{corporateInfo.enterprise_number}," +
            "corporate_introduction=#{corporateInfo.corporate_introduction}," +
            "cases_lawsuit=#{corporateInfo.cases_lawsuit}," +
            "operating_condition=#{corporateInfo.operating_condition}," +
            "credit_conditions=#{corporateInfo.credit_conditions}," +
            "allowed_invest=#{corporateInfo.allowed_invest}," +
            "registration_time=#{corporateInfo.registration_time}," +
            "rehistration_money=#{corporateInfo.rehistration_money}," +
            "equity=#{corporateInfo.equity}," +
            "defriend=#{corporateInfo.defriend} " +
            "where corporate_id=#{corporateInfo.corporate_id}")
    void updateCorporateInfoById(@Param("corporateInfo") CorporateInfo corporateInfo);
    /**
     * @Author 李中豪
     * @Description TODO:修改联系人相关信息
     * @Date 2018/5/27 14:19
     * @Param [corporateInfo]
     * @return void
     */
    @Update("update p2p_contact_form set contact_address=#{corporateInfo.contact_address},contact_name=#{corporateInfo.contact_name},person_number=#{corporateInfo.person_number},person_phone_number=#{corporateInfo.person_phone_number},person_email_address=#{corporateInfo.person_email_address},business_contact=#{corporateInfo.business_contact},web_site_address=#{corporateInfo.web_site_address} where contact_id=#{corporateInfo.contact_id}")
    void updateContactById(@Param("corporateInfo") CorporateInfo corporateInfo);
    /**
     * @Author 李中豪
     * @Description TODO:修改财务相关信息
     * @Date 2018/5/27 14:19
     * @Param [corporateInfo]
     * @return void
     */
    @Update("update p2p_financial set financial_year=#{corporateInfo.financial_year},business_income=#{corporateInfo.business_income},financial_note=#{corporateInfo.financial_note},net_worth=#{corporateInfo.net_worth},total_assets=#{corporateInfo.total_assets},net_profit=#{corporateInfo.net_profit} where financial_id=#{corporateInfo.financial_id}")
    void updateFinancialById(@Param("corporateInfo") CorporateInfo corporateInfo);
    /**
     * @Author 李中豪
     * @Description TODO:修改借款投资相关信息
     * @Date 2018/5/27 14:20
     * @Param [corporateInfo]
     * @return void
     */
    @Update("update p2p_borrowing_record set borrowing_number=#{corporateInfo.borrowing_number},borrowing_title=#{corporateInfo.borrowing_title},annual_interest_rate=#{corporateInfo.annual_interest_rate},time_limit=#{corporateInfo.time_limit},borrowing_amount=#{corporateInfo.borrowing_amount},investment_amount=#{corporateInfo.investment_amount},borrowing_time=#{corporateInfo.borrowing_time},investment_time=#{corporateInfo.investment_time},borrowing_stateType_id=#{corporateInfo.borrowing_stateType_id} where borrowing_id=#{corporateInfo.borrowing_id}")
    void updateBorrowingById(@Param("corporateInfo") CorporateInfo corporateInfo);
    /**
     * @Author 李中豪
     * @Description TODO:修改审核记录相关信息
     * @Date 2018/5/27 14:21
     * @Param [corporateInfo]
     * @return void
     */
    @Update("update p2p_reviewt set reviewtype=#{corporateInfo.reviewtype},necertification=#{corporateInfo.necertification},certificationcount=#{corporateInfo.certificationcount},certificationstatus=#{corporateInfo.certificationstatus},certificationdate=#{corporateInfo.certificationdate} where reviewid=#{corporateInfo.reviewid}")
    void updateReviewById(@Param("corporateInfo") CorporateInfo corporateInfo);
    /**
     * @Author 李中豪
     * @Description TODO:修改地区相关信息
     * @Date 2018/5/27 14:21
     * @Param [corporateInfo]
     * @return void
     */
    @Update("update p2p_areainfo set areaname=#{corporateInfo.areaname} where areaid=#{corporateInfo.areaid}")
    void updateAreaById(@Param("corporateInfo") CorporateInfo corporateInfo);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/27 17:58
     * @Param [corporateInfo]
     * @return com.six.model.CorporateInfo
     */
    @Select("select * from p2p_corporate_information u,p2p_reviewt r where u.reviewid=r.reviewid and u.corporate_id=#{corporateInfo.corporate_id}")
    CorporateInfo queryReviewtSize(@Param("corporateInfo") CorporateInfo corporateInfo);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/27 18:17
     * @Param [reviewid, start, number]
     * @return java.util.List<com.six.model.CorporateInfo>
     */
    @Select("select * from p2p_reviewt where reviewid = #{reviewid} limit #{start},#{number}")
    List<CorporateInfo> queryReviewtInfo(@Param("reviewid") String reviewid, @Param("start") int start, @Param("number") int number);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/27 18:17
     * @Param [reviewid]
     * @return long
     */
    @Select("select count(*) from p2p_reviewt where reviewid = #{reviewid} ")
    long queryReviewtInfoCount(@Param("reviewid") String reviewid);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/27 18:17
     * @Param [corporateInfo]
     * @return void
     */
    @Update("update p2p_reviewt set certificationcount=certificationcount+1,certificationstatus=0,certificationdate = #{corporateInfo.certificationdate} where p2p_reviewt.reviewid=#{corporateInfo.reviewid}")
    void updateReviewtBystatus(@Param("corporateInfo") CorporateInfo corporateInfo);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/27 18:17
     * @Param [corporateInfo]
     * @return void
     */
    @Insert("insert into p2p_reviewnotes(id,reviewtype,necertification,certificationcount,certificationdate,status) values " +
            "(#{corporateInfo.corporate_id}," +
            "#{corporateInfo.reviewtype}," +
            "#{corporateInfo.necertification}," +
            "#{corporateInfo.certificationcount}," +
            "#{corporateInfo.certificationdate}," +
            "1)")
    void saveReviewtBystatus(@Param("corporateInfo") CorporateInfo corporateInfo);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/27 19:42
     * @Param [corporate_id, i, number]
     * @return java.util.List<com.six.model.CorporateInfo>
     */
    @Select("select * from p2p_reviewnotes where id = #{corporate_id} and status=1 limit #{start},#{number}")
    List<CorporateInfo> queryReviewtnotesInfo(@Param("corporate_id") String corporate_id, @Param("start") int start, @Param("number") Integer number);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/27 19:43
     * @Param [corporate_id]
     * @return long
     */
    @Select("select count(*) from p2p_reviewnotes where id = #{corporate_id} and status=1")
    long queryReviewtnotesInfoCount(@Param("corporate_id") String corporate_id);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/27 20:03
     * @Param [id]
     * @return void
     */
    @Delete("DELETE FROM p2p_corporate_information WHERE corporate_id = #{id}")
    void delAllCorporateInfo(@Param("id") String id);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/28 21:41
     * @Param [corporateInfo]
     * @return java.util.List<com.six.model.CorporateInfo>
     */
    @Select("select * from p2p_corporate_information c,p2p_contact_form f where c.contact_id=f.contact_id")
    List<CorporateInfo> querycorporateInfo(CorporateInfo corporateInfo);
    /**
     * @Author 李中豪
     * @Description TODO:保全导出查询
     * @Date 2018/5/29 14:26
     * @Param [whbContract]
     * @return java.util.List<com.six.model.WhbContract>
     */
    @Select("select c.*,u.loginname,u.username  from p2p_contract c,p2p_userinfo u where c.id = u.id and c.b_branchid =2 and c.b_id=#{whbContract.b_id}")
    List<WhbContract> queryBaoquanById(@Param("whbContract") WhbContract whbContract);
}
