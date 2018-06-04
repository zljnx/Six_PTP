package com.six.dao;

import com.six.model.WhbContract;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by Administrator on 2018/5/27.
 */
@Mapper
public interface WhbContractMapper {

    @Select("<script> select c.*,u.loginname,u.username  from p2p_contract c,p2p_userinfo u where c.id = u.id and c.b_branchid =1 and 1=1 " +
            "<if test='whbContract.loginname != null '>" +
            "  and u.loginname like '%${whbContract.loginname}%'" +
            "</if>" +
            "<if test='whbContract.username != null '>" +
            "  and u.username like '%${whbContract.username}%'" +
            "</if>" +
            "<if test='whbContract.b_bid != null '>" +
            "  and c.b_bid like '%${whbContract.b_bid}%'" +
            "</if>" +
            "<if test='whbContract.b_mark != null '>" +
            "  and c.b_mark like '%${whbContract.b_mark}%'" +
            "</if>" +
            "<if test='whbContract.b_loantitle != null '>" +
            "  and c.b_loantitle like '%${whbContract.b_loantitle}%'" +
            "</if>" +
            "<if test='whbContract.b_contract != null '>" +
            "  and c.b_contract like '%${whbContract.b_contract}%'" +
            "</if>" +
            "<if test='whbContract.b_bdate != null '>" +
            "  and c.b_bdate &gt;= #{whbContract.b_bdate} " +
            "</if>" +
            "<if test='whbContract.b_date != null '>" +
            "  and c.b_date &lt;= #{whbContract.b_date} " +
            "</if>" +
            "limit #{start},#{pageSize}"+
            "</script>")
    List<WhbContract> selectContract(@Param("whbContract") WhbContract whbContract, @Param("start") Integer start, @Param("pageSize") Integer pageSize);
    @Select("<script> select count(*)  from p2p_contract c,p2p_userinfo u where c.id = u.id and c.b_branchid =1 and 1=1 " +
            "<if test='whbContract.loginname != null '>" +
            "  and u.loginname like '%${whbContract.loginname}%'" +
            "</if>" +
            "<if test='whbContract.username != null '>" +
            "  and u.username like '%${whbContract.username}%'" +
            "</if>" +
            "<if test='whbContract.b_bid != null '>" +
            "  and c.b_bid like '%${whbContract.b_bid}%'" +
            "</if>" +
            "<if test='whbContract.b_mark != null '>" +
            "  and c.b_mark like '%${whbContract.b_mark}%'" +
            "</if>" +
            "<if test='whbContract.b_loantitle != null '>" +
            "  and c.b_loantitle like '%${whbContract.b_loantitle}%'" +
            "</if>" +
            "<if test='whbContract.b_contract != null '>" +
            "  and c.b_contract like '%${whbContract.b_contract}%'" +
            "</if>" +
            "<if test='whbContract.b_bdate != null '>" +
            "  and c.b_bdate &gt;= #{whbContract.b_bdate} " +
            "</if>" +
            "<if test='whbContract.b_date != null '>" +
            "  and c.b_date &lt;= #{whbContract.b_date} " +
            "</if>" +
            "</script>")
    long selectContractCount(@Param("whbContract") WhbContract whbContract);






    @Select("<script> select c.*,u.loginname,u.username  from p2p_contract c,p2p_userinfo u where c.id = u.id and c.b_branchid =2 and 1=1 " +
            "<if test='whbContract.loginname != null '>" +
            "  and u.loginname like '%${whbContract.loginname}%'" +
            "</if>" +
            "<if test='whbContract.username != null '>" +
            "  and u.username like '%${whbContract.username}%'" +
            "</if>" +
            "<if test='whbContract.b_bid != null '>" +
            "  and c.b_bid like '%${whbContract.b_bid}%'" +
            "</if>" +
            "<if test='whbContract.b_agreement != null '>" +
            "  and c.b_agreement like '%${whbContract.b_agreement}%'" +
            "</if>" +
            "<if test='whbContract.b_bdate != null '>" +
            "  and c.b_bdate &gt;= #{whbContract.b_bdate} " +
            "</if>" +
            "<if test='whbContract.b_date != null '>" +
            "  and c.b_date &lt;= #{whbContract.b_date} " +
            "</if>" +
            "limit #{start},#{pageSize}"+
            "</script>")
    List<WhbContract> selectContract1(@Param("whbContract") WhbContract whbContract, @Param("start") Integer start, @Param("pageSize") Integer pageSize);
    @Select("<script> select count(*)  from p2p_contract c,p2p_userinfo u where c.id = u.id and c.b_branchid =2 and 1=1 " +
            "<if test='whbContract.loginname != null '>" +
            "  and u.loginname like '%${whbContract.loginname}%'" +
            "</if>" +
            "<if test='whbContract.username != null '>" +
            "  and u.username like '%${whbContract.username}%'" +
            "</if>" +
            "<if test='whbContract.b_bid != null '>" +
            "  and c.b_bid like '%${whbContract.b_bid}%'" +
            "</if>" +
            "<if test='whbContract.b_agreement != null '>" +
            "  and c.b_agreement like '%${whbContract.b_agreement}%'" +
            "</if>" +
            "<if test='whbContract.b_bdate != null '>" +
            "  and c.b_bdate &gt;= #{whbContract.b_bdate} " +
            "</if>" +
            "<if test='whbContract.b_date != null '>" +
            "  and c.b_date &lt;= #{whbContract.b_date} " +
            "</if>" +
            "</script>")
    long selectContractCount1(@Param("whbContract") WhbContract whbContract);


    @Select("<script> select c.*,u.loginname,u.username  from p2p_contract c,p2p_userinfo u where c.id = u.id " +

            "</script>")
    List<WhbContract> queryContract(WhbContract whbContract);
}
