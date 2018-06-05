package com.six.service.impl;


import com.alibaba.dubbo.config.annotation.Service;
import com.six.dao.ZljTreeMenuMapper;
import com.six.model.TreeMenu;
import com.six.model.UserInfo;
import com.six.service.ZljTreeMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Optional;

/**
 * @author 周录军
 * @Title: ${file_name}
 * @Package ${package_name}
 * @Description: ${todo}
 * @date 2018/5/2111:27
 */
@Service(interfaceClass =ZljTreeMenuService.class )
@Component
public class ZljTreeMenuServiceImpl  implements ZljTreeMenuService {
    @Autowired
    private ZljTreeMenuMapper zljTreeMenuMapper;

   /* @Autowired
    private ArticleSearchRepository articleSearchRepository;
*/
    @Override
    public List<TreeMenu> getTreeMenu(UserInfo userInfos) {
       List<TreeMenu> treeMenus= zljTreeMenuMapper.getTreeMenu(Integer.valueOf(userInfos.getId()),0);
       ChildrenMenu( treeMenus);

      /*  articleSearchRepository.saveAll(treeMenus);
     Optional<TreeMenu> list =articleSearchRepository.findById((long) 1);*/
        return treeMenus;
    }
    private void ChildrenMenu( List<TreeMenu> firstlist) {
        for (TreeMenu menu : firstlist) {
            List<TreeMenu> childrenMenuList = zljTreeMenuMapper.getTreeMenu(menu.getUserid(), menu.getMenuid());

            if (childrenMenuList.size() > 0) {
                menu.setChildren(childrenMenuList);

                ChildrenMenu(childrenMenuList);
            }
        }
    }


}
