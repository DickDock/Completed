package com.ls.completed.kafka;

import cn.hutool.core.util.EscapeUtil;
import cn.hutool.core.util.HexUtil;
import cn.hutool.json.JSONObject;
import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.kafka.support.Acknowledgment;
import org.springframework.stereotype.Component;

@Component
public class KafkaConsumer {
    @KafkaListener(topics = {"netLog"})
    public void topic_test1(ConsumerRecord<?, ?> record, Acknowledgment ack) {
        String recordData = EscapeUtil.safeUnescape(record.value().toString()).replaceAll("//", "////");
        System.out.println("kafka数据：" + recordData);
        try {
            JSONObject capData = new JSONObject(recordData.substring(1, recordData.length() - 1));
            System.out.println(capData);
            System.out.println(capData.get("type"));
            ack.acknowledge();
        } catch (Exception e) {
            e.printStackTrace();
            System.exit(0);
//            ack.acknowledge();
        }
//        ack.acknowledge();
    }
}