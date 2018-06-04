package com.six.service.impl;

import com.six.dao.ZSDebenturetransferMapper;
import com.six.model.Debenturetransfer;
import com.six.service.ZSDebenturetransferService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("debenturetransferService")
public class ZSDebenturetransferServiceImpl implements ZSDebenturetransferService{

    @Autowired
    private ZSDebenturetransferMapper debenturetransferDao;

    @Override
    public List<Debenturetransfer> queryDebenturetransferList(Debenturetransfer debenturetransfer, Integer start, Integer pageSize, Integer zrstatus) throws Exception {
        return debenturetransferDao.queryDebenturetransferList(debenturetransfer,(start-1)*pageSize,pageSize,zrstatus);
    }

    @Override
    public long queryCount(Debenturetransfer debenturetransfer, Integer zrstatus) throws Exception {
        return debenturetransferDao.queryCount(debenturetransfer,zrstatus);
    }

    @Override
    public void pldelDebenturetransfer(String ids) throws Exception {
        String[] arr=ids.split(",");
        for (int i = 0; i < arr.length; i++) {
            int parseInt = Integer.parseInt(arr[i]);
            debenturetransferDao.pldelDebenturetransfer(parseInt);
        }
    }

    @Override
    public void plxiajiaDebenturetransfer(String ids) throws Exception {
        String[] arr=ids.split(",");
        for (int i = 0; i < arr.length; i++) {
            int parseInt = Integer.parseInt(arr[i]);
            debenturetransferDao.plxiajiaDebenturetransfer(parseInt);
        }
    }

    @Override
    public void delDebenturetransfer(String zrid, Integer zrstatus) throws Exception {
        if(zrstatus==0){
            debenturetransferDao.fabu(zrid);
        }
        if(zrstatus==1){
            debenturetransferDao.xiajia(zrid);
        }
    }
}
