package com.six.dao;

import com.six.model.Borrowingmanagement;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ZSLoansMapper {

    @Select("<script> select * from p2p_borrowingmanagement where 1=1 " +
            "<if test='borrowingmanagement.jksignid != null '>" +
            "  and p2p_borrowingmanagement.jksignid like '%${borrowingmanagement.jksignid}%' " +
            "</if>" +
            "<if test='borrowingmanagement.jkBorrowingtitle != null '>" +
            "  and p2p_borrowingmanagement.jkBorrowingtitle like '%${borrowingmanagement.jkBorrowingtitle}%' " +
            "</if>" +
            "<if test='borrowingmanagement.loginname != null '>" +
            "  and p2p_borrowingmanagement.loginname like '%${borrowingmanagement.loginname}%' " +
            "</if>" +
            "<if test='borrowingmanagement.productname != null '>" +
            "  and p2p_borrowingmanagement.productname = #{borrowingmanagement.productname} " +
            "</if>" +
            "<if test='borrowingmanagement.disposetime != null '>" +
            "  and p2p_borrowingmanagement.disposetime &gt;= #{borrowingmanagement.disposetime} " +
            "</if>" +
            "<if test='borrowingmanagement.endtime != null '>" +
            "  and p2p_borrowingmanagement.disposetime &lt;= #{borrowingmanagement.endtime} " +
            "</if>" +
            "<if test='borrowingmanagement.biaoproperty != null '>" +
            "  and p2p_borrowingmanagement.biaoproperty = #{borrowingmanagement.biaoproperty} " +
            "</if>" +
            "<if test='borrowingmanagement.borrowingtype != null '>" +
            "  and p2p_borrowingmanagement.borrowingtype = #{borrowingmanagement.borrowingtype} " +
            "</if>" +
            "<if test='borrowingmanagement.accounttype != null '>" +
            "  and p2p_borrowingmanagement.accounttype = #{borrowingmanagement.accounttype} " +
            "</if>" +
            "<if test='borrowingmanagement.jkstatus != null '>" +
            "  and p2p_borrowingmanagement.jkstatus = #{borrowingmanagement.jkstatus} " +
            "</if>" +
            "<if test='borrowingmanagement.identifytype != null '>" +
            "  and p2p_borrowingmanagement.identifytype = #{borrowingmanagement.identifytype} " +
            "</if>" +
            "<if test='borrowingmanagement.source != null '>" +
            "  and p2p_borrowingmanagement.source = #{borrowingmanagement.source} " +
            "</if>" +
            " limit #{start},#{pageSize} " +
            " </script>")
    List<Borrowingmanagement> loanslist(@Param("borrowingmanagement") Borrowingmanagement borrowingmanagement, @Param("start") Integer start, @Param("pageSize") Integer pageSize);

    @Select("<script> select count(*) from p2p_borrowingmanagement where 1=1 " +
            "<if test='borrowingmanagement.jksignid != null '>" +
            "  and p2p_borrowingmanagement.jksignid like '%${borrowingmanagement.jksignid}%' " +
            "</if>" +
            "<if test='borrowingmanagement.jkBorrowingtitle != null '>" +
            "  and p2p_borrowingmanagement.jkBorrowingtitle like '%${borrowingmanagement.jkBorrowingtitle}%' " +
            "</if>" +
            "<if test='borrowingmanagement.loginname != null '>" +
            "  and p2p_borrowingmanagement.loginname like '%${borrowingmanagement.loginname}%' " +
            "</if>" +
            "<if test='borrowingmanagement.productname != null '>" +
            "  and p2p_borrowingmanagement.productname = #{borrowingmanagement.productname} " +
            "</if>" +
            "<if test='borrowingmanagement.disposetime != null '>" +
            "  and p2p_borrowingmanagement.disposetime &gt;= #{borrowingmanagement.disposetime} " +
            "</if>" +
            "<if test='borrowingmanagement.endtime != null '>" +
            "  and p2p_borrowingmanagement.disposetime &lt;= #{borrowingmanagement.endtime} " +
            "</if>" +
            "<if test='borrowingmanagement.biaoproperty != null '>" +
            "  and p2p_borrowingmanagement.biaoproperty = #{borrowingmanagement.biaoproperty} " +
            "</if>" +
            "<if test='borrowingmanagement.borrowingtype != null '>" +
            "  and p2p_borrowingmanagement.borrowingtype = #{borrowingmanagement.borrowingtype} " +
            "</if>" +
            "<if test='borrowingmanagement.accounttype != null '>" +
            "  and p2p_borrowingmanagement.accounttype = #{borrowingmanagement.accounttype} " +
            "</if>" +
            "<if test='borrowingmanagement.jkstatus != null '>" +
            "  and p2p_borrowingmanagement.jkstatus = #{borrowingmanagement.jkstatus} " +
            "</if>" +
            "<if test='borrowingmanagement.identifytype != null '>" +
            "  and p2p_borrowingmanagement.identifytype = #{borrowingmanagement.identifytype} " +
            "</if>" +
            "<if test='borrowingmanagement.source != null '>" +
            "  and p2p_borrowingmanagement.source = #{borrowingmanagement.source} " +
            "</if>" +
            "</script>")
    long queryCount(@Param("borrowingmanagement") Borrowingmanagement borrowingmanagement);

    @Insert(" insert into p2p_borrowingmanagement(jksignid,productname,jkBorrowingtitle " +
            " ,loginname,jkAmount,Investmentamount,jkapr,jkdeadline,refundtype,biaoproperty," +
            " borrowingtype,accounttype,identifytype,scheme,awardlilv,paymenttype,valuedate,makeabargain,investguanli,overdue," +
            " raisefunds,maxamount,province,city,area,modeactivity,csorbs,describea)" +
            " value(uuid()," +
            " #{productname},#{jkBorrowingtitle},#{loginname},#{jkAmount},#{Investmentamount},#{jkapr}," +
            " #{jkdeadline},#{refundtype},#{biaoproperty},#{borrowingtype},#{accounttype},#{identifytype}," +
            " #{source},#{awardlilv},#{paymenttype},#{valuedate},#{makeabargain},#{investguanli},#{overdue}," +
            " #{raisefunds},#{maxamount},#{province},#{city},#{area},#{modeactivity},#{csorbs},#{describea} ) ")
    void addjiekuan(Borrowingmanagement borrowingmanagement);

    @Select(" select * from p2p_borrowingmanagement where jkid=#{jkid} ")
    Borrowingmanagement xiangqing(String jkid);

    @Update(" update p2p_borrowingmanagement set jkstatus = '已作废',disposetime=NOW() where jkid=#{jkid} ")
    void zuofei(String jkid);

    @Update(" update p2p_borrowingmanagement set jkstatus = '待发布' ,disposetime=NOW() where jkid=#{jkid} ")
    void tongguo(String jkid);

    @Update(" update p2p_borrowingmanagement set jkstatus = '申请中' ,disposetime=NOW() where jkid=#{jkid} ")
    void butongguo(String jkid);

    @Update(" update p2p_borrowingmanagement set jkstatus = '投资中' ,disposetime=NOW() where jkid=#{jkid} ")
    void fabu(String jkid);

    @Update(" update p2p_borrowingmanagement set jkstatus = '预发布' ,disposetime=NOW(),yufabutime=#{yufabutime} where jkid=#{jkid} ")
    void yufabu(@Param("yufabutime") String yufabutime, @Param("jkid") String jkid);

    @Update(" update p2p_borrowingmanagement set tuijian = 1 ,disposetime=NOW() where jkid=#{jkid} ")
    void tuijian(String jkid);
}
