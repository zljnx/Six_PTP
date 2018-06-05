package com.six.dao;

import com.six.model.ZSJieKuanTongji;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ZSEchartsMapper {

    @Select("  select sum(jkAmount) zongjine,loginname from p2p_borrowingmanagement GROUP BY loginname  ")
    List<ZSJieKuanTongji> jiekuantongji();
}
