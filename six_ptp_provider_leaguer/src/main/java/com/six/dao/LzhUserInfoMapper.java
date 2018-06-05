package com.six.dao;

import com.six.model.Amount;
import com.six.model.UserInfo;
import com.six.model.UserMain;
import com.six.model.UserSex;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @ProjectName: Six_PTP
 * @ClassName: LzhUserInfoMapper
 * @Package com.six.mapper
 * @Description: TODO
 * @Author 李中豪
 * @Date 2018/5/18 19:02
 * @Version 1.0
 */
@Mapper
public interface LzhUserInfoMapper {
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/18 20:34
     * @Param [userInfo, start, number]
     * @return java.util.List<com.six.model.UserInfo>
     */
    @Select("<script>select * from p2p_userinfo where 1=1"
            +"<if test='userInfo.loginname != null '>"
            +"  and p2p_userinfo.loginname LIKE '%${userInfo.loginname}%' "
            +"</if>"
            +"<if test='userInfo.userphone != null '>"
            +"and p2p_userinfo.userphone LIKE '%${userInfo.userphone}%' "
            +"</if>"
            +"limit #{start},#{number} </script>")
    List<UserInfo> queryUserInfo(@Param("userInfo") UserInfo userInfo, @Param("start") int start, @Param("number") int number);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/18 20:33
     * @Param [userInfo]
     * @return long
     */
    @Select("<script>select count(*) from p2p_userinfo where 1=1 "
            +"<if test='userInfo.loginname != null '>"
            +"and p2p_userinfo.loginname LIKE '%${userInfo.loginname}%' "
            +"</if>"
            +"<if test='userInfo.userphone != null '>"
            +"and p2p_userinfo.userphone LIKE '%${userInfo.userphone}%' "
            +"</if> </script>")
    long queryUserInfoCount(@Param("userInfo") UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO:回显所有的用户信息（六表关联）
     * @Date 2018/5/22 15:22
     * @Param [userInfo]
     * @return com.six.model.UserInfo
     */
    @Select("select * from p2p_userinfo u,p2p_education e,p2p_workinfo w,p2p_areainfo a,p2p_review r,p2p_borrowing_record re where u.workid=w.workid " +
            "and u.educationid=e.eid and w.addrid=a.areaid and u.reviewid = r.reviewid and u.borrowingid = re.borrowing_id and u.id=#{userInfo.id}")
    UserInfo queryuInformation(@Param("userInfo") UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO:修改用户信息表userinfo
     * @Date 2018/5/22 15:22
     * @Param [userInfo]
     * @return void
     */
    @Update("update p2p_userinfo set username=#{userInfo.username}," +
            "loginname=#{userInfo.loginname}," +
            "userphone=#{userInfo.userphone}," +
            "idcard=#{userInfo.idcard}," +
            "eamil=#{userInfo.eamil}," +
            "status=#{userInfo.status}," +
            "sex=#{userInfo.sex}," +
            "birthdate=#{userInfo.birthdate}," +
            "riskassess=#{userInfo.riskassess}," +
            "assesscount=#{userInfo.assesscount}," +
            "sendtime=#{userInfo.sendtime}," +
            "defriend=#{userInfo.defriend}" +
            "where p2p_userinfo.id=#{userInfo.id}")
    void updateUserInfoById(@Param("userInfo") UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO:修改用户相关工作信息workinfo
     * @Date 2018/5/22 15:41
     * @Param [userInfo]
     * @return void
     */
    @Update("update p2p_workinfo set workstatus=#{userInfo.workstatus}," +
            "companyname=#{userInfo.companyname}," +
            "companyscale=#{userInfo.companyscale}," +
            "companytype=#{userInfo.companytype}" +
            "where p2p_workinfo.workid=#{userInfo.workid}")
    void updateWorkInfoById(@Param("userInfo") UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO:修改用户相关学历education
     * @Date 2018/5/22 15:40
     * @Param [userInfo]
     * @return void
     */
    @Update("update p2p_education set school=#{userInfo.school}," +
            "entrancedate=#{userInfo.entrancedate}," +
            "graduationdate=#{userInfo.graduationdate}," +
            "major=#{userInfo.major}," +
            "schoolinfo=#{userInfo.schoolinfo}" +
            "where eid=#{userInfo.eid}")
    void updateeducationById(@Param("userInfo") UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO:修改用户相关地区area
     * @Date s 15:40
     * @Param [userInfo]
     * @return void
     */
    @Update("update p2p_areainfo set areaname=#{userInfo.areaname}" +
            "where p2p_areainfo.areaid=#{userInfo.areaid}")
    void updateAreaById(@Param("userInfo") UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO:修改审核相关信息
     * @Date 2018/5/23 15:31
     * @Param [userInfo]
     * @return void
     */
    @Update("update p2p_review set reviewtype=#{userInfo.reviewtype}," +
            "necertification=#{userInfo.necertification}," +
            "certificationcount=#{userInfo.certificationcount}," +
            "certificationstatus=#{userInfo.certificationstatus}," +
            "certificationdate=#{userInfo.certificationdate}" +
            "where p2p_review.reviewid=#{userInfo.reviewid}")
    void updateReviewById(@Param("userInfo") UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO:修改借款/投资相关信息
     * @Date 2018/5/23 15:32
     * @Param [userInfo]
     * @return void
     */
    @Update("update p2p_borrowing_record set borrowing_number=#{userInfo.borrowing_number}," +
            "borrowing_title=#{userInfo.borrowing_title}," +
            "annual_interest_rate=#{userInfo.annual_interest_rate}," +
            "time_limit=#{userInfo.time_limit}," +
            "borrowing_amount=#{userInfo.borrowing_amount}," +
            "investment_amount=#{userInfo.investment_amount}," +
            "borrowing_time=#{userInfo.borrowing_time}," +
            "investment_time=#{userInfo.investment_time}," +
            "borrowing_stateType_id=#{userInfo.borrowing_stateType_id} " +
            "where borrowing_id=#{userInfo.borrowing_id}")
    void updateBorrowing_recordById(@Param("userInfo") UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO:增加用户评估次数
     * @Date 2018/5/22 20:00
     * @Param [userInfo]
     * @return void
     */
    @Update("update p2p_userinfo set assesscount=assesscount+1 where p2p_userinfo.id=#{userInfo.id}")
    void updateUserRiskassess(@Param("userInfo") UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO:用户个人信息批量删除
     * @Date 2018/5/22 21:49
     * @Param [ids]
     * @return void
     */
    @Delete("DELETE FROM p2p_userinfo WHERE id = #{id}")
    void delAllUserInfo(@Param("id") String id);
    /**
     * @Author 李中豪
     * @Description TODO:用户审核信息查询
     * @Date 2018/5/23 20:20
     * @Param [userInfo]
     * @return com.six.model.UserInfo
     */
    @Select("select * from p2p_userinfo u,p2p_review r where u.reviewid=r.reviewid and u.id=#{userInfo.id}")
    UserInfo queryReviewSize(@Param("userInfo") UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO:
     * @Date 2018/5/23 21:14
     * @Param [userInfo, i, number]
     * @return java.util.List<com.six.model.UserInfo>
     */
    @Select("select * from p2p_review where reviewid = #{reviewid} limit #{start},#{number}")
    List<UserInfo> queryReviewInfo(@Param("reviewid") String reviewid, @Param("start") int start, @Param("number") Integer number);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/23 21:14
     * @Param [userInfo]
     * @return long
     */
    @Select("select count(*) from p2p_review where reviewid = #{reviewid} ")
    long queryReviewInfoCount(@Param("reviewid") String reviewid);
    /**
     * @Author 李中豪
     * @Description TODO:修改审核中的认证状态并新增到审核记录表中
     * @Date 2018/5/23 23:10
     * @Param [userInfo]
     * @return void
     */
    @Update("update p2p_review set certificationcount=certificationcount+1,certificationstatus=0,certificationdate = #{userInfo.certificationdate} where p2p_review.reviewid=#{userInfo.reviewid}")
    void updateReviewBystatus(@Param("userInfo") UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO:新增数据到审核记录表中
     * @Date 2018/5/23 23:15
     * @Param [userInfo]
     * @return void
     */
    @Insert("insert into p2p_reviewnotes(id,reviewtype,necertification,certificationcount,certificationdate,status) values " +
            "(#{userInfo.id}," +
            "#{userInfo.reviewtype}," +
            "#{userInfo.necertification}," +
            "#{userInfo.certificationcount}," +
            "#{userInfo.certificationdate}," +
            "0)")
    void saveReviewBystatus(@Param("userInfo") UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO:查询出用户所对应的审核记录
     * @Date 2018/5/24 11:20
     * @Param [id, start, number]
     * @return java.util.List<com.six.model.UserInfo>
     */
    @Select("select * from p2p_reviewnotes where id = #{id} and status=0 limit #{start},#{number}")
    List<UserInfo> queryReviewnotesInfo(@Param("id") String id, @Param("start") int start, @Param("number") Integer number);
    /**
     * @Author 李中豪
     * @Description TODO:
     * @Date 2018/5/24 11:21
     * @Param [id]
     * @return long
     */
    @Select("select count(*) from p2p_reviewnotes where id = #{id} and status=0")
    long queryReviewnotesInfoCount(@Param("id") String id);
    /**
     * @Author 李中豪
     * @Description TODO:删除审核记录
     * @Date 2018/5/24 15:05
     * @Param [reviewid]
     * @return void
     */
    @Delete("delete from p2p_reviewnotes where reviewid =#{reviewid}")
    void deleteReviewnotes(@Param("reviewid") String reviewid);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/27 22:05
     * @Param [userInfo]
     * @return void
     */
    @Insert("insert into p2p_userinfo(loginname,userpwd,username,userphone,idcard,sex,eamil,birthdate,sendtime) values " +
            "(#{userInfo.loginname}," +
            "#{userInfo.userpwd}," +
            "#{userInfo.username}," +
            "#{userInfo.userphone}," +
            "#{userInfo.idcard}," +
            "#{userInfo.sex}," +
            "#{userInfo.eamil}," +
            "#{userInfo.birthdate}," +
            "#{userInfo.sendtime})")
    void saveUserInfo(@Param("userInfo") UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/28 21:09
     * @Param [userInfo]
     * @return java.util.List<com.six.model.UserInfo>
     */
    @Select("select * from p2p_userinfo")
    List<UserInfo> queryuserInfo(UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/29 23:32
     * @Param [id]
     * @return java.util.List
     */
    @Select("select b.borrowing_amount,b.investment_amount from p2p_userinfo u,p2p_borrowing_record b where u.borrowingid =b.borrowing_id and u.id=#{id}")
    List<Amount> queryTreportforms(@Param("id") String id);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/5/31 22:45
     * @Param [userInfo]
     * @return com.six.model.UserInfo
     */
    @Select("select * from p2p_userinfo u,p2p_education e,p2p_workinfo w,p2p_areainfo a,p2p_car_information c,p2p_property_information p where u.workid=w.workid " +
            "and u.educationid=e.eid and w.addrid=a.areaid and u.car_id=c.car_id and u.property_id=p.property_id and u.id=#{userInfo.id}")
    UserInfo queryUserInfoh(@Param("userInfo") UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/6/1 11:57
     * @Param [fileUrl]
     * @return void
     */
    @Update("UPDATE p2p_userinfo SET filename = #{fileUrl} WHERE id = #{userInfo.id}")
    void saveUserPhoto(@Param("fileUrl") String fileUrl, @Param("userInfo") UserInfo userInfo);

    @Select("select * from p2p_userinfo where id=#{id}")
    List<UserInfo> queryUserImg(@Param("id") String id);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/6/4 9:19
     * @Param [userInfo]
     * @return void
     */
    @Update("UPDATE p2p_userinfo SET loginname = #{userInfo.loginname}, userphone=#{userInfo.userphone}, eamil=#{userInfo.eamil}  WHERE id = #{userInfo.id}")
    void uploadMainInfo(@Param("userInfo") UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/6/4 15:38
     * @Param [userMain]
     * @return java.util.List<com.six.model.UserInfo>
     */
    @Select("select * from p2p_userinfo u where u.userpwd=#{userMain.olduserpwd} and u.id = #{userMain.id}")
    List<UserInfo> queryUserMainByPwd(@Param("userMain") UserMain userMain);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/6/4 15:38
     * @Param [userMain]
     * @return void
     */
    @Update("UPDATE p2p_userinfo SET userpwd=#{userMain.userpwd} WHERE id = #{userMain.id}")
    void updateUserMainPwd(@Param("userMain") UserMain userMain);
    @Select("SELECT sum(sex=0) boycount,SUM(sex=1) girlcount from p2p_userinfo ")
    List<UserSex> queryUserSex();
}
