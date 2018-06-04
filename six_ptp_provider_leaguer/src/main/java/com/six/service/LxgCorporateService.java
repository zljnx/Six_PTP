package com.six.service;

import com.six.model.LxgInstitution;
import com.six.model.LxgInstitutionCombination;
import com.six.model.UserInfo;
import org.apache.zookeeper.Login;

import java.util.List;

/**
 * @author 吕旭刚
 * @Title: ${file_name}
 * @Package com.six.service
 * @Description: 描述.....
 * @create 2018-05-21 17:25
 */
public interface LxgCorporateService {
    //分页查询
    List<LxgInstitutionCombination> queryCorporate(Integer start, Integer limit);

    long queryCount();
    //查看
    LxgInstitutionCombination queryCorporateView(LxgInstitutionCombination lxgInstitutionCombination);

    //登录
    int LxgLogin(String loginname, String userpwd);

    List<UserInfo> queryLogin(String loginname, String userpwd);
   //注册

    String saveuserinfo(UserInfo userInfo);
}
