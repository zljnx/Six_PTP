package com.six.service;

import com.six.model.UserInfo;

/**
 * @author 周录军
 * @Title: ${file_name}
 * @Package ${package_name}
 * @Description: ${todo}
 * @date 2018/5/2519:15
 */
public interface RedisCache {

    public void CleanLoginCache();
    public int Savecache(UserInfo userInfos);
}
