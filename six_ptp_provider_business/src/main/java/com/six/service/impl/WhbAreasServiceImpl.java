package com.six.service.impl;

import com.six.dao.WhbAreaMapper;
import com.six.model.Personalloanintention;
import com.six.service.WhbAreasService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


/**
 * Created by Administrator on 2018/5/29.
 */
@Service("whbAreasService")
public class WhbAreasServiceImpl implements WhbAreasService {

    @Autowired
    private WhbAreaMapper whbAreaMapper;


    @Override
    public void addGeRenArea(Personalloanintention personalloanintention) {
        whbAreaMapper.addGeRenArea(personalloanintention);
    }

    @Override
    public void addQiYeArea(Personalloanintention personalloanintention) {
        whbAreaMapper.addQiYeArea(personalloanintention);
    }
}
