package com.six.dao;

import com.six.model.Personalloanintention;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

/**
 * Created by Administrator on 2018/5/29.
 */
@Mapper
public interface WhbAreaMapper {
    @Insert("insert into p2p_personalloanintention (username,userphone,grAmount,grdeadline,grjktype,grFundraisingdeadline,grjkdescribe) " +
            "values (#{username},#{userphone},#{grAmount},#{grdeadline},#{grjktype},#{grFundraisingdeadline},#{grjkdescribe})")
    void addGeRenArea(Personalloanintention personalloanintention);

    @Insert("insert into p2p_personalloanintention (firmname,registrationnumber,username,userphone,grAmount,grdeadline,grjktype,grFundraisingdeadline,grjkdescribe) " +
            "values (#{firmname},#{registrationnumber},#{username},#{userphone},#{grAmount},#{grdeadline},#{grjktype},#{grFundraisingdeadline},#{grjkdescribe})")
    void addQiYeArea(Personalloanintention personalloanintention);
}
