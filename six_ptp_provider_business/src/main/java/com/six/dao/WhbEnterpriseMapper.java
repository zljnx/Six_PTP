package com.six.dao;

import com.six.model.WhbPersonal;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by Administrator on 2018/5/23.
 */
@Mapper
public interface WhbEnterpriseMapper {
    /*@Query("from StudentInformation as s where (" +
            "s.name like %?1% or ?1 =null) and " +
            "(s.stuNo =?2 or ?2 = null) and " +
            "(s.endDate >= ?9 or ?9=null) and " +
            "(s.endDate <= ?10 or ?10=null) and " +
            "(s.tutorName =?11 or ?11 = null) and " +
            "(s.status =?12 or ?12 = null) and " +
            "(s.eduDegree =?13 or ?13 = null)")*/
    @Select("<script> select p.*,c.corporate_id,c.corporate_name from p2p_personal_business p,p2p_corporate_information c where p.corporate_id = c.corporate_id and p.e_zt = 1 and 1=1 " +
            "<if test='whbPersonal.e_number != null '>" +
            "and p.e_number like '%${whbPersonal.e_number}%'" +
            "</if>" +
            "<if test='whbPersonal.e_date != null '>" +
            "  and p.e_date &gt;= #{whbPersonal.e_date} " +
            "</if>" +
            "<if test='whbPersonal.e_date != null '>" +
            "  and p.e_date &lt;= #{whbPersonal.e_date} " +
            "</if>" +
            "limit #{start},#{pageSize}"+
            "</script>")
    List<WhbPersonal> selectEnterprise(@Param("whbPersonal") WhbPersonal whbPersonal, @Param("start") Integer start, @Param("pageSize") Integer pageSize);
    @Select("<script> select count(*) from p2p_personal_business p,p2p_corporate_information c where p.corporate_id = c.corporate_id and p.e_zt = 1 and 1=1 " +
            "<if test='whbPersonal.e_number != null '>" +
            "  and p.e_number like '%${whbPersonal.e_number}%'" +
            "</if>" +
            "<if test='whbPersonal.e_date != null '>" +
            "  and p.e_date &gt;= #{whbPersonal.e_date} " +
            "</if>" +
            "<if test='whbPersonal.e_date != null '>" +
            "  and p.e_date &lt;= #{whbPersonal.e_date} " +
            "</if>" +
            "</script>")
    long selectEnterpriseCount(@Param("whbPersonal") WhbPersonal whbPersonal);







    @Select("<script> select p.*,u.id,u.username,u.idcard from p2p_personal_business p,p2p_userinfo u where p.id = u.id and p.e_zt = 2 and 1=1 " +
            "<if test='whbPersonal.e_number != null '>" +
            "  and p.e_number like '%${whbPersonal.e_number}%'" +
            "</if>" +
            "<if test='whbPersonal.e_date != null '>" +
            "  and p.e_date &gt;= #{whbPersonal.e_date} " +
            "</if>" +
            "<if test='whbPersonal.e_date != null '>" +
            "  and p.e_date &lt;= #{whbPersonal.e_date} " +
            "</if>" +
            "limit #{start},#{pageSize}"+
            "</script>")
    List<WhbPersonal> selectEnterprise2(@Param("whbPersonal") WhbPersonal whbPersonal, @Param("start") Integer start, @Param("pageSize") Integer pageSize);
    @Select("<script> select count(*) from p2p_personal_business p,p2p_userinfo u where p.id = u.id and p.e_zt = 2 and 1=1 " +
            "<if test='whbPersonal.e_number != null '>" +
            "  and p.e_number like '%${whbPersonal.e_number}%'" +
            "</if>" +
            "<if test='whbPersonal.e_date != null '>" +
            "  and p.e_date &gt;= #{whbPersonal.e_date} " +
            "</if>" +
            "<if test='whbPersonal.e_date != null '>" +
            "  and p.e_date &lt;= #{whbPersonal.e_date} " +
            "</if>" +
            "</script>")
    long selectEnterpriseCount2(@Param("whbPersonal") WhbPersonal whbPersonal);
}
