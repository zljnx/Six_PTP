package com.six.dao;

import com.six.model.Personalloanintention;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface ZSPersonalloanintentionMapper {
    @Select("<script> select * from p2p_personalloanintention where p2p_personalloanintention.grjktype=1 " +
            "<if test='personalloanintention.username != null '>" +
            "  and p2p_personalloanintention.username like '%${personalloanintention.username}%'" +
            "</if>" +
            "<if test='personalloanintention.province != null '>" +
            "  and p2p_personalloanintention.province = #{personalloanintention.province} " +
            "</if>" +
            "<if test='personalloanintention.city != null '>" +
            "  and p2p_personalloanintention.city = #{personalloanintention.city} " +
            "</if>" +
            "<if test='personalloanintention.area != null '>" +
            "  and p2p_personalloanintention.area = #{personalloanintention.area} " +
            "</if>" +
            "<if test='personalloanintention.grsubmittime != null '>" +
            "  and p2p_personalloanintention.grsubmittime &gt;= #{personalloanintention.grsubmittime} " +
            "</if>" +
            "<if test='personalloanintention.handlingtime != null '>" +
            "  and p2p_personalloanintention.grsubmittime &lt;= #{personalloanintention.handlingtime} " +
            "</if>" +
            "<if test='personalloanintention.grjkstatus != null '>" +
            "  and p2p_personalloanintention.grjkstatus = #{personalloanintention.grjkstatus} " +
            "</if>" +
            "limit #{start},#{pageSize}" +
            "</script>")
    List<Personalloanintention> queryPersonalloanintentionList(@Param("personalloanintention") Personalloanintention personalloanintention, @Param("start") Integer start, @Param("pageSize") Integer pageSize);

    @Select("<script> select count(*) from p2p_personalloanintention where p2p_personalloanintention.grjktype=1 " +
            "<if test='personalloanintention.username != null '>" +
            "  and p2p_personalloanintention.username like '%${personalloanintention.username}%' " +
            "</if>" +
            "<if test='personalloanintention.province != null '>" +
            "  and p2p_personalloanintention.province = #{personalloanintention.province} " +
            "</if>" +
            "<if test='personalloanintention.city != null '>" +
            "  and p2p_personalloanintention.city = #{personalloanintention.city} " +
            "</if>" +
            "<if test='personalloanintention.area != null '>" +
            "  and p2p_personalloanintention.area = #{personalloanintention.area} " +
            "</if>" +
            "<if test='personalloanintention.grsubmittime != null '>" +
            "  and p2p_personalloanintention.grsubmittime &gt;= #{personalloanintention.grsubmittime} " +
            "</if>" +
            "<if test='personalloanintention.handlingtime != null '>" +
            "  and p2p_personalloanintention.grsubmittime &lt;= #{personalloanintention.handlingtime} " +
            "</if>" +
            "<if test='personalloanintention.grjkstatus != null '>" +
            "  and p2p_personalloanintention.grjkstatus = #{personalloanintention.grjkstatus} " +
            "</if>" +
            "</script>")
    long queryCount(@Param("personalloanintention") Personalloanintention personalloanintention);

    @Update(" UPDATE p2p_personalloanintention SET p2p_personalloanintention.grjkstatus = 2,p2p_personalloanintention.dispose=#{dispose}," +
            " p2p_personalloanintention.handler=#{username},p2p_personalloanintention.handlingtime=NOW()" +
            " WHERE p2p_personalloanintention.grjkid = #{grjkid} ")
    void gerenchuli(@Param("dispose") String dispose, @Param("grjkid") String grjkid, @Param("loginname") String loginname, @Param("username") String username);

    @Select("select * from p2p_personalloanintention where p2p_personalloanintention.grjkid=#{grjkid} ")
    Personalloanintention gerenxiangqing(String grjkid);

    @Select("<script> select * from p2p_personalloanintention where p2p_personalloanintention.grjktype=2 " +
            "<if test='personalloanintention.username != null '>" +
            "  and p2p_personalloanintention.username like '%${personalloanintention.username}%'" +
            "</if>" +
            "<if test='personalloanintention.province != null '>" +
            "  and p2p_personalloanintention.province = #{personalloanintention.province} " +
            "</if>" +
            "<if test='personalloanintention.city != null '>" +
            "  and p2p_personalloanintention.city = #{personalloanintention.city} " +
            "</if>" +
            "<if test='personalloanintention.area != null '>" +
            "  and p2p_personalloanintention.area = #{personalloanintention.area} " +
            "</if>" +
            "<if test='personalloanintention.grsubmittime != null '>" +
            "  and p2p_personalloanintention.grsubmittime &gt;= #{personalloanintention.grsubmittime} " +
            "</if>" +
            "<if test='personalloanintention.handlingtime != null '>" +
            "  and p2p_personalloanintention.grsubmittime &lt;= #{personalloanintention.handlingtime} " +
            "</if>" +
            "<if test='personalloanintention.grjkstatus != null '>" +
            "  and p2p_personalloanintention.grjkstatus = #{personalloanintention.grjkstatus} " +
            "</if>" +
            "limit #{start},#{pageSize}" +
            "</script>")
    List<Personalloanintention> queryQiyeList(@Param("personalloanintention") Personalloanintention personalloanintention, @Param("start") Integer start, @Param("pageSize") Integer pageSize);

    @Select("<script> select count(*) from p2p_personalloanintention where p2p_personalloanintention.grjktype=2 " +
            "<if test='personalloanintention.username != null '>" +
            "  and p2p_personalloanintention.username like '%${personalloanintention.username}%' " +
            "</if>" +
            "<if test='personalloanintention.province != null '>" +
            "  and p2p_personalloanintention.province = #{personalloanintention.province} " +
            "</if>" +
            "<if test='personalloanintention.city != null '>" +
            "  and p2p_personalloanintention.city = #{personalloanintention.city} " +
            "</if>" +
            "<if test='personalloanintention.area != null '>" +
            "  and p2p_personalloanintention.area = #{personalloanintention.area} " +
            "</if>" +
            "<if test='personalloanintention.grsubmittime != null '>" +
            "  and p2p_personalloanintention.grsubmittime &gt;= #{personalloanintention.grsubmittime} " +
            "</if>" +
            "<if test='personalloanintention.handlingtime != null '>" +
            "  and p2p_personalloanintention.grsubmittime &lt;= #{personalloanintention.handlingtime} " +
            "</if>" +
            "<if test='personalloanintention.grjkstatus != null '>" +
            "  and p2p_personalloanintention.grjkstatus = #{personalloanintention.grjkstatus} " +
            "</if>" +
            "</script>")
    long queryCount1(@Param("personalloanintention") Personalloanintention personalloanintention);

    @Select("select * from p2p_personalloanintention where p2p_personalloanintention.grjkid=#{grjkid} ")
    Personalloanintention qiyexiangqing(String grjkid);

    @Select(" select grjkid,username,userphone,grAmount,grdeadline,grjktype,grcity,grFundraisingdeadline,grjkdescribe,grsubmittime from p2p_personalloanintention ")
    List<Personalloanintention> querygeren(Personalloanintention personalloanintention);
}
