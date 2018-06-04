package com.six.service;

import com.six.model.UserInfo;

import java.util.List;

/**
 * @author 周录军
 * @Title: ${file_name}
 * @Package ${package_name}
 * @Description: ${todo}
 * @date 2018/5/1916:08
 */
public interface ZljLoginService {

    List<UserInfo> getLoginUserMessge(String username, String userpwd);
}
