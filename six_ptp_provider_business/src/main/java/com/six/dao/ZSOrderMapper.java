package com.six.dao;

import com.six.model.DingDanGuanLi;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ZSOrderMapper {

    @Select("<script> select p2p_dingdan.*,p2p_userinfo.loginname loginname,p2p_ddtype.ddtype dingdanleixing from p2p_dingdan, " +
            " p2p_userinfo,p2p_ddtype " +
            " where p2p_dingdan.userid=p2p_userinfo.id AND p2p_dingdan.ddtype=p2p_ddtype.ddtypeid " +
            "<if test='dd.ddid != null '>" +
            "  and p2p_dingdan.ddid = #{dd.ddid} " +
            "</if>" +
            "<if test='dd.loginname != null '>" +
            "  and p2p_userinfo.loginname like '%${dd.loginname}%'" +
            "</if>" +
            "<if test='dd.ddtype != null '>" +
            "  and p2p_dingdan.ddtype = #{dd.ddtype} " +
            "</if>" +
            "<if test='dd.creationtime != null '>" +
            "  and p2p_dingdan.creationtime &gt;= #{dd.creationtime} " +
            "</if>" +
            "<if test='dd.submissiontime != null '>" +
            "  and p2p_dingdan.creationtime &lt;= #{dd.submissiontime} " +
            "</if>" +
            "limit #{start},#{limit}" +
            "</script>")
    List<DingDanGuanLi> orderList(@Param("dd") DingDanGuanLi dd, @Param("start") Integer start, @Param("limit") Integer limit);


    @Select("<script> select count(*) from p2p_dingdan, " +
            " p2p_userinfo,p2p_ddtype " +
            " where p2p_dingdan.userid=p2p_userinfo.id AND p2p_dingdan.ddtype=p2p_ddtype.ddtypeid " +
            "<if test='dd.ddid != null '>" +
            "  and p2p_dingdan.ddid = #{dd.ddid} " +
            "</if>" +
            "<if test='dd.loginname != null '>" +
            "  and p2p_userinfo.loginname like '%${dd.loginname}%'" +
            "</if>" +
            "<if test='dd.ddtype != null '>" +
            "  and p2p_dingdan.ddtype = #{dd.ddtype} " +
            "</if>" +
            "<if test='dd.creationtime != null '>" +
            "  and p2p_dingdan.creationtime &gt;= #{dd.creationtime} " +
            "</if>" +
            "<if test='dd.submissiontime != null '>" +
            "  and p2p_dingdan.creationtime &lt;= #{dd.submissiontime} " +
            "</if>" +
            "</script>")
    long queryCount(@Param("dd") DingDanGuanLi dd);

    @Select(" select p2p_ddtype.ddtypeid ddid,p2p_ddtype.ddtype dingdanleixing from p2p_ddtype ")
    List<DingDanGuanLi> ddtype();
}
