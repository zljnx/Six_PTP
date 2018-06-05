package com.six.dao;


import com.six.model.LxgInstitution;
import com.six.model.LxgInstitutionCombination;
import com.six.model.UserInfo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author 吕旭刚
 * @Title: ${file_name}
 * @Package com.six.dao
 * @Description: 描述.....
 * @create 2018-05-21 17:32
 */
@Mapper
public interface LxgCorporateDao {
    //分页查询
    @Select("select ii.institution_id,ii.institution_account,ii.institution_name,ii.business_license,cf.contact_name,cc.registration_time,ii.state_number,cc.allowed_invest,ii.allowed_distressed from p2p_institution_information ii,p2p_contact_form cf,p2p_corporate_information cc where ii.contact_id=cf.contact_id and ii.corporate_id = cc.corporate_id limit #{start},#{pageSize}")
    List<LxgInstitutionCombination> queryCorporate(@Param("start") Integer start, @Param("pageSize") Integer pageSize);

    @Select("select count(*) from p2p_institution_information ii,p2p_contact_form cf,p2p_corporate_information cc where ii.contact_id=cf.contact_id and ii.corporate_id = cc.corporate_id")
    long queryCount();

    //查看
    @Select("<script>  select * from p2p_institution_information ii,p2p_contact_form cf,p2p_corporate_information cc,p2p_financial ff,p2p_car_information ci,p2p_property_information pi,p2p_borrowing_record bb,p2p_borrowing_statetype bs,p2p_userinfo ui where ii.contact_id=cf.contact_id and ii.corporate_id = cc.corporate_id and ii.financial_id=ff.financial_id and ii.car_id = ci.car_id and ii.property_id = pi.property_id  and ii.borrowing_id=bb.borrowing_id  and bb.borrowing_stateType_id=bs.borrowing_stateType_id and bb.id=ui.id and ii.institution_id = #{lxgInstitutionCombination.institution_id} </script>")
    LxgInstitutionCombination queryCorporateView(@Param("lxgInstitutionCombination") LxgInstitutionCombination lxgInstitutionCombination);
     //登录
    @Select("select count(*) from p2p_userinfo where loginname=#{loginname} and userpwd=#{userpwd} and logontype='pclogon'")
    int LxgLogin(@Param("loginname") String loginname, @Param("userpwd") String userpwd);
    @Select("select * from p2p_userinfo where loginname=#{loginname} and userpwd=#{userpwd}")
    List<UserInfo> queryLogin(@Param("loginname") String loginname, @Param("userpwd") String userpwd);
    //注册
    @Insert("insert into p2p_userinfo(loginname,userpwd,userphone,sendtime) values (#{userInfo.loginname},#{userInfo.userpwd},#{userInfo.userphone},#{userInfo.sendtime})")
    void saveuserinfo(@Param("userInfo") UserInfo userInfo);

}
