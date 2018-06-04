package com.six.dao;

import com.six.model.WhbBad;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by Administrator on 2018/5/24.
 */
@Mapper
public interface WhbBadMapper {

    @Select("<script> select b.*,d.transferprice,d.Amountbond from p2p_bad b,p2p_debenturetransfer d where b.zrid = d.zrid and 1=1 " +
            "<if test='whbBad.b_transferee != null '>" +
            "  and b.b_transferee like '%${whbBad.b_transferee}%'" +
            "</if>" +
            "<if test='whbBad.b_date != null '>" +
            "  and b.e_date &gt;= #{whbBad.b_date} " +
            "</if>" +
            "<if test='whbBad.b_date != null '>" +
            "  and b.e_date &lt;= #{whbBad.b_date} " +
            "</if>" +
            "limit #{start},#{pageSize}"+
            "</script>")
    List<WhbBad> selectBad(@Param("whbBad") WhbBad whbBad, @Param("start") Integer start, @Param("pageSize") Integer pageSize);
    @Select("<script> select count(*) from p2p_bad b,p2p_debenturetransfer d where b.zrid = d.zrid and 1=1 " +
            "<if test='whbBad.b_transferee != null '>" +
            "  and b.b_transferee like '%${whbBad.b_transferee}%'" +
            "</if>" +
            "<if test='whbBad.b_date != null '>" +
            "  and b.e_date &gt;= #{whbBad.b_date} " +
            "</if>" +
            "<if test='whbBad.b_date != null '>" +
            "  and b.e_date &lt;= #{whbBad.b_date} " +
            "</if>" +
            "</script>")
    long selectAdvanceCount(@Param("whbBad") WhbBad whbBad);
}
