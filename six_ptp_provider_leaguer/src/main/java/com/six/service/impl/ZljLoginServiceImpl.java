package com.six.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.six.dao.ZljLoginMapper;
import com.six.model.UserInfo;
import com.six.service.ZljLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import java.util.List;

/**
 * @author 周录军
 * @Title: ${file_name}
 * @Package ${package_name}
 * @Description: ${todo}
 * @date 2018/5/1916:13
 */
@Service(interfaceClass = ZljLoginService.class)
@Component
public class ZljLoginServiceImpl  implements ZljLoginService
{
    @Autowired
    private ZljLoginMapper zljLoginMapper;

    @Override
    public List<UserInfo> getLoginUserMessge(String username, String userpwd) {

        return zljLoginMapper.getLoginUserMessge(username,userpwd);
    }
}
