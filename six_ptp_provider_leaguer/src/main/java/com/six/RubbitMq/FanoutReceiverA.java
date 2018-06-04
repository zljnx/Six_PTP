package com.six.RubbitMq;


import com.six.model.UserInfo;
import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.List;

import static com.six.common.HttpClient.togetString;


@Component

public class FanoutReceiverA {
    @RabbitListener(queues = "fanout.A", containerFactory="rabbitListenerContainerFactory")
    @RabbitHandler
    public void process( UserInfo list) throws IOException {

        String userphone = list.getUserphone();

        togetString(userphone);


        System.out.println("fanout Receiver A  : " + userphone );
    }

}
