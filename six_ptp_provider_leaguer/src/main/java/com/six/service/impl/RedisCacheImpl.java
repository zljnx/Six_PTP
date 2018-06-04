package com.six.service.impl;


import com.alibaba.dubbo.config.annotation.Service;
import com.six.model.UserInfo;
import com.six.service.RedisCache;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.Set;

/**
 * @author 周录军
 * @Title: ${file_name}
 * @Package ${package_name}
 * @Description: ${todo}
 * @date 2018/5/2519:16
 */
@Component
@Service(interfaceClass = RedisCache.class)
public class RedisCacheImpl  implements RedisCache {
    @Autowired
    private StringRedisTemplate stringRedisTemplate;

     //每天凌晨12点执行
    @Override
    @Scheduled(cron="0 0 0 * * ?") //每天凌晨12点执行
    public void CleanLoginCache() {
     //redis删除key

        Set<String> keys = stringRedisTemplate.keys("loginkey*");
        if(!keys.isEmpty()) {
            stringRedisTemplate.delete(keys);
        }
    }

    @Override
    public int Savecache(UserInfo userInfos) {

        //模糊查询redis
        boolean hasKey = stringRedisTemplate.hasKey("loginkey"+userInfos.getLoginname());
        if(!hasKey)
        {
            stringRedisTemplate.opsForValue().set("loginkey"+userInfos.getLoginname(),userInfos.getLoginname()+userInfos.getId());
        }
        Set<String> keys = stringRedisTemplate.keys("loginkey*");

        return keys.size();
    }
}
