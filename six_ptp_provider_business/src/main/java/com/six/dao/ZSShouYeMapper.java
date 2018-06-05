package com.six.dao;

import com.six.model.*;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ZSShouYeMapper {

    @Select("<script> select jkid,jkBorrowingtitle,jkapr,jkdeadline,jkAmount from p2p_borrowingmanagement ORDER BY disposetime limit 0,5 </script>")
    List<Borrowingmanagement> touziorjiekuan();

    @Select(" <script> select Borrowingtitle,zrapr,Restperiods,Amountbond,transferprice from p2p_debenturetransfer ORDER BY applyfortime " +
            "LIMIT 0,5 </script> ")
    List<Debenturetransfer> zhaiquanzhuanrang();

    @Select(" select sum(Investmentamount) Investmentamount,loginname from p2p_borrowingmanagement GROUP BY loginname ORDER BY Investmentamount DESC LIMIT 0,10 ")
    List<Borrowingmanagement> paihang();

    @Select(" select jkBorrowingtitle,jkapr,jkdeadline,jkAmount,jkid,yufabutime from p2p_borrowingmanagement where tuijian=1 LIMIT 0,2 ")
    List<Borrowingmanagement> tuijian();

    @Select(" select count(*) zongrenshu,SUM(Investmentamount) zongjine,truncate(sum(Investmentamount*jkapr/100),2) shouyi from p2p_borrowingmanagement ")
    ZSTongJi tongji();

    @Select(" select db.bondingcompanyname gongsiming,db.bondingcompanyid gongsiid,bw.jkAmount xmmoney,bw.jkapr apr,bw.jkdeadline tzqixian,bw.jkid xmid, \n" +
            "bw.disposetime faburiqi,bw.scheme danbaofangshi,bw.refundtype huankuanfangshi,bw.haixuzijin haixuzijin,bw.jkBorrowingtitle xmname \n" +
            "from p2p_bondingcompany db,p2p_borrowingmanagement bw WHERE bw.danbaogongsi=db.bondingcompanyid\n" +
            "and bw.jkid = #{xiangqing} ")
    ShouYeXiangQing xiangqing(String xiangqing);

    @Select(" select * from p2p_userinfo where id=#{userid} and dealpwd=#{mima}")
    UserInfo mimayanzheng(@Param("mima") String mima, @Param("userid") String userid);

    @Insert(" insert into p2p_dingdan(userid,ddtype,money,creationtime,submissiontime,finishtime,jiekuanid) " +
            "VALUES(#{userid},#{ddtype},#{money},NOW(),NOW(),NOW(),#{ordersource})")
    void shenqingtouzi(DingDanGuanLi ddgl);

    @Update(" update p2p_borrowingmanagement set haixuzijin=haixuzijin-#{jine} where jkid=#{jkid}")
    void updatajiekuan(@Param("jkid") String jkid, @Param("jine") String jine);


    @Update(" update p2p_userinfo set yue = yue-#{jine} where id=#{userid}")
    void gerenyue(@Param("userid") String userid, @Param("jine") String jine);
}
