package com.six.dao;

import com.six.mapper.ZSConditionQuery;
import com.six.model.DebtManagement;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;


import java.util.List;

@Mapper
public interface ZSDebtmanagemenMapper {

    /*@SelectProvider(type = ZSConditionQuery.class, method = "DebtManagementlist")*/
    @Select("<script> select * from p2p_DebtManagement where p2p_DebtManagement.zqstatus=#{zqstatus} " +
            "<if test='debtManagement.investor != null '>" +
            "  and p2p_DebtManagement.investor = #{debtManagement.investor} " +
            "</if>" +
            "<if test='debtManagement.Borrowingtitle != null '>" +
            "  and p2p_DebtManagement.Borrowingtitle = #{debtManagement.Borrowingtitle} " +
            "</if>" +
            "<if test='debtManagement.investtime != null '>" +
            "  and p2p_DebtManagement.investtime &gt;= #{debtManagement.investtime} " +
            "</if>" +
            "<if test='debtManagement.settletime != null '>" +
            "  and p2p_DebtManagement.investtime &lt;= #{debtManagement.settletime} " +
            "</if>" +
            "<if test='debtManagement.investortype != null '>" +
            "  and p2p_DebtManagement.investortype = #{debtManagement.investortype} " +
            "</if>" +
           /* "<if test='debtManagement.investtime != null '>" +
            "  and p2p_DebtManagement.settletime &gt;= #{debtManagement.investtime} " +
            "</if>" +
            "<if test='debtManagement.settletime != null '>" +
            "  and p2p_DebtManagement.settletime &lt;= #{debtManagement.settletime} " +
            "</if>" +*/
            "<if test='debtManagement.sellerstype != null '>" +
            "  and p2p_DebtManagement.sellerstype = #{debtManagement.sellerstype} " +
            "</if>" +
            "<if test='debtManagement.buyerstype != null '>" +
            "  and p2p_DebtManagement.buyerstype = #{debtManagement.buyerstype} " +
            "</if>" +
            "<if test='debtManagement.zqid != null '>" +
            "  and p2p_DebtManagement.zqid = #{debtManagement.zqid} " +
            "</if>" +
            "limit #{start},#{pageSize}"+
            "</script>")
    List<DebtManagement> queryDebtmanagementList(@Param("debtManagement") DebtManagement debtManagement, @Param("start") Integer start, @Param("pageSize") Integer pageSize, @Param("zqstatus") Integer zqstatus);

    @Select("<script> select count(*) from p2p_DebtManagement where p2p_DebtManagement.zqstatus=#{zqstatus}" +
            "<if test='debtManagement.investor != null '>" +
            "  and p2p_DebtManagement.investor = #{debtManagement.investor} " +
            "</if>" +
            "<if test='debtManagement.Borrowingtitle != null '>" +
            "  and p2p_DebtManagement.Borrowingtitle = #{debtManagement.Borrowingtitle} " +
            "</if>" +
            "<if test='debtManagement.investtime != null '>" +
            "  and p2p_DebtManagement.investtime &gt;= #{debtManagement.investtime} " +
            "</if>" +
            "<if test='debtManagement.settletime != null '>" +
            "  and p2p_DebtManagement.investtime &lt;= #{debtManagement.settletime} " +
            "</if>" +
            "<if test='debtManagement.investortype != null '>" +
            "  and p2p_DebtManagement.investortype = #{debtManagement.investortype} " +
            "</if>" +
            "<if test='debtManagement.sellerstype != null '>" +
            "  and p2p_DebtManagement.sellerstype = #{debtManagement.sellerstype} " +
            "</if>" +
            "<if test='debtManagement.buyerstype != null '>" +
            "  and p2p_DebtManagement.buyerstype = #{debtManagement.buyerstype} " +
            "</if>" +
            "<if test='debtManagement.zqid != null '>" +
            "  and p2p_DebtManagement.zqid = #{debtManagement.zqid} " +
            "</if>" +
            "</script>")
  /*  @SelectProvider(type = ZSConditionQuery.class, method = "queryzongtiaoshu")*/
    long queryCount(@Param("debtManagement") DebtManagement debtManagement, @Param("zqstatus") Integer zqstatus);

    @Select("<script> select * from p2p_DebtManagement where p2p_DebtManagement.zqstatus=#{zqstatus} " +
            "<if test='debtManagement.investor != null '>" +
            "  and p2p_DebtManagement.investor = #{debtManagement.investor} " +
            "</if>" +
            "<if test='debtManagement.Borrowingtitle != null '>" +
            "  and p2p_DebtManagement.Borrowingtitle = #{debtManagement.Borrowingtitle} " +
            "</if>" +
            "<if test='debtManagement.investortype != null '>" +
            "  and p2p_DebtManagement.investortype = #{debtManagement.investortype} " +
            "</if>" +
            "<if test='debtManagement.investtime != null '>" +
            "  and p2p_DebtManagement.settletime &gt;= #{debtManagement.investtime} " +
            "</if>" +
            "<if test='debtManagement.settletime != null '>" +
            "  and p2p_DebtManagement.settletime &lt;= #{debtManagement.settletime} " +
            "</if>" +
            "<if test='debtManagement.zqid != null '>" +
            "  and p2p_DebtManagement.zqid = #{debtManagement.zqid} " +
            "</if>" +
            "limit #{start},#{pageSize}"+
            "</script>")
    List<DebtManagement> queryDebtmanagementList1(@Param("debtManagement") DebtManagement debtManagement, @Param("start") Integer start, @Param("pageSize") Integer pageSize, @Param("zqstatus") Integer zqstatus);

    @Select("<script> select count(*) from p2p_DebtManagement where p2p_DebtManagement.zqstatus=#{zqstatus}" +
            "<if test='debtManagement.investor != null '>" +
            "  and p2p_DebtManagement.investor = #{debtManagement.investor} " +
            "</if>" +
            "<if test='debtManagement.Borrowingtitle != null '>" +
            "  and p2p_DebtManagement.Borrowingtitle = #{debtManagement.Borrowingtitle} " +
            "</if>" +
            "<if test='debtManagement.investtime != null '>" +
            "  and p2p_DebtManagement.settletime &gt;= #{debtManagement.investtime} " +
            "</if>" +
            "<if test='debtManagement.settletime != null '>" +
            "  and p2p_DebtManagement.settletime &lt;= #{debtManagement.settletime} " +
            "</if>" +
            "<if test='debtManagement.investortype != null '>" +
            "  and p2p_DebtManagement.investortype = #{debtManagement.investortype} " +
            "</if>" +
            "<if test='debtManagement.zqid != null '>" +
            "  and p2p_DebtManagement.zqid = #{debtManagement.zqid} " +
            "</if>" +
            "</script>")
  /*  @SelectProvider(type = ZSConditionQuery.class, method = "queryzongtiaoshu")*/
    long queryCount1(@Param("debtManagement") DebtManagement debtManagement, @Param("zqstatus") Integer zqstatus);
}
