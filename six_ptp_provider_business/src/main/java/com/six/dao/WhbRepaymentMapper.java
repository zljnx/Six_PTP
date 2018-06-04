package com.six.dao;

import com.six.model.WhbRepayment;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by Administrator on 2018/5/17.
 */
@Mapper
public interface WhbRepaymentMapper {


    @Select("<script> select * from p2p_repayment re where re.c_repayment = 1 and 1=1 " +
            "<if test='whbRepayment.c_loginname != null '>" +
            "  and re.c_loginname = #{whbRepayment.c_loginname} " +
            "</if>" +
            "<if test='whbRepayment.c_title != null '>" +
            "  and re.c_title = #{whbRepayment.c_title} " +
            "</if>" +

            "<if test='whbRepayment.c_daytime != null '>" +
            "  and re.c_daytime &gt;= #{whbRepayment.c_daytime} " +
            "</if>" +
            "<if test='whbRepayment.c_daytime != null '>" +
            "  and re.c_daytime &lt;= #{whbRepayment.c_daytime} " +
            "</if>" +
            "limit #{start},#{pageSize}"+
            "</script>")
    List<WhbRepayment> selectRepayment(@Param("whbRepayment") WhbRepayment whbRepayment, @Param("start") Integer start, @Param("pageSize") Integer pageSize);

    @Select("<script> select count(*) from p2p_repayment re where re.c_repayment = 1 and 1=1 " +
            "<if test='whbRepayment.c_loginname != null '>" +
            "  and re.c_loginname = #{whbRepayment.c_loginname} " +
            "</if>" +
            "<if test='whbRepayment.c_title != null '>" +
            "  and re.c_title = #{whbRepayment.c_title} " +
            "</if>" +

            "<if test='whbRepayment.c_daytime != null '>" +
            "  and re.c_daytime &gt;= #{whbRepayment.c_daytime} " +
            "</if>" +
            "<if test='whbRepayment.c_daytime != null '>" +
            "  and re.c_daytime &lt;= #{whbRepayment.c_daytime} " +
            "</if>" +
            "</script>")
    long selectRepaymentCount(@Param("whbRepayment") WhbRepayment whbRepayment);

    @Select("select sum(re.c_jiemoney) from p2p_repayment re where re.c_repayment=1")
    Double queryAllMoney();

    @Select("select sum(re.c_huanmoney) from p2p_repayment re where re.c_repayment=1")
    Double queryAllMoney1();

    @Select("select sum(re.c_shengmoney) from p2p_repayment re where re.c_repayment=1")
    Double queryAllMoney2();
}
