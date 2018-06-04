package com.six.dao;

import com.six.model.WhbOnlinecollection;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by Administrator on 2018/5/19.
 */
@Mapper
public interface WhbXianShangMapper {
    @Select("<script> select * from p2p_onlinecollection u where  1=1 " +
            "<if test='whbOnlinecollection.s_borrower != null '>" +
            "  and u.s_borrower = #{whbOnlinecollection.s_borrower} " +
            "</if>" +
            "<if test='whbOnlinecollection.s_collectionmethod != null '>" +
            "  and u.s_collectionmethod = #{whbOnlinecollection.s_collectionmethod} " +
            "</if>" +
            "<if test='whbOnlinecollection.s_collectingtime != null '>" +
            "  and u.s_collectingtime &gt;= #{whbOnlinecollection.s_collectingtime} " +
            "</if>" +
            "<if test='whbOnlinecollection.s_collectingtime != null '>" +
            "  and u.s_collectingtime &lt;= #{whbOnlinecollection.s_collectingtime} " +
            "</if>" +
            "limit #{start},#{pageSize}"+
            "</script>")
    List<WhbOnlinecollection> selectUnderline1(@Param("whbOnlinecollection") WhbOnlinecollection whbOnlinecollection, @Param("start") Integer start, @Param("pageSize") Integer pageSize);



    @Select("<script> select count(*) from p2p_onlinecollection u where  1=1 " +
            "<if test='whbOnlinecollection.s_borrower != null '>" +
            "  and u.s_borrower = #{whbOnlinecollection.s_borrower} " +
            "</if>" +
            "<if test='whbOnlinecollection.s_collectionmethod != null '>" +
            "  and u.s_collectionmethod = #{whbOnlinecollection.s_collectionmethod} " +
            "</if>" +
            "<if test='whbOnlinecollection.s_collectingtime != null '>" +
            "  and u.s_collectingtime &gt;= #{whbOnlinecollection.s_collectingtime} " +
            "</if>" +
            "<if test='whbOnlinecollection.s_collectingtime != null '>" +
            "  and u.s_collectingtime &lt;= #{whbOnlinecollection.s_collectingtime} " +
            "</if>" +
            "</script>")
    long selectUnderlineCount1(@Param("whbOnlinecollection") WhbOnlinecollection whbOnlinecollection);

    @Insert("insert into p2p_onlinecollection (s_collectionmethod,s_title,s_content) " +
            "values (#{s_collectionmethod},#{s_title},#{s_content})")
    void addXianShang(WhbOnlinecollection whbOnlinecollection);

    @Select("select * from p2p_onlinecollection u where u.s_id = #{id}")
    WhbOnlinecollection selectXianXia1(Integer id);
}
