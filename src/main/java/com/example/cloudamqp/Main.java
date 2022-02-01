package com.example.cloudamqp;

import com.rabbitmq.client.Channel;
import com.rabbitmq.client.Connection;
import com.rabbitmq.client.ConnectionFactory;

public class Main {

    public static void main(String[] args) throws Exception {
            String uri = System.getenv("CLOUDAMQP_URL");
            if (uri == null) uri = "amqp://guest:guest@localhost";

            ConnectionFactory factory = new ConnectionFactory();
            factory.setUri(uri);

            //Recommended settings
            factory.setConnectionTimeout(30000);

            Connection connection = factory.newConnection();
            Channel channel = connection.createChannel();

    }
}
