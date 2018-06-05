package com.six.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface ZSHouTaiTongJiMapper {

    @Select(" select count(*) from p2p_borrowingmanagement where jkstatus='待审核' ")
    String dshjkxm();

    @Select(" select count(*) from p2p_personalloanintention where grjktype=1 and grjkstatus=1 ")
    String dclgrjkyx();

    @Select(" select count(*) from p2p_borrowingmanagement where jkstatus='待发布' ")
    String dfbjkxm();

    @Select(" select count(*) from p2p_borrowingmanagement where jkstatus='待放款' ")
    String dfkjkxm();

    @Select(" select count(*) from p2p_personalloanintention where grjktype=2 and grjkstatus=1 ")
    String dclqyjkyx();
}
