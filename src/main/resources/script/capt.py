# -*- coding: utf-8 -*-
#
# Copyright (C) 2021 #
# @Time    : 2022/2/23 15:37
# @Author  : LS
# @Email   : 1948275556@qq.com
# @File    : 成品.py
# @Software: PyCharm
import base64
import json

from kafka import KafkaProducer
from kafka.errors import kafka_errors
from scapy.all import *
from scapy.layers.dns import DNSQR
from scapy.layers.http import HTTPRequest, HTTPResponse
from scapy.layers.inet import IP, Ether
from scapy.layers.tls.record import TLS

load_layer("http")
load_layer("tls")


class CAPTURE:
    def __init__(self):
        self.data = None

        # 假设生产的消息为键值对（不是一定要键值对），且序列化方式为json
        self.producer = KafkaProducer(
            bootstrap_servers=['localhost:9092'],
            # key_serializer=lambda k: json.dumps(k).encode('utf-8'),
            # value_serializer=lambda v: json.dumps(v).encode('utf-8')
        )

    def main(self):
        # filterStr = "tcp and (port 80 or port 443)"
        # filterStr2 = "tcp and (port 443)"
        # filterStr3 = "tcp and (port 80)"
        filterStr = ""
        sniff(filter=filterStr, prn=self.doCallback, count=0, store=0, session=TCPSession)

    def testDoCallback(self, packet):
        if packet.haslayer("ARP"):
            print(packet.summary())
            arpLayer = packet.getlayer("ARP")
            print(arpLayer.psrc, arpLayer.op, arpLayer.pdst)
        if packet.haslayer("IP") or packet.haslayer("IPv6"):
            pass

    def doCallback(self, packet):
        # 预定义变量
        self.data = {}
        # self.data['type'] = packet.payload.name
        if packet[Ether].type == 2048:
            typePac = 'IPv4'
        elif packet[Ether].type == 34525:
            typePac = 'UDP'
        else:
            typePac = packet[Ether].type
        self.data['type'] = typePac

        # 判断数据包类型调用不同的解析函数
        if packet.haslayer("Ether"):
            self.ethLayerParser(packet)
            if packet.haslayer("ARP"):
                self.arpLayerParsers(packet)

        if packet.haslayer("IP") or packet.haslayer("IPv6"):
            self.ipLayerParser(packet)
            if packet.haslayer("TCP"):
                self.tcpLayerParser(packet)
            elif packet.haslayer("UDP"):
                self.udpLayerParser(packet)
            elif packet.haslayer("ICMP"):
                self.udpLayerParser(packet)

        self.data = self.recursiveByte(self.data)
        self.data = json.dumps(self.data).encode()
        # print(json.dumps(self.data))
        # print(self.data)
        self.producerD(base64.encodebytes(self.data))

    # 数据链路层解析
    def ethLayerParser(self, packet):
        ethLayer = packet.getlayer('Ether')
        self.data['ether'] = {
            'src': ethLayer.src,
            'dst': ethLayer.dst,
            'type': str(ethLayer.type)
        }

    # IP层解析
    def ipLayerParser(self, packet):
        if packet.haslayer("IP"):
            ipLayer = packet.getlayer('IP')
        else:
            ipLayer = packet.getlayer('IPv6')
        self.data['time'] = ipLayer.time
        self.data['ip'] = {
            'src': ipLayer.src,
            'dst': ipLayer.dst,
            'version': str(ipLayer.version)
        }

    # TCP层解析
    def tcpLayerParser(self, packet):
        flag = False

        tcpLayer = packet.getlayer('TCP')
        self.data['tcp'] = {
            'seq': tcpLayer.seq,
            'ack': tcpLayer.ack,
        }
        if packet.haslayer(TLS):
            try:
                tmpData = packet['TLS']['TLS Handshake - Client Hello']['TLS Extension - Server Name'].fields[
                    'servernames'][0].fields['servername']

                self.data['tls'] = {
                    'serverNames': bytes.decode(tmpData) if isinstance(tmpData, bytes) else tmpData
                }
            except:
                pass
        else:
            if packet.haslayer(HTTPRequest):
                self.data['type'] = 'request'
                # self.data['header'] = packet[HTTPRequest].fields
                self.data['header'] = {
                    key: bytes.decode(value) if isinstance(value, bytes) else value for key, value in
                    packet[HTTPRequest].fields.items()
                }
                flag = True
            elif packet.haslayer(HTTPResponse):
                self.data['type'] = 'response'
                # self.data['header'] = packet[HTTPResponse].fields
                # print('header数据: ', packet[HTTPResponse].fields)
                self.data['header'] = {
                    key: bytes.decode(value) if isinstance(value, bytes) else value for key, value in
                    packet[HTTPResponse].fields.items()
                }
                flag = True
            if flag:
                if packet.haslayer(Raw):
                    payload = packet['Raw'].load.decode("utf-8", "ignore")
                    if payload:
                        if isinstance(payload, str):
                            self.data['data'] = self.removeParentheses(payload.encode("utf-8"))

    # UDP层解析
    def udpLayerParser(self, packet):
        if packet.haslayer("UDP"):
            udpLayer = packet.getlayer('UDP')
            sportTmp = udpLayer.sport
            dportTmp = udpLayer.dport
            self.data['udp'] = {
                'sport': bytes.decode(sportTmp) if isinstance(sportTmp, bytes) else sportTmp,
                'dport': bytes.decode(dportTmp) if isinstance(dportTmp, bytes) else dportTmp,
            }
            if packet.haslayer("Raw"):
                payload = packet['Raw'].load.decode("utf-8", "ignore")
                if payload:
                    if isinstance(payload, str):
                        self.data['data'] = self.removeParentheses(packet['Raw'].load.decode("utf-8", "ignore"))
        if packet.haslayer("DNS"):
            self.dnsLayerParser(packet)

    # ICMP层解析
    def icmpLayerParsers(self, packet):
        if packet.haslayer("ICMP"):
            icmpLayer = packet.getlayer('ICMP')
            typeTmp = icmpLayer.type
            codeTmp = icmpLayer.code
            self.data['icmp'] = {
                'type': bytes.decode(typeTmp) if isinstance(typeTmp, bytes) else typeTmp,
                'code': bytes.decode(codeTmp) if isinstance(codeTmp, bytes) else codeTmp,
            }
            if packet.haslayer("Raw"):
                payload = packet['Raw'].load.decode("utf-8", "ignore")
                if payload:
                    if isinstance(payload, str):
                        self.data['data'] = self.removeParentheses(packet['Raw'].load.decode("utf-8", "ignore"))

    # DNS层解析
    def dnsLayerParser(self, packet):
        if packet.haslayer("DNS"):
            if DNSQR in packet:
                if packet.haslayer('IP'):
                    hostTmp = packet[DNSQR].qname[:-1]
                    fromTmp = packet[DNSQR].qname[:-1]
                    self.data['udp']['dns'] = {
                        'host': bytes.decode(hostTmp) if isinstance(hostTmp, bytes) else hostTmp,
                        'from': bytes.decode(fromTmp) if isinstance(fromTmp, bytes) else fromTmp
                    }

    # ARP层解析
    def arpLayerParsers(self, packet):
        if packet.haslayer("ARP"):
            arpLayer = packet.getlayer("ARP")
            psrcTmp = arpLayer.psrc
            typeTmp = arpLayer.op
            pdstTmp = arpLayer.pdst
            self.data['arp'] = {
                'psrc': bytes.decode(psrcTmp) if isinstance(psrcTmp, bytes) else psrcTmp,
                'type': bytes.decode(typeTmp) if isinstance(typeTmp, bytes) else typeTmp,
                'pdst': bytes.decode(pdstTmp) if isinstance(pdstTmp, bytes) else pdstTmp,
            }

    # 去除字段中的各种干扰括号
    @staticmethod
    def removeParentheses(data):
        data = str(data)
        data = data.replace('{', '').replace('}', '').replace('[', '').replace(']', '')
        data = data.replace('(', '').replace(')', '').replace('"', '').replace('"', '')
        data = data.replace("'", '')
        return data

    # 处理最终参数中的_bytes
    def recursiveByte(self, data):
        changeKey = []
        for key in data.keys():
            if isinstance(key, bytes):
                changeKey.append(key)
            if isinstance(data[key], bytes):
                data[key] = bytes.decode(data[key])
            if isinstance(data[key], dict):
                self.recursiveByte(data[key])

        for i in changeKey:
            tmpData = data.pop(i)
            data[bytes.decode(i)] = tmpData
        return data

    # kafka生产者
    def producerD(self, data):
        future = self.producer.send('netLog', key=str(int(time.time())).encode(), value=data)
        # print("send {}".format(data))
        try:
            future.get(timeout=10)  # 监控是否发送成功
        except kafka_errors:  # 发送失败抛出kafka_errors
            traceback.format_exc()


if __name__ == '__main__':
    CAPTURE().main()
