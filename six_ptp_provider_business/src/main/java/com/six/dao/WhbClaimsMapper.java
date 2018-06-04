package com.six.dao;

import com.six.model.WhbClaims;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by Administrator on 2018/5/24.
 */
@Mapper
public interface WhbClaimsMapper {

    @Select("<script> select c.*,d.sellers,d.transferprice,d.Amountbond from p2p_claims c,p2p_debenturetransfer d where c.c_id = d.zrid and 1=1 " +
            "<if test='whbClaims.sellers != null '>" +
            "  and d.sellers like '%${whbClaims.sellers}%'" +
            "</if>" +
            "<if test='whbClaims.c_date != null '>" +
            "  and c.e_date &gt;= #{whbClaims.e_date} " +
            "</if>" +
            "<if test='whbClaims.c_date != null '>" +
            "  and c.e_date &lt;= #{whbClaims.e_date} " +
            "</if>" +
            "limit #{start},#{pageSize}"+
            "</script>")
    List<WhbClaims> selectEnterprise(@Param("whbClaims") WhbClaims whbClaims, @Param("start") Integer start, @Param("pageSize") Integer pageSize);


    @Select("<script> select count(*) from p2p_claims c,p2p_debenturetransfer d where c.c_id = d.zrid and 1=1 " +
            "<if test='whbClaims.sellers != null '>" +
            "  and d.sellers like '%${whbClaims.sellers}%'" +
            "</if>" +
            "<if test='whbClaims.c_date != null '>" +
            "  and c.e_date &gt;= #{whbClaims.e_date} " +
            "</if>" +
            "<if test='whbClaims.c_date != null '>" +
            "  and c.e_date &lt;= #{whbClaims.e_date} " +
            "</if>" +
            "</script>")
    long selectEnterpriseCount(@Param("whbClaims") WhbClaims whbClaims);
}
