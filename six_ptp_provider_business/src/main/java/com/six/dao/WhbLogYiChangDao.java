package com.six.dao;

import com.six.model.WhbRepayment1;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by Administrator on 2018/6/1.
 */
@Mapper
public interface WhbLogYiChangDao {
    @Select("select u.c_huanmoney,u.c_shengmoney from p2p_repayment u where u.c_id=1 ")
    List<WhbRepayment1> selectHuan();
}
