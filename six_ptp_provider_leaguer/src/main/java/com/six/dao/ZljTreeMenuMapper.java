package com.six.dao;

import com.six.model.TreeMenu;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author 周录军
 * @Title: ${file_name}
 * @Package ${package_name}
 * @Description: ${todo}
 * @date 2018/5/2111:35
 */
@Mapper
public interface ZljTreeMenuMapper {
    @Select("SELECT * from p2p_userrelrole purr,p2p_userrole pur ,p2p_usermenu pum ,p2p_menurelrole pmr WHERE purr.roleid=pur.roleid\n" +
            "AND pmr.roleid =pur.roleid\n" +
            "AND pmr.menuid = pum.menuid\n" +
            " AND purr.userid =#{userid}\n" +
            "AND  pum.pid=#{pid}")
    public List<TreeMenu> getTreeMenu(@Param("userid") Integer id, @Param("pid") Integer pid) ;
}
