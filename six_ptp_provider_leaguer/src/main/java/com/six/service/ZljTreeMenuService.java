package com.six.service;

import com.six.model.TreeMenu;
import com.six.model.UserInfo;

import java.util.List;

/**
 * @author 周录军
 * @Title: ${file_name}
 * @Package ${package_name}
 * @Description: ${todo}
 * @date 2018/5/2111:15
 */
public interface ZljTreeMenuService {
    /**
     * 查询树形菜单
     * @param userInfos
     * @return
     */
    List<TreeMenu> getTreeMenu(UserInfo userInfos);
}
