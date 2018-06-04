package com.six.dao;

import com.six.model.UserInfo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author 周录军
 * @Title: ${file_name}
 * @Package ${package_name}
 * @Description: ${todo}
 * @date 2018/5/1916:15
 */
@Mapper
public interface ZljLoginMapper {
    @Select("SELECT * FROM p2p_userinfo where loginname =#{loginname}  AND  userpwd = #{userpwd} ")
    List<UserInfo> getLoginUserMessge(@Param("loginname") String loginname, @Param("userpwd") String userpwd);
}
