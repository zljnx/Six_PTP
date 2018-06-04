package com.six.RubbitMq;


import com.six.model.UserInfo;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.messaging.MessagingException;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.stereotype.Component;

import java.io.UnsupportedEncodingException;
import java.util.List;

import static com.six.common.EmailUtil.sendHtmlMail;


@Component

public class FanoutReceiverB {


    @RabbitListener(queues = "fanout.B", containerFactory="rabbitListenerContainerFactory")
    @RabbitHandler
    public void process(@Payload List<UserInfo> list) throws Exception {

        String email = list.get(0).getEamil();
        String companyname = list.get(0).getCompanyname();
        sendHtmlMail(email,"注册信息",companyname+"您好");
        System.out.println("fanout Receiver B: " + email);
    }

}
