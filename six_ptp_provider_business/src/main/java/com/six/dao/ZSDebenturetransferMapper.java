package com.six.dao;

import com.six.model.Debenturetransfer;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ZSDebenturetransferMapper {

    @Select("<script> select * from p2p_debenturetransfer where p2p_debenturetransfer.zrstatus=#{zrstatus}" +
            "<if test='debenturetransfer.zqid != null '>" +
            "  and p2p_debenturetransfer.zqid = #{debenturetransfer.zqid} " +
            "</if>" +
            "<if test='debenturetransfer.signid != null '>" +
            "  and p2p_debenturetransfer.signid = #{debenturetransfer.signid} " +
            "</if>" +
            "<if test='debenturetransfer.Borrowingtitle != null '>" +
            "  and p2p_debenturetransfer.Borrowingtitle = #{debenturetransfer.Borrowingtitle} " +
            "</if>" +
            "<if test='debenturetransfer.sellers != null '>" +
            "  and p2p_debenturetransfer.sellers = #{debenturetransfer.sellers} " +
            "</if>" +
            "<if test='debenturetransfer.applyfortime != null '>" +
            "  and p2p_debenturetransfer.applyfortime &gt;= #{debenturetransfer.applyfortime} " +
            "</if>" +
            "<if test='debenturetransfer.endtime != null '>" +
            "  and p2p_debenturetransfer.applyfortime &lt;= #{debenturetransfer.endtime} " +
            "</if>" +
            "limit #{start},#{pageSize}"+
            "</script>")
    List<Debenturetransfer> queryDebenturetransferList(@Param("debenturetransfer") Debenturetransfer debenturetransfer, @Param("start") Integer start, @Param("pageSize") Integer pageSize, @Param("zrstatus") Integer zrstatus);

    @Select("<script> select count(*) from p2p_debenturetransfer where p2p_debenturetransfer.zrstatus=#{zrstatus}" +
            "<if test='debenturetransfer.zqid != null '>" +
            "  and p2p_debenturetransfer.zqid = #{debenturetransfer.zqid} " +
            "</if>" +
            "<if test='debenturetransfer.signid != null '>" +
            "  and p2p_debenturetransfer.signid = #{debenturetransfer.signid} " +
            "</if>" +
            "<if test='debenturetransfer.Borrowingtitle != null '>" +
            "  and p2p_debenturetransfer.Borrowingtitle = #{debenturetransfer.Borrowingtitle} " +
            "</if>" +
            "<if test='debenturetransfer.sellers != null '>" +
            "  and p2p_debenturetransfer.sellers = #{debenturetransfer.sellers} " +
            "</if>" +
            "<if test='debenturetransfer.applyfortime != null '>" +
            "  and p2p_debenturetransfer.applyfortime &gt;= #{debenturetransfer.applyfortime} " +
            "</if>" +
            "<if test='debenturetransfer.endtime != null '>" +
            "  and p2p_debenturetransfer.applyfortime &lt;= #{debenturetransfer.endtime} " +
            "</if>" +
            "</script>")
    long queryCount(@Param("debenturetransfer") Debenturetransfer debenturetransfer, @Param("zrstatus") Integer zrstatus);

    @Update("UPDATE p2p_debenturetransfer SET p2p_debenturetransfer.zrstatus = 1 WHERE p2p_debenturetransfer.zrid = #{parseInt}")
    void pldelDebenturetransfer(int parseInt);

    @Update("UPDATE p2p_debenturetransfer SET p2p_debenturetransfer.zrstatus = 0 WHERE p2p_debenturetransfer.zrid = #{parseInt}")
    void plxiajiaDebenturetransfer(int parseInt);

    @Update("UPDATE p2p_debenturetransfer SET p2p_debenturetransfer.zrstatus = 1 WHERE p2p_debenturetransfer.zrid = #{zrid}")
    void fabu(String zrid);

    @Update("UPDATE p2p_debenturetransfer SET p2p_debenturetransfer.zrstatus = 0 WHERE p2p_debenturetransfer.zrid = #{zrid}")
    void xiajia(String zrid);
}
