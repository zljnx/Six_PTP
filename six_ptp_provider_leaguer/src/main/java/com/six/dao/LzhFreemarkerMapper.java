package com.six.dao;

import com.six.model.Amount;
import com.six.model.UserInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @ProjectName: Six_PTP
 * @ClassName: LzhFreemarkerMapper
 * @Package com.six.dao
 * @Description: TODO
 * @Author 李中豪
 * @Date 2018/6/1 17:38
 * @Version 1.0
 */
@Mapper
public interface LzhFreemarkerMapper {
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/6/1 17:38
     * @Param [userInfo]
     * @return java.util.List<com.six.model.UserInfo>
     */
    @Select("select * from p2p_userinfo u,p2p_education e,p2p_workinfo w,p2p_areainfo a,p2p_car_information c,p2p_property_information p where u.workid=w.workid and u.educationid=e.eid and w.addrid=a.areaid and u.car_id=c.car_id and u.property_id=p.property_id and u.id=#{userInfo.id}")
    List<UserInfo> queryUserInfoFm(@Param("userInfo") UserInfo userInfo);
    /**
     * @Author 李中豪
     * @Description TODO
     * @Date 2018/6/1 21:27
     * @Param [amount]
     * @return java.util.List<com.six.model.Amount>
     */
    @Select("select b.borrowing_amount,b.investment_amount,u.filename from p2p_userinfo u,p2p_borrowing_record b where u.borrowingid =b.borrowing_id and u.id=#{userInfo.id}")
    List<UserInfo> queryUserInfoFmt(@Param("userInfo") UserInfo userInfo);
}
