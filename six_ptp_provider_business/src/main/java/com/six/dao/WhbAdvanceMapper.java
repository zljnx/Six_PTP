package com.six.dao;

import com.six.model.WhbAdvance;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by Administrator on 2018/5/24.
 */
@Mapper
public interface WhbAdvanceMapper {

    @Select("<script> select a.*,b.loginname from p2p_advance a,p2p_borrowingmanagement b where a.jkid = b.jkid and 1=1 " +
            "<if test='whbAdvance.loginname != null '>" +
            "  and b.loginname like '%${whbAdvance.loginname}%'" +
            "</if>" +
            "<if test='whbAdvance.a_date != null '>" +
            "  and a.a_date &gt;= #{whbAdvance.a_date} " +
            "</if>" +
            "<if test='whbAdvance.a_date != null '>" +
            "  and a.a_date &lt;= #{whbAdvance.a_date} " +
            "</if>" +
            "limit #{start},#{pageSize}"+
            "</script>")
    List<WhbAdvance> selectAdvance(@Param("whbAdvance") WhbAdvance whbAdvance, @Param("start") Integer start, @Param("pageSize") Integer pageSize);


    @Select("<script> select count(*) from p2p_advance a,p2p_borrowingmanagement b where a.jkid = b.jkid and 1=1 " +
            "<if test='whbAdvance.loginname != null '>" +
            "  and b.loginname like '%${whbAdvance.loginname}%'" +
            "</if>" +
            "<if test='whbAdvance.a_date != null '>" +
            "  and a.a_date &gt;= #{whbAdvance.a_date} " +
            "</if>" +
            "<if test='whbAdvance.a_date != null '>" +
            "  and a.a_date &lt;= #{whbAdvance.a_date} " +
            "</if>" +
            "</script>")
    long selectAdvanceCount(@Param("whbAdvance") WhbAdvance whbAdvance);
}
