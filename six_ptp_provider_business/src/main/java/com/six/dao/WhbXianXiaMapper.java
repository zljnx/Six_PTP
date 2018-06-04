package com.six.dao;

import com.six.model.WhbUnderline;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by Administrator on 2018/5/19.
 */
@Mapper
public interface WhbXianXiaMapper {
    @Select("<script> select * from p2p_underline un where  1=1 " +
            "<if test='whbUnderline.x_Loan != null '>" +
            "  and un.x_Loan = #{whbUnderline.x_Loan} " +
            "</if>" +
            "<if test='whbUnderline.x_mode != null '>" +
            "  and un.x_mode = #{whbUnderline.x_mode} " +
            "</if>" +
            "<if test='whbUnderline.x_collectingtime != null '>" +
            "  and un.x_collectingtime &gt;= #{whbUnderline.x_collectingtime} " +
            "</if>" +
            "<if test='whbUnderline.x_collectingtime != null '>" +
            "  and un.x_collectingtime &lt;= #{whbUnderline.x_collectingtime} " +
            "</if>" +
            "limit #{start},#{pageSize}"+
            "</script>")
    List<WhbUnderline> selectUnderline(@Param("whbUnderline") WhbUnderline whbUnderline, @Param("start") Integer start, @Param("pageSize") Integer pageSize);



    @Select("<script> select count(*) from p2p_underline un where  1=1 " +
            "<if test='whbUnderline.x_Loan != null '>" +
            "  and un.x_Loan = #{whbUnderline.x_Loan} " +
            "</if>" +
            "<if test='whbUnderline.x_mode != null '>" +
            "  and un.x_mode = #{whbUnderline.x_mode} " +
            "</if>" +
            "<if test='whbUnderline.x_collectingtime != null '>" +
            "  and un.x_collectingtime &gt;= #{whbUnderline.x_collectingtime} " +
            "</if>" +
            "<if test='whbUnderline.x_collectingtime != null '>" +
            "  and un.x_collectingtime &lt;= #{whbUnderline.x_collectingtime} " +
            "</if>" +
            "</script>")
    long selectUnderlineCount(@Param("whbUnderline") WhbUnderline whbUnderline);

    @Insert("insert into p2p_underline (x_username,x_name,x_Loan,x_mode,x_collector,x_collectingtime,x_resultssummary,x_remarks) " +
            "values (#{x_username},#{x_name},#{x_Loan},#{x_mode},#{x_collector},#{x_collectingtime},#{x_resultssummary},#{x_remarks})")
    void addXianXia(WhbUnderline whbUnderline);


    @Select("select * from p2p_underline u where u.x_id = #{id}")
    WhbUnderline selectXianXia(Integer id);
}
