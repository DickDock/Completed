package com.ls.completed.kafka;

import cn.hutool.core.codec.Base64;
import cn.hutool.json.JSONObject;
import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.kafka.support.Acknowledgment;
import org.springframework.stereotype.Component;

@Component
public class KafkaConsumer {
    @KafkaListener(topics = {"netLog"})
    public void topic_test1(ConsumerRecord<?, ?> record, Acknowledgment ack) {
        String recordData = Base64.decodeStr(record.value().toString());
        System.out.println("kafka数据：" + recordData);
        try {
            JSONObject capData = new JSONObject(recordData);
            System.out.println("Json解析数据：" + capData);
            ack.acknowledge();
        } catch (Exception e) {
            ack.acknowledge();
            System.out.println("处理掉解析失败数据");
        }
    }
}