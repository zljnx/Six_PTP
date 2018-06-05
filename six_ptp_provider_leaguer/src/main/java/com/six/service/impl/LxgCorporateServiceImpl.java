package com.six.service.impl;


import com.six.dao.LxgCorporateDao;
import com.six.model.LxgInstitution;
import com.six.model.LxgInstitutionCombination;
import com.six.model.UserInfo;
import com.six.service.LxgCorporateService;
import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * @author 吕旭刚
 * @Title: ${file_name}
 * @Package com.six.service.impl
 * @Description: 描述.....
 * @create 2018-05-21 17:26
 */
@Service("LxgCorporateService")
public class LxgCorporateServiceImpl implements LxgCorporateService {
    @Autowired
    private LxgCorporateDao lxgCorporateDao;
    @Autowired
    private AmqpTemplate rabbitTemplate;



//分页查询
    @Override
    public List<LxgInstitutionCombination> queryCorporate(Integer start, Integer pageSize) {

        return lxgCorporateDao.queryCorporate((start-1)*pageSize,pageSize);
    }

    @Override
    public long queryCount() {

        return lxgCorporateDao.queryCount();
    }
    //查看
    @Override
    public LxgInstitutionCombination queryCorporateView(LxgInstitutionCombination lxgInstitutionCombination) {

        return lxgCorporateDao.queryCorporateView(lxgInstitutionCombination);
    }
    //登录
    @Override
    public int LxgLogin(String loginname, String userpwd) {

        return lxgCorporateDao.LxgLogin(loginname,userpwd);
    }

    @Override
    public List<UserInfo> queryLogin(String loginname, String userpwd) {

        return lxgCorporateDao.queryLogin(loginname,userpwd);
    }
    //注册
    @Override
    public String saveuserinfo(UserInfo userInfo) throws Exception{
        String loginname = userInfo.getLoginname();
       String  userpwd = userInfo.getUserpwd();

        int count = lxgCorporateDao.LxgLogin(loginname,userpwd);
        if(count < 1){
            Date date = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date time = sdf.parse(date.toLocaleString());
            userInfo.setSendtime(time);

            lxgCorporateDao.saveuserinfo(userInfo);

            this.rabbitTemplate.convertAndSend("fanoutExchange","",userInfo);
            return "Yes";
        }
        return "nameNo";

    }




}
