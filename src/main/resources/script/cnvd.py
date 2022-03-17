# -*- coding: utf-8 -*-
#
# Copyright (C) 2021 #
# @Time    : 2021/12/7 10:33
# @Author  : LS
# @Email   : 1948275556@qq.com
# @File    : CNVD采集.py
# @Software: PyCharm
import random
import re
import time
import sys
import io, json
from bs4 import BeautifulSoup
from playwright.sync_api import Playwright, sync_playwright

# 存储漏洞列表
cnvdList = []
cnvdDetail = []
vulRankDict = {
    '': '0',
    '低': '1',
    '中': '2',
    '高': '3',
}
if len(sys.argv) < 2:
    sys.exit()
elif len(sys.argv) == 2:
    dateStr = sys.argv[1]
else:
    print("错误:您输入的参数太多,请重新运行")
    sys.exit()


def replareStr(strs, spac=True, doubleQuotes=False):
    # 剔除字符串的非法字符
    result = strs
    try:
        # 剔除漏洞等级中的无用字符
        if doubleQuotes:
            result = result.replace('"', ' ').replace('\'', ' ').replace('\n', '').replace('\r', '').replace('\t', '')
        if spac:
            result = result.replace(' ', '').replace('\n', '').replace('\r', '').replace('\t', '')
        else:
            result = result.replace('\t', '').replace('\n\n\n', '').replace('\n\n', '\t').replace('\n', '').replace(
                '\t', '\n')
        return result
    except Exception as e:
        return result


def cancleImgs(route, request):
    route.abort()


def parseHtml(html):
    soup = BeautifulSoup(html, 'lxml')
    try:
        tAble = soup.select('body > div.mw.Main.clearfix > div.blkContainer > div > div:nth-child(2) > table')
        trList = tAble[0].select('tr')

        if len(trList) != 0:

            for tr in trList:
                tdList = tr.select('td')
                if len(tdList) != 0:
                    titleTr = tdList[0].select('a')[0]
                    title = titleTr.attrs['title']
                    link = 'https://www.cnvd.org.cn' + titleTr.attrs['href']
                    vulRank = tdList[1].text
                    tmpData = {
                        'title': title,
                        'link': link,
                        'platformCollectionDate': replareStr(tdList[5].text),
                        'vulRank': replareStr(vulRank)
                    }
                    cnvdList.append(tmpData)

        else:
            print('最外层tr获取失败')
    except Exception as e:
        print()


def parseDetail(html, index, error=False, cnvd=None):
    # 如果出错则进入异常逻辑，取列表页数据填充
    if error:
        print(cnvd)
        tmpData = {
            'cveId': "",
            'cnvdId': "",
            'vulName': cnvd['title'],
            'vulRank': cnvd['vulRank'],
            'vulLevel': "",
            'vulRange': "",
            'vulDetail': "",
            'vulType': "",
            'refUrl': "",
            'vulSolution': "",
            'officialPatchInfo': "",
            'verifyMessage': "",
            'publicDate': "",
            'reportDate': "",
            'collectionDate': "",
            'updateDate': "",
            'vulAttachment': "",
            'platformCollectionDate': cnvd['platformCollectionDate'],
            'fr0m': 'CNVD',
        }

        cnvdDetail.append(tmpData)
    else:
        try:
            soup = BeautifulSoup(html, 'lxml')
        except Exception as e:
            print()

        try:
            # 获取漏洞名称
            try:
                vulName = soup.select(
                    'body > div.mw.Main.clearfix > div.blkContainer > div.blkContainerPblk > div.blkContainerSblk > h1'
                )[0].text.replace('"', ' ').replace('\'', ' ')

                platformCollectionDate = cnvdList[int(index)]['platformCollectionDate']
            except:
                vulName = None
                platformCollectionDate = None

            # 获取tbody部分
            tBody = soup.select(
                'body > div.mw.Main.clearfix > div.blkContainer > div.blkContainerPblk > div.blkContainerSblk > div.blkContainerSblkCon.clearfix > div.tableDiv > table > tbody'
            )

            try:
                trList = tBody[0].select('tr')
            except:
                trList = None

            # 标头索引
            indexList = []

            # 剔除最后一个无用元素
            trList.pop()

            # 以表格标头建立索引
            for tr in trList:
                indexList.append(replareStr(tr.select('td')[0].text))

            # 有待改进(一堆try)
            if trList != None:
                try:
                    cnvdId = replareStr(trList[indexList.index('CNVD-ID')].select('td')[1].text)
                except:
                    cnvdId = None
                try:
                    publicDate = replareStr(trList[indexList.index('公开日期')].select('td')[1].text)
                except:
                    publicDate = None
                try:
                    vulRank = replareStr(trList[indexList.index('危害级别')].select('td')[1].text)
                except:
                    vulRank = None
                try:
                    vulRange = replareStr(trList[indexList.index('影响产品')].select('td')[1].text, spac=False,
                                          doubleQuotes=True)
                except:
                    vulRange = None
                try:
                    cveId = replareStr(trList[indexList.index('CVEID')].select('td')[1].text)
                except:
                    cveId = None
                try:
                    vulDetail = replareStr(trList[indexList.index('漏洞描述')].select('td')[1].text, doubleQuotes=True)
                except:
                    vulDetail = None
                try:
                    vulType = replareStr(trList[indexList.index('漏洞类型')].select('td')[1].text, doubleQuotes=True)
                except:
                    vulType = None
                try:
                    refUrl = replareStr(trList[indexList.index('参考链接')].select('td')[1].text)
                except:
                    refUrl = None
                try:
                    vulSolution = replareStr(trList[indexList.index('漏洞解决方案')].select('td')[1].text, doubleQuotes=True)
                except:
                    vulSolution = None
                try:
                    officialPatchInfo = replareStr(trList[indexList.index('厂商补丁')].select('td')[1].text,
                                                   doubleQuotes=True) + '：https://www.cnvd.org.cn' + \
                                        trList[indexList.index('厂商补丁')].select('td')[1].a['href']
                except:
                    officialPatchInfo = None
                try:
                    verifyMessage = replareStr(trList[indexList.index('验证信息')].select('td')[1].text, doubleQuotes=True)
                except:
                    verifyMessage = None
                try:
                    reportDate = replareStr(trList[indexList.index('报送时间')].select('td')[1].text)
                except:
                    reportDate = None
                try:
                    collectionDate = replareStr(trList[indexList.index('收录时间')].select('td')[1].text)
                except:
                    collectionDate = None
                try:
                    updateDate = replareStr(trList[indexList.index('更新时间')].select('td')[1].text)
                except:
                    updateDate = None
                try:
                    vulAttachment = replareStr(trList[indexList.index('漏洞附件')].select('td')[1].text)
                except:
                    vulAttachment = None

                tmpData = {
                    'cveId': cveId,
                    'cnvdId': cnvdId,
                    'vulName': vulName,
                    'vulRank': vulRank,
                    'vulLevel': vulRankDict.get(vulRank[0]),
                    'vulRange': vulRange,
                    'vulDetail': vulDetail,
                    'vulType': vulType,
                    'refUrl': refUrl,
                    'vulSolution': vulSolution,
                    'officialPatchInfo': officialPatchInfo,
                    'verifyMessage': verifyMessage,
                    'publicDate': publicDate,
                    'reportDate': reportDate,
                    'collectionDate': collectionDate,
                    'updateDate': updateDate,
                    'vulAttachment': vulAttachment,
                    'platformCollectionDate': platformCollectionDate,
                    'fr0m': 'CNVD',
                }

                # 将单条漏洞信息放入全局变量漏洞信息列表中
                cnvdDetail.append(tmpData)
                # print('漏洞名称: {}'.format(vulName))

        except Exception as e:
            print()


def cnvdDetailPage(context):
    page = context.new_page()
    page.route(re.compile(r"(\.png)|(\.jpg)"), cancleImgs)
    try:
        for index, cnvd in enumerate(cnvdList):
            page.goto(cnvd['link'], wait_until='networkidle')

            try:
                page.locator(
                    'body > div.mw.Main.clearfix > div.blkContainer > div.blkContainerPblk > div.blkContainerSblk > div.blkContainerSblkCon.clearfix > div.tableDiv > table > tbody'
                ).wait_for()

                html = page.content()

                parseDetail(html, index)
            except Exception as e:
                parseDetail(error=True, cnvd=cnvd)

            time.sleep(random.uniform(4.0, 7.0))
    except Exception as e:
        print()


def run(playwright: Playwright) -> None:
    sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf8')
    args = [
        '--disable-blink-features=AutomationControlled'
    ]
    browser = playwright.chromium.launch(headless=False, args=args)

    context = browser.new_context()

    # try:
    #     context.add_init_script('stealth.min.js')
    # except Exception as e:
    #     print(str(e))
    #     print('脚本文件载入失败')

    # Open new page
    page = context.new_page()
    page.route(re.compile(r"(\.png)|(\.jpg)"), cancleImgs)

    # Go to https://www.cnvd.org.cn/
    page.goto('https://www.cnvd.org.cn/flaw/list', wait_until='networkidle', timeout=30000)

    page.locator("body > div.mw.Main.clearfix > div.blkContainer > div > div:nth-child(2) > table").wait_for()

    data = dateStr

    try:
        page.evaluate('() => document.querySelector("#startDate").value="{}"'.format(data))

        page.evaluate('() => document.querySelector("#endDate").value="{}"'.format(data))

        page.click('#searchForm > div > input[type=button]:nth-child(4)')

        page.locator('body > div.mw.Main.clearfix > div.blkContainer > div > div:nth-child(2) > table').wait_for()

        parseHtml(page.content())

        # 循环判断有无下一页，若无则break退出
        while True:
            try:
                page.locator('a.nextLink').wait_for(timeout=500)
                page.click('a.nextLink')
                page.locator(
                    'body > div.mw.Main.clearfix > div.blkContainer > div > div:nth-child(2) > table').wait_for()
                parseHtml(page.content())
                time.sleep(random.uniform(4.0, 7.0))
            except Exception as e:
                print()
                break

    except Exception as e:
        print()

    try:
        cnvdDetailPage(context=context)
    except Exception as e:
        print()

    # 执行结束，关闭浏览器
    page.close()
    context.close()
    browser.close()


if __name__ == '__main__':
    # 入口函数
    with sync_playwright() as playwright:
        run(playwright)

    if len(cnvdDetail) == 0:
        print()
    else:
        vulRes = json.dumps(cnvdDetail, ensure_ascii=False).encode('utf-8', 'ignore').decode('utf-8')
        print(vulRes)
