/*
 Navicat Premium Data Transfer

 Source Server         : 本地数据库
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : learn

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 03/03/2022 16:57:21
*/

-- ----------------------------
-- Table structure for cnvds
-- ----------------------------
DROP TABLE IF EXISTS `cnvds`;
CREATE TABLE `cnvds`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cve_id` varchar(255) CHARACTER SET utf8  DEFAULT NULL,
  `cnvd_id` varchar(255) CHARACTER SET utf8  DEFAULT NULL,
  `vul_name` varchar(255) CHARACTER SET utf8  DEFAULT NULL,
  `vul_rank` varchar(255) CHARACTER SET utf8  DEFAULT NULL,
  `vul_level` varchar(255) CHARACTER SET utf8  DEFAULT NULL,
  `vul_range` varchar(500) CHARACTER SET utf8  DEFAULT NULL,
  `vul_detail` varchar(255) CHARACTER SET utf8  DEFAULT NULL,
  `vul_type` varchar(255) CHARACTER SET utf8  DEFAULT NULL,
  `ref_url` varchar(255) CHARACTER SET utf8  DEFAULT NULL,
  `vul_solution` varchar(255) CHARACTER SET utf8  DEFAULT NULL,
  `official_patch_info` varchar(255) CHARACTER SET utf8  DEFAULT NULL,
  `verify_message` varchar(255) CHARACTER SET utf8  DEFAULT NULL,
  `public_date` varchar(255) CHARACTER SET utf8  DEFAULT NULL,
  `report_date` varchar(255) CHARACTER SET utf8  DEFAULT NULL,
  `collection_date` varchar(255) CHARACTER SET utf8  DEFAULT NULL,
  `update_date` varchar(255) CHARACTER SET utf8  DEFAULT NULL,
  `vul_attachment` varchar(255) CHARACTER SET utf8  DEFAULT NULL,
  `platform_collection_date` varchar(255) CHARACTER SET utf8  DEFAULT NULL,
  `fr0m` varchar(255) CHARACTER SET utf8  DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 49 CHARACTER SET = utf8;

-- ----------------------------
-- Records of cnvds
-- ----------------------------
INSERT INTO `cnvds` VALUES (1, 'CVE-2022-0374', 'CNVD-2022-08146', 'livehelperchat跨站脚本漏洞（CNVD-2022-08146）', '高(AV:N/AC:L/Au:S/C:C/I:P/A:N)', '3', 'livehelperchat livehelperchat ', 'livehelperchat是通过实时助手聊天，可以在网站上免费提供实时支持。Livehelperchat在3.93版本中存在跨站脚本漏洞，该漏洞源于在WEB应用缺少对客户端数据的正确验证。攻击者可利用该漏洞执行客户端代码。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2022-0374', '厂商已发布了漏洞修复程序，请及时关注更新：https://huntr.dev/bounties/f8b560a6-aa19-4262-8ae4-cf88204310ef', 'livehelperchat跨站脚本漏洞（CNVD-2022-08146）的补丁：https://www.cnvd.org.cn/patchInfo/show/316951', '(暂无验证信息)', '2022-02-01', '2022-01-28', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:00:09', NULL);
INSERT INTO `cnvds` VALUES (2, 'CVE-2021-43799', 'CNVD-2022-08147', 'Zulip server安全特征问题漏洞', '高(AV:N/AC:L/Au:N/C:C/I:N/A:N)', '3', 'Zulip Zulip Server <4.9', 'Zulipserver是美国Zulip公司的一款开源的团队聊天应用程序。ZulipServer4.9之前版本存在安全特征问题漏洞，该漏洞源于错误的输入验证造成的。远程攻击者可以利用该漏洞发送精心编制的请求，并在目标系统上执行任意代码。', '通用型漏洞', 'https://www.cybersecurity-help.cz/vdb/SB2022012511', '厂商已发布了漏洞修复程序，请及时关注更新：https://github.com/zulip/zulip/security/advisories/GHSA-p663-wxvv-2fjp', 'Zulipserver安全特征问题漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/316956', '(暂无验证信息)', '2022-02-01', '2022-01-27', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:00:10', NULL);
INSERT INTO `cnvds` VALUES (3, 'CVE-2021-46085', 'CNVD-2022-08148', 'OneBlog权限许可和访问控制问题漏洞', '中(AV:N/AC:L/Au:S/C:N/I:P/A:N)', '2', 'OneBlog OneBlog <=2.2.8', 'OneBlog是一个漂亮、功能强大的Java博客。OneBlog在2.2.8及之前版本存在权限许可和访问控制问题漏洞，该漏洞源于网络系统或产品未正确限制来自未授权角色的资源访问。攻击者可利用该漏洞可导致低级管理员可以删除超出其权限的高级管理员。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-46085', '厂商已发布了漏洞修复程序，请及时关注更新：https://github.com/zhangyd-c/OneBlog/issues/29', 'OneBlog权限许可和访问控制问题漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/316961', '(暂无验证信息)', '2022-02-01', '2022-01-27', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:00:10', NULL);
INSERT INTO `cnvds` VALUES (4, 'CVE-2021-45341', 'CNVD-2022-08149', 'LibreCAD缓冲区溢出漏洞（CNVD-2022-08149）', '高(AV:N/AC:M/Au:N/C:C/I:C/A:C)', '3', 'LibreCAD LibreCAD <=2.2.0-rc3', 'LibreCAD是LibreCAD组织的一款开源的CAD（计算机辅助设计）应用程序。LibreCAD2.2.0-rc3及更早版本中存在缓冲区溢出漏洞，该漏洞源于网络系统或产品在内存上执行操作时，未正确验证数据边界，导致向关联的其他内存位置上执行了错误的读写操作。攻击者可利用该漏洞可使用精心制作的JWW文档实现远程代码执行。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-45341', '厂商尚未提供漏洞修复方案，请关注厂商主页更新：https://github.com/LibreCAD/LibreCAD/issues/1462', NULL, '(暂无验证信息)', '2022-02-01', '2022-01-27', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:00:10', NULL);
INSERT INTO `cnvds` VALUES (5, 'CVE-2021-45343', 'CNVD-2022-08150', 'LibreCAD拒绝漏洞', '中(AV:N/AC:M/Au:N/C:N/I:N/A:P)', '2', 'LibreCAD LibreCAD 2.2.0', 'LibreCAD是LibreCAD组织的一款开源的CAD（计算机辅助设计）应用程序。LibreCAD2.2.0版本中存在拒绝服务漏洞，该漏洞源于libdxfrw的HATCH处理中的空指针取消引用，攻击者可利用该漏洞使用精心制作的DXF文档使应用程序崩溃。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-45343', '厂商尚未提供漏洞修复方案，请关注厂商主页更新：https://github.com/LibreCAD/LibreCAD/issues/1468', NULL, '(暂无验证信息)', '2022-02-01', '2022-01-27', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:00:10', NULL);
INSERT INTO `cnvds` VALUES (6, 'CVE-2021-46089', 'CNVD-2022-08176', 'JeecgBoot SQL注入漏洞', '高(AV:N/AC:L/Au:N/C:C/I:C/A:C)', '3', 'JEECG jeecg_boot 3.0', 'JeecgBoot是中国的一个适用于企业Web应用程序的Java低代码平台。JeecgBoot3.0版本中存在SQL注入漏洞，该漏洞源于基于数据库的应用缺少对外部输入SQL语句的验证。攻击者可利用该漏洞执行非法SQL命令。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-46089', '厂商已发布了漏洞修复程序，请及时关注更新：https://github.com/jeecgboot/jeecg-boot/issues/3331', 'JeecgBootSQL注入漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/316971', '(暂无验证信息)', '2022-02-01', '2022-01-27', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:00:10', NULL);
INSERT INTO `cnvds` VALUES (7, 'CVE-2021-45844', 'CNVD-2022-08177', 'FreeCAD ODA命令注入漏洞', '高(AV:N/AC:H/Au:N/C:C/I:C/A:C)', '3', 'freecad FreeCAD 0.19', 'FreeCad是FreeCad社区的一个自由及开放源代码的通用参数化3DCad建模器，并且支持有限元素法的建筑信息模型软件。FreeCAD0.19版本存在命令注入漏洞，该漏洞源于调用ODA文件转换器时的不当清理。攻击者可利用该漏洞通过精心制作的文件名注入操作系统命令。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-45844', '厂商已发布了漏洞修复程序，请及时关注更新：https://tracker.freecad.org/view.php?id=4809', 'FreeCADODA命令注入漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/316966', '(暂无验证信息)', '2022-02-01', '2022-01-27', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:00:10', NULL);
INSERT INTO `cnvds` VALUES (8, 'CVE-2021-45029', 'CNVD-2022-08191', 'Apache ShenYu代码注入漏洞', '高(AV:N/AC:L/Au:N/C:P/I:P/A:P)', '3', 'Apache shenyu 2.4.0Apache shenyu 2.4.1', 'ApacheShenYu是美国阿帕奇（Apache）基金会的一个异步的，高性能的，跨语言的，响应式的API网关。ApacheShenYu在2.4.0和2.4.1版本存在代码注入漏洞，该漏洞源于网络系统或产品的代码开发过程中存在设计或实现不当的问题。攻击者可利用该漏洞导致远程代码执行的Groovy代码注入和SpEL注入。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-45029', '厂商已发布了漏洞修复程序，请及时关注更新：https://lists.apache.org/thread/3zzmwvg3012tg306x8o893fvdcssx639', 'ApacheShenYu代码注入漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/316976', '(暂无验证信息)', '2022-02-01', '2022-01-27', '2022-02-03', '2022-02-03', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:00:10', NULL);
INSERT INTO `cnvds` VALUES (9, 'CVE-2022-0335', 'CNVD-2022-08151', 'Moodle跨站请求伪造漏洞（CNVD-2022-08151）', '中(AV:N/AC:M/Au:N/C:N/I:P/A:N)', '2', 'moodle Moodle 3.11.4moodle Moodle >=3.10，<=3.10.8moodle Moodle >=3.9，<=3.9.11', 'Moodle是一套免费、开源的电子学习软件平台，也称课程管理系统、学习管理系统或虚拟学习环境。Moodle3.11到3.11.4、3.10到3.10.8、3.9到3.9.11存在跨站请求伪造漏洞，该漏洞源于删除标记对齐功能中的HTTP请求来源验证不足。攻击者可以利用该漏洞伪造恶意请求诱骗受害者点击执行敏感操作。', '通用型漏洞', 'https://bugzilla.redhat.com/show_bug.cgi?id=2043666', '厂商已发布了漏洞修复程序，请及时关注更新：https://moodle.org/mod/forum/discuss.php?d=431103', 'Moodle跨站请求伪造漏洞（CNVD-2022-08151）的补丁：https://www.cnvd.org.cn/patchInfo/show/316981', '(暂无验证信息)', '2022-02-01', '2022-01-26', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:00:10', NULL);
INSERT INTO `cnvds` VALUES (10, 'CVE-2021-25017', 'CNVD-2022-08152', 'WordPress Tutor LMS插件跨站脚本漏洞（CNVD-2022-08152）', '中(AV:N/AC:M/Au:N/C:N/I:P/A:N)', '2', 'WordPress Tutor LMS plugin <1.9.12', 'WordPress是WordPress基金会的一套使用PHP语言开发的博客平台。该平台支持在PHP和MySQL的服务器上架设个人博客网站。WordPress的TutorLMS插件1.9.12之前版本存在跨站脚本漏洞，该漏洞源于将搜索参数输出回管理页面的属性之前，不会对其进行转义。攻击者可利用该漏洞在客户端执行JavaScript代码。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-25017', '厂商已发布了漏洞修复程序，请及时关注更新：https://wpscan.com/vulnerability/2d0c4872-a341-4974-926c-10b094a5d13c', 'WordPressTutorLMS插件跨站脚本漏洞（CNVD-2022-08152）的补丁：https://www.cnvd.org.cn/patchInfo/show/316986', '(暂无验证信息)', '2022-02-01', '2022-01-26', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:00:10', NULL);
INSERT INTO `cnvds` VALUES (11, 'CVE-2022-0269', 'CNVD-2022-08153', 'YetiForceCrm跨站请求伪造漏洞（CNVD-2022-08153）', '中(AV:N/AC:M/Au:S/C:P/I:P/A:P)', '2', 'yetiforce Yetiforcecrm <6.3.0', 'YetiForceCrm是波兰YetiForce公司的一个开源的Crm系统。YetiForceCrm6.3.0版本之前存在跨站请求伪造漏洞，该漏洞源于WEB应用缺少对客户端数据的正确验证。攻击者可利用该漏洞在客户端执行JavaScript代码。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2022-0269', '厂商已发布了漏洞修复程序，请及时关注更新：https://github.com/yetiforcecompany/yetiforcecrm/commit/298c7870e6fe4332d8aa1757a9c8d79f841389ff', 'YetiForceCrm跨站请求伪造漏洞（CNVD-2022-08153）的补丁：https://www.cnvd.org.cn/patchInfo/show/317006', '(暂无验证信息)', '2022-02-01', '2022-01-26', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:00:10', NULL);
INSERT INTO `cnvds` VALUES (12, 'CVE-2021-36349', 'CNVD-2022-08155', 'Dell EMC Data Protection Central服务器端请求伪造漏洞', '中(AV:N/AC:L/Au:S/C:P/I:N/A:N)', '2', 'DELL EMC Data Protection Central <19.6', 'DellEmcDataProtectionCentral是美国戴尔（Dell）公司的一个管理控制台。用于数据保护。DellEMCDataProtectionCentral19.5及其之前版本存在服务器端请求伪造漏洞，该漏洞源于产品未能正确验证用户输入，攻击者可利用该漏洞探测服务器内网资源。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-36349', '厂商已发布了漏洞修复程序，请及时关注更新：https://www.dell.com/support/kbdoc/000195103', 'DellEMCDataProtectionCentral服务器端请求伪造漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/317031', '(暂无验证信息)', '2022-02-01', '2022-01-26', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:00:10', NULL);
INSERT INTO `cnvds` VALUES (13, 'CVE-2021-41083', 'CNVD-2022-08156', 'Dada Mail跨站请求伪造漏洞', '中(AV:N/AC:M/Au:N/C:P/I:P/A:P)', '2', 'Dada Mail Dada Mail <11.16.0', 'DadaMail是一个基于web的电子邮件列表管理系统。DadaMail11.16.0之前版本中存在跨站请求伪造漏洞。攻击者可以将精心制作的网页获取用户账户相关信息。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-41083', '目前厂商已发布升级补丁以修复漏洞，补丁获取链接：https://github.com/justingit/dada-mail/commit/d4d3d86d08c816b4da75a5ef45abc12188772459', 'DadaMail跨站请求伪造漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/317016', '(暂无验证信息)', '2022-02-01', '2022-01-26', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:00:10', NULL);
INSERT INTO `cnvds` VALUES (14, 'CVE-2022-0326', 'CNVD-2022-08157', 'mruby拒绝服务漏洞（CNVD-2022-08157）', '中(AV:N/AC:M/Au:N/C:N/I:N/A:P)', '2', 'mruby mruby <3.2', 'mruby是一个轻量级的Ruby语言的实现，可使用解释模式运行Ruby代码并在虚拟机中执行。Mruby在3.2版本之前版本存在拒绝服务漏洞，该漏洞源于mruby的空指针解引用，攻击者可利用该漏洞通过精心设计报文导致拒绝服务。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2022-0326', '厂商已发布了漏洞修复程序，请及时关注更新：https://github.com/mruby/mruby/commit/b611c43a5de061ec21b343967e1b64c45c373d7e', 'mruby拒绝服务漏洞（CNVD-2022-08157）的补丁：https://www.cnvd.org.cn/patchInfo/show/316991', '(暂无验证信息)', '2022-02-01', '2022-01-25', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:00:10', NULL);
INSERT INTO `cnvds` VALUES (15, 'CVE-2022-21933', 'CNVD-2022-08158', 'ASUS VivoMini/Mini PC输入验证错误漏洞', '高(AV:L/AC:L/Au:N/C:C/I:C/A:C)', '3', 'ASUS VivoMini/Mini PC ', 'ASUSVivoMini/MiniPC是中国台湾华硕（ASUS）公司的一款超薄小型迷你电脑。ASUSVivoMini/MiniPC存在输入验证错误漏洞，该漏洞源于具有系统权限的本地攻击者可以使用系统管理中断（SMI）来修改内存，攻击者可利用该漏洞执行任意代码来控制系统或中断服务。', '通用型漏洞', 'https://www.twcert.org.tw/tw/cp-132-5547-34bc4-1.html', '厂商已发布了漏洞修复程序，请及时关注更新：https://www.asus.com/content/ASUS-Product-Security-Advisory/', 'ASUSVivoMini/MiniPC输入验证错误漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/316996', '(暂无验证信息)', '2022-02-01', '2022-01-25', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:00:10', NULL);
INSERT INTO `cnvds` VALUES (16, 'CVE-2022-0319', 'CNVD-2022-08159', 'vim缓冲区溢出漏洞（CNVD-2022-08159）', '中(AV:N/AC:M/Au:N/C:P/I:N/A:N)', '2', 'Vim Vim <8.2.4154', 'Vim是一款基于UNIX平台的编辑器。vim存在缓冲区错误漏洞，该漏洞源于网络系统或产品在内存上执行操作时，未正确验证数据边界，导致向关联的其他内存位置上执行了错误的读写操作。远程攻击者可利用该漏洞在系统上执行任意代码。', '通用型漏洞', 'https://huntr.dev/bounties/ba622fd2-e6ef-4ad9-95b4-17f87b68755b', '厂商已发布了漏洞修复程序，请及时关注更新：https://github.com/vim/vim/commit/05b27615481e72e3b338bb12990fb3e0c2ecc2a9', 'vim缓冲区溢出漏洞（CNVD-2022-08159）的补丁：https://www.cnvd.org.cn/patchInfo/show/317021', '(暂无验证信息)', '2022-02-01', '2022-01-25', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:00:10', NULL);
INSERT INTO `cnvds` VALUES (17, 'CVE-2021-44713', 'CNVD-2022-08195', 'Adobe Acrobat and Reader资源管理错误漏洞（CNVD-2022-08195）', '中(AV:N/AC:M/Au:N/C:N/I:N/A:P)', '2', 'Adobe Acrobat DC Continuous >=15.008.20082，<=21.007.20099Adobe Acrobat Reader DC Continuous >=15.008.20082，<=21.007.20099Adobe acrobat classic >=17.011.30059，<=17.011.30204Adobe acrobat classic >=20.001.30005，<=20.004.30017Adobe acrobat reader classic >=17.011.30059，<=17.011.30204Adobe acrobat reader classic >=20.001.30005，<=20.004.30017', 'AdobeAcrobat是美国奥多比（Adobe）公司的一套PDF文件编辑和转换工具。AdobeAcrobatandReader存在资源管理错误漏洞，该漏洞源于处理PDF文件时出现释放后使用错误。攻击者可利用该漏洞创建特制的PDF文件，诱骗受害者打开它并在系统上执行任意代码。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-44713', '目前厂商已发布升级补丁以修复漏洞，补丁获取链接：https://helpx.adobe.com/security/products/acrobat/apsb22-01.html', 'AdobeAcrobatandReader资源管理错误漏洞（CNVD-2022-08195）的补丁：https://www.cnvd.org.cn/patchInfo/show/317036', '(暂无验证信息)', '2022-02-01', '2022-01-25', '2022-02-03', '2022-02-03', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:00:10', NULL);
INSERT INTO `cnvds` VALUES (18, 'CVE-2021-36343', 'CNVD-2022-08196', 'Dell BIOS缓冲区溢出漏洞', '中(AV:L/AC:H/Au:M/C:C/I:C/A:C)', '2', 'Dell BIOS ', 'DellBios是美国戴尔（Dell）公司的一个计算机主板上小型内存芯片上的嵌入式软件。DellBIOS存在安全漏洞，该漏洞源于软件存在错误的输入验证。本地经过身份验证的攻击者可能利用该漏洞通过使用SMI来获取SMRAM中的任意代码执行，从而潜在地利用这个漏洞。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-36343', '目前厂商已发布升级补丁以修复漏洞，补丁获取链接：https://www.dell.com/support/kbdoc/en-us/000193321/dsa-2021-240', 'DellBIOS缓冲区溢出漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/317026', '(暂无验证信息)', '2022-02-01', '2022-01-26', '2022-02-03', '2022-02-03', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:00:10', NULL);
INSERT INTO `cnvds` VALUES (19, 'CVE-2021-43588', 'CNVD-2022-08197', 'Dell EMC Data Protection Central输入验证错误漏洞', '中(AV:N/AC:L/Au:N/C:N/I:N/A:P)', '2', 'DELL EMC Data Protection Central <19.6', 'DellEmcDataProtectionCentral是美国戴尔（Dell）公司的一个管理控制台。用于数据保护。DellEMCDataProtectionCentral存在安全漏洞，该漏洞源于网络系统或产品未对输入的数据进行正确的验证。目前没有详细的漏洞细节提供。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-43588', '目前厂商已发布升级补丁以修复漏洞，补丁获取链接：https://www.dell.com/support/kbdoc/000195103', 'DellEMCDataProtectionCentral输入验证错误漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/317011', '(暂无验证信息)', '2022-02-01', '2022-01-26', '2022-02-03', '2022-02-03', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:00:10', NULL);
INSERT INTO `cnvds` VALUES (20, 'CVE-2022-22554', 'CNVD-2022-08198', 'Dell Emc System Update存在未明漏洞', '低(AV:L/AC:L/Au:N/C:P/I:N/A:N)', '1', 'DELL Emc System Update <=1.9.2.0', 'DellEmcSystemUpdate是美国戴尔（Dell）公司的一个应用程序。用于将适用于Linux、MicrosoftWindows操作系统的戴尔更新以及通过Idrac和操作系统的更新分发到Idrac直通。DellEmcSystemUpdate存在安全漏洞，攻击者可利用该漏洞导致用户密码的泄露。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2022-22554', '目前厂商已发布升级补丁以修复漏洞，补丁获取链接：https://www.dell.com/support/kbdoc/000195007', 'DellEmcSystemUpdate存在未明漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/317041', '(暂无验证信息)', '2022-02-01', '2022-01-26', '2022-02-03', '2022-02-03', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:00:10', NULL);
INSERT INTO `cnvds` VALUES (21, 'CVE-2022-23807', 'CNVD-2022-08180', 'phpMyAdmin授权问题漏洞', '中(AV:N/AC:L/Au:S/C:N/I:P/A:N)', '2', 'phpMyAdmin  phpMyAdmin  >=5.1.0，<5.1.2phpMyAdmin  phpMyAdmin  >=4.9.0，<4.9.8', 'phpMyAdmin是Phpmyadmin团队的一套免费的、基于Web的MySQL数据库管理工具。该工具能够创建和删除数据库，创建、删除、修改数据库表，执行SQL脚本命令等。phpMyAdmin存在安全漏洞，该漏洞源于经过身份验证的有效用户可以操纵其他帐户从而绕过未来登录实例的双因素身份验证。目前没有详细的漏洞细节提供。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2022-23807', '目前厂商已发布升级补丁以修复漏洞，补丁获取链接：https://www.phpmyadmin.net/security/PMASA-2022-1/', 'phpMyAdmin授权问题漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/317051', '(暂无验证信息)', '2022-02-01', '2022-01-25', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:00:10', NULL);
INSERT INTO `cnvds` VALUES (22, 'CVE-2022-23808', 'CNVD-2022-08031', 'phpMyAdmin跨站脚本漏洞（CNVD-2022-08031）', '中(AV:N/AC:M/Au:N/C:N/I:P/A:N)', '2', 'phpMyAdmin  phpMyAdmin  >=5.1.0，<5.1.2', 'phpMyAdmin是Phpmyadmin团队的一套免费的、基于Web的MySQL数据库管理工具。该工具能够创建和删除数据库，创建、删除、修改数据库表，执行SQL脚本命令等。phpMyAdmin存在跨站脚本漏洞，该漏洞源于WEB应用缺少对客户端数据的正确验证。攻击者可利用该漏洞执行客户端代码。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2022-23808', '目前厂商已发布升级补丁以修复漏洞，补丁获取链接：https://www.phpmyadmin.net/security/PMASA-2022-2/', 'phpMyAdmin跨站脚本漏洞（CNVD-2022-08031）的补丁：https://www.cnvd.org.cn/patchInfo/show/317046', '(暂无验证信息)', '2022-02-01', '2022-01-25', '2022-02-01', '2022-02-01', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:00:10', NULL);
INSERT INTO `cnvds` VALUES (23, 'CVE-2021-45380', 'CNVD-2022-08032', 'AppCMS跨站脚本漏洞（CNVD-2022-08032）', '中(AV:N/AC:M/Au:N/C:N/I:P/A:N)', '2', 'AppCMS AppCMS V2.0.101', 'AppCMS是一款用于移动应用程序下载的内容管理系统（CMS）。AppCMS存在跨站脚本漏洞，该漏洞源于WEB应用缺少对客户端数据的正确验证。攻击者可利用该漏洞执行客户端代码。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-45380', '目前厂商已发布升级补丁以修复漏洞，补丁获取链接：https://github.com/source-trace/appcms/issues/8', 'AppCMS跨站脚本漏洞（CNVD-2022-08032）的补丁：https://www.cnvd.org.cn/patchInfo/show/317001', '(暂无验证信息)', '2022-02-01', '2022-01-25', '2022-02-01', '2022-02-01', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:00:10', NULL);
INSERT INTO `cnvds` VALUES (24, 'CVE-2021-36347', 'CNVD-2022-08033', 'Dell EMC iDRAC栈溢出漏洞', '高(AV:N/AC:L/Au:S/C:C/I:C/A:C)', '3', 'Dell EMC iDRAC9 <5.00.20.00', 'DellEMCiDRAC是美国戴尔（Dell）公司的一种用于系统管理员更新和管理戴尔系统的位于服务器主板上的硬件。DellEMCiDRAC存在栈溢出漏洞，远程攻击者可以利用该漏洞提交特殊的请求，可使应用程序崩溃或可能以应用程序上下文执行任意代码。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-36347', '目前厂商已发布升级补丁以修复漏洞，补丁获取链接：https://www.dell.com/support/kbdoc/zh-cn/000194038/dsa-2021-259', 'DellEMCiDRAC栈溢出漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/317056', '(暂无验证信息)', '2022-02-01', '2022-01-24', '2022-02-01', '2022-02-01', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:00:10', NULL);
INSERT INTO `cnvds` VALUES (25, 'CVE-2022-0374', 'CNVD-2022-08146', 'livehelperchat跨站脚本漏洞（CNVD-2022-08146）', '高(AV:N/AC:L/Au:S/C:C/I:P/A:N)', '3', 'livehelperchat livehelperchat ', 'livehelperchat是通过实时助手聊天，可以在网站上免费提供实时支持。Livehelperchat在3.93版本中存在跨站脚本漏洞，该漏洞源于在WEB应用缺少对客户端数据的正确验证。攻击者可利用该漏洞执行客户端代码。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2022-0374', '厂商已发布了漏洞修复程序，请及时关注更新：https://huntr.dev/bounties/f8b560a6-aa19-4262-8ae4-cf88204310ef', 'livehelperchat跨站脚本漏洞（CNVD-2022-08146）的补丁：https://www.cnvd.org.cn/patchInfo/show/316951', '(暂无验证信息)', '2022-02-01', '2022-01-28', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:11:27', NULL);
INSERT INTO `cnvds` VALUES (26, 'CVE-2021-43799', 'CNVD-2022-08147', 'Zulip server安全特征问题漏洞', '高(AV:N/AC:L/Au:N/C:C/I:N/A:N)', '3', 'Zulip Zulip Server <4.9', 'Zulipserver是美国Zulip公司的一款开源的团队聊天应用程序。ZulipServer4.9之前版本存在安全特征问题漏洞，该漏洞源于错误的输入验证造成的。远程攻击者可以利用该漏洞发送精心编制的请求，并在目标系统上执行任意代码。', '通用型漏洞', 'https://www.cybersecurity-help.cz/vdb/SB2022012511', '厂商已发布了漏洞修复程序，请及时关注更新：https://github.com/zulip/zulip/security/advisories/GHSA-p663-wxvv-2fjp', 'Zulipserver安全特征问题漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/316956', '(暂无验证信息)', '2022-02-01', '2022-01-27', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:11:29', NULL);
INSERT INTO `cnvds` VALUES (27, 'CVE-2021-46085', 'CNVD-2022-08148', 'OneBlog权限许可和访问控制问题漏洞', '中(AV:N/AC:L/Au:S/C:N/I:P/A:N)', '2', 'OneBlog OneBlog <=2.2.8', 'OneBlog是一个漂亮、功能强大的Java博客。OneBlog在2.2.8及之前版本存在权限许可和访问控制问题漏洞，该漏洞源于网络系统或产品未正确限制来自未授权角色的资源访问。攻击者可利用该漏洞可导致低级管理员可以删除超出其权限的高级管理员。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-46085', '厂商已发布了漏洞修复程序，请及时关注更新：https://github.com/zhangyd-c/OneBlog/issues/29', 'OneBlog权限许可和访问控制问题漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/316961', '(暂无验证信息)', '2022-02-01', '2022-01-27', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:11:29', NULL);
INSERT INTO `cnvds` VALUES (28, 'CVE-2021-45341', 'CNVD-2022-08149', 'LibreCAD缓冲区溢出漏洞（CNVD-2022-08149）', '高(AV:N/AC:M/Au:N/C:C/I:C/A:C)', '3', 'LibreCAD LibreCAD <=2.2.0-rc3', 'LibreCAD是LibreCAD组织的一款开源的CAD（计算机辅助设计）应用程序。LibreCAD2.2.0-rc3及更早版本中存在缓冲区溢出漏洞，该漏洞源于网络系统或产品在内存上执行操作时，未正确验证数据边界，导致向关联的其他内存位置上执行了错误的读写操作。攻击者可利用该漏洞可使用精心制作的JWW文档实现远程代码执行。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-45341', '厂商尚未提供漏洞修复方案，请关注厂商主页更新：https://github.com/LibreCAD/LibreCAD/issues/1462', NULL, '(暂无验证信息)', '2022-02-01', '2022-01-27', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:11:29', NULL);
INSERT INTO `cnvds` VALUES (29, 'CVE-2021-45343', 'CNVD-2022-08150', 'LibreCAD拒绝漏洞', '中(AV:N/AC:M/Au:N/C:N/I:N/A:P)', '2', 'LibreCAD LibreCAD 2.2.0', 'LibreCAD是LibreCAD组织的一款开源的CAD（计算机辅助设计）应用程序。LibreCAD2.2.0版本中存在拒绝服务漏洞，该漏洞源于libdxfrw的HATCH处理中的空指针取消引用，攻击者可利用该漏洞使用精心制作的DXF文档使应用程序崩溃。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-45343', '厂商尚未提供漏洞修复方案，请关注厂商主页更新：https://github.com/LibreCAD/LibreCAD/issues/1468', NULL, '(暂无验证信息)', '2022-02-01', '2022-01-27', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:11:29', NULL);
INSERT INTO `cnvds` VALUES (30, 'CVE-2021-46089', 'CNVD-2022-08176', 'JeecgBoot SQL注入漏洞', '高(AV:N/AC:L/Au:N/C:C/I:C/A:C)', '3', 'JEECG jeecg_boot 3.0', 'JeecgBoot是中国的一个适用于企业Web应用程序的Java低代码平台。JeecgBoot3.0版本中存在SQL注入漏洞，该漏洞源于基于数据库的应用缺少对外部输入SQL语句的验证。攻击者可利用该漏洞执行非法SQL命令。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-46089', '厂商已发布了漏洞修复程序，请及时关注更新：https://github.com/jeecgboot/jeecg-boot/issues/3331', 'JeecgBootSQL注入漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/316971', '(暂无验证信息)', '2022-02-01', '2022-01-27', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:11:29', NULL);
INSERT INTO `cnvds` VALUES (31, 'CVE-2021-45844', 'CNVD-2022-08177', 'FreeCAD ODA命令注入漏洞', '高(AV:N/AC:H/Au:N/C:C/I:C/A:C)', '3', 'freecad FreeCAD 0.19', 'FreeCad是FreeCad社区的一个自由及开放源代码的通用参数化3DCad建模器，并且支持有限元素法的建筑信息模型软件。FreeCAD0.19版本存在命令注入漏洞，该漏洞源于调用ODA文件转换器时的不当清理。攻击者可利用该漏洞通过精心制作的文件名注入操作系统命令。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-45844', '厂商已发布了漏洞修复程序，请及时关注更新：https://tracker.freecad.org/view.php?id=4809', 'FreeCADODA命令注入漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/316966', '(暂无验证信息)', '2022-02-01', '2022-01-27', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:11:29', NULL);
INSERT INTO `cnvds` VALUES (32, 'CVE-2021-45029', 'CNVD-2022-08191', 'Apache ShenYu代码注入漏洞', '高(AV:N/AC:L/Au:N/C:P/I:P/A:P)', '3', 'Apache shenyu 2.4.0Apache shenyu 2.4.1', 'ApacheShenYu是美国阿帕奇（Apache）基金会的一个异步的，高性能的，跨语言的，响应式的API网关。ApacheShenYu在2.4.0和2.4.1版本存在代码注入漏洞，该漏洞源于网络系统或产品的代码开发过程中存在设计或实现不当的问题。攻击者可利用该漏洞导致远程代码执行的Groovy代码注入和SpEL注入。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-45029', '厂商已发布了漏洞修复程序，请及时关注更新：https://lists.apache.org/thread/3zzmwvg3012tg306x8o893fvdcssx639', 'ApacheShenYu代码注入漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/316976', '(暂无验证信息)', '2022-02-01', '2022-01-27', '2022-02-03', '2022-02-03', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:11:29', NULL);
INSERT INTO `cnvds` VALUES (33, 'CVE-2022-0335', 'CNVD-2022-08151', 'Moodle跨站请求伪造漏洞（CNVD-2022-08151）', '中(AV:N/AC:M/Au:N/C:N/I:P/A:N)', '2', 'moodle Moodle 3.11.4moodle Moodle >=3.10，<=3.10.8moodle Moodle >=3.9，<=3.9.11', 'Moodle是一套免费、开源的电子学习软件平台，也称课程管理系统、学习管理系统或虚拟学习环境。Moodle3.11到3.11.4、3.10到3.10.8、3.9到3.9.11存在跨站请求伪造漏洞，该漏洞源于删除标记对齐功能中的HTTP请求来源验证不足。攻击者可以利用该漏洞伪造恶意请求诱骗受害者点击执行敏感操作。', '通用型漏洞', 'https://bugzilla.redhat.com/show_bug.cgi?id=2043666', '厂商已发布了漏洞修复程序，请及时关注更新：https://moodle.org/mod/forum/discuss.php?d=431103', 'Moodle跨站请求伪造漏洞（CNVD-2022-08151）的补丁：https://www.cnvd.org.cn/patchInfo/show/316981', '(暂无验证信息)', '2022-02-01', '2022-01-26', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:11:29', NULL);
INSERT INTO `cnvds` VALUES (34, 'CVE-2021-25017', 'CNVD-2022-08152', 'WordPress Tutor LMS插件跨站脚本漏洞（CNVD-2022-08152）', '中(AV:N/AC:M/Au:N/C:N/I:P/A:N)', '2', 'WordPress Tutor LMS plugin <1.9.12', 'WordPress是WordPress基金会的一套使用PHP语言开发的博客平台。该平台支持在PHP和MySQL的服务器上架设个人博客网站。WordPress的TutorLMS插件1.9.12之前版本存在跨站脚本漏洞，该漏洞源于将搜索参数输出回管理页面的属性之前，不会对其进行转义。攻击者可利用该漏洞在客户端执行JavaScript代码。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-25017', '厂商已发布了漏洞修复程序，请及时关注更新：https://wpscan.com/vulnerability/2d0c4872-a341-4974-926c-10b094a5d13c', 'WordPressTutorLMS插件跨站脚本漏洞（CNVD-2022-08152）的补丁：https://www.cnvd.org.cn/patchInfo/show/316986', '(暂无验证信息)', '2022-02-01', '2022-01-26', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:11:29', NULL);
INSERT INTO `cnvds` VALUES (35, 'CVE-2022-0269', 'CNVD-2022-08153', 'YetiForceCrm跨站请求伪造漏洞（CNVD-2022-08153）', '中(AV:N/AC:M/Au:S/C:P/I:P/A:P)', '2', 'yetiforce Yetiforcecrm <6.3.0', 'YetiForceCrm是波兰YetiForce公司的一个开源的Crm系统。YetiForceCrm6.3.0版本之前存在跨站请求伪造漏洞，该漏洞源于WEB应用缺少对客户端数据的正确验证。攻击者可利用该漏洞在客户端执行JavaScript代码。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2022-0269', '厂商已发布了漏洞修复程序，请及时关注更新：https://github.com/yetiforcecompany/yetiforcecrm/commit/298c7870e6fe4332d8aa1757a9c8d79f841389ff', 'YetiForceCrm跨站请求伪造漏洞（CNVD-2022-08153）的补丁：https://www.cnvd.org.cn/patchInfo/show/317006', '(暂无验证信息)', '2022-02-01', '2022-01-26', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:11:29', NULL);
INSERT INTO `cnvds` VALUES (36, 'CVE-2021-36349', 'CNVD-2022-08155', 'Dell EMC Data Protection Central服务器端请求伪造漏洞', '中(AV:N/AC:L/Au:S/C:P/I:N/A:N)', '2', 'DELL EMC Data Protection Central <19.6', 'DellEmcDataProtectionCentral是美国戴尔（Dell）公司的一个管理控制台。用于数据保护。DellEMCDataProtectionCentral19.5及其之前版本存在服务器端请求伪造漏洞，该漏洞源于产品未能正确验证用户输入，攻击者可利用该漏洞探测服务器内网资源。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-36349', '厂商已发布了漏洞修复程序，请及时关注更新：https://www.dell.com/support/kbdoc/000195103', 'DellEMCDataProtectionCentral服务器端请求伪造漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/317031', '(暂无验证信息)', '2022-02-01', '2022-01-26', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:11:29', NULL);
INSERT INTO `cnvds` VALUES (37, 'CVE-2021-41083', 'CNVD-2022-08156', 'Dada Mail跨站请求伪造漏洞', '中(AV:N/AC:M/Au:N/C:P/I:P/A:P)', '2', 'Dada Mail Dada Mail <11.16.0', 'DadaMail是一个基于web的电子邮件列表管理系统。DadaMail11.16.0之前版本中存在跨站请求伪造漏洞。攻击者可以将精心制作的网页获取用户账户相关信息。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-41083', '目前厂商已发布升级补丁以修复漏洞，补丁获取链接：https://github.com/justingit/dada-mail/commit/d4d3d86d08c816b4da75a5ef45abc12188772459', 'DadaMail跨站请求伪造漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/317016', '(暂无验证信息)', '2022-02-01', '2022-01-26', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:11:29', NULL);
INSERT INTO `cnvds` VALUES (38, 'CVE-2022-0326', 'CNVD-2022-08157', 'mruby拒绝服务漏洞（CNVD-2022-08157）', '中(AV:N/AC:M/Au:N/C:N/I:N/A:P)', '2', 'mruby mruby <3.2', 'mruby是一个轻量级的Ruby语言的实现，可使用解释模式运行Ruby代码并在虚拟机中执行。Mruby在3.2版本之前版本存在拒绝服务漏洞，该漏洞源于mruby的空指针解引用，攻击者可利用该漏洞通过精心设计报文导致拒绝服务。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2022-0326', '厂商已发布了漏洞修复程序，请及时关注更新：https://github.com/mruby/mruby/commit/b611c43a5de061ec21b343967e1b64c45c373d7e', 'mruby拒绝服务漏洞（CNVD-2022-08157）的补丁：https://www.cnvd.org.cn/patchInfo/show/316991', '(暂无验证信息)', '2022-02-01', '2022-01-25', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:11:29', NULL);
INSERT INTO `cnvds` VALUES (39, 'CVE-2022-21933', 'CNVD-2022-08158', 'ASUS VivoMini/Mini PC输入验证错误漏洞', '高(AV:L/AC:L/Au:N/C:C/I:C/A:C)', '3', 'ASUS VivoMini/Mini PC ', 'ASUSVivoMini/MiniPC是中国台湾华硕（ASUS）公司的一款超薄小型迷你电脑。ASUSVivoMini/MiniPC存在输入验证错误漏洞，该漏洞源于具有系统权限的本地攻击者可以使用系统管理中断（SMI）来修改内存，攻击者可利用该漏洞执行任意代码来控制系统或中断服务。', '通用型漏洞', 'https://www.twcert.org.tw/tw/cp-132-5547-34bc4-1.html', '厂商已发布了漏洞修复程序，请及时关注更新：https://www.asus.com/content/ASUS-Product-Security-Advisory/', 'ASUSVivoMini/MiniPC输入验证错误漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/316996', '(暂无验证信息)', '2022-02-01', '2022-01-25', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:11:29', NULL);
INSERT INTO `cnvds` VALUES (40, 'CVE-2022-0319', 'CNVD-2022-08159', 'vim缓冲区溢出漏洞（CNVD-2022-08159）', '中(AV:N/AC:M/Au:N/C:P/I:N/A:N)', '2', 'Vim Vim <8.2.4154', 'Vim是一款基于UNIX平台的编辑器。vim存在缓冲区错误漏洞，该漏洞源于网络系统或产品在内存上执行操作时，未正确验证数据边界，导致向关联的其他内存位置上执行了错误的读写操作。远程攻击者可利用该漏洞在系统上执行任意代码。', '通用型漏洞', 'https://huntr.dev/bounties/ba622fd2-e6ef-4ad9-95b4-17f87b68755b', '厂商已发布了漏洞修复程序，请及时关注更新：https://github.com/vim/vim/commit/05b27615481e72e3b338bb12990fb3e0c2ecc2a9', 'vim缓冲区溢出漏洞（CNVD-2022-08159）的补丁：https://www.cnvd.org.cn/patchInfo/show/317021', '(暂无验证信息)', '2022-02-01', '2022-01-25', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:11:29', NULL);
INSERT INTO `cnvds` VALUES (41, 'CVE-2021-44713', 'CNVD-2022-08195', 'Adobe Acrobat and Reader资源管理错误漏洞（CNVD-2022-08195）', '中(AV:N/AC:M/Au:N/C:N/I:N/A:P)', '2', 'Adobe Acrobat DC Continuous >=15.008.20082，<=21.007.20099Adobe Acrobat Reader DC Continuous >=15.008.20082，<=21.007.20099Adobe acrobat classic >=17.011.30059，<=17.011.30204Adobe acrobat classic >=20.001.30005，<=20.004.30017Adobe acrobat reader classic >=17.011.30059，<=17.011.30204Adobe acrobat reader classic >=20.001.30005，<=20.004.30017', 'AdobeAcrobat是美国奥多比（Adobe）公司的一套PDF文件编辑和转换工具。AdobeAcrobatandReader存在资源管理错误漏洞，该漏洞源于处理PDF文件时出现释放后使用错误。攻击者可利用该漏洞创建特制的PDF文件，诱骗受害者打开它并在系统上执行任意代码。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-44713', '目前厂商已发布升级补丁以修复漏洞，补丁获取链接：https://helpx.adobe.com/security/products/acrobat/apsb22-01.html', 'AdobeAcrobatandReader资源管理错误漏洞（CNVD-2022-08195）的补丁：https://www.cnvd.org.cn/patchInfo/show/317036', '(暂无验证信息)', '2022-02-01', '2022-01-25', '2022-02-03', '2022-02-03', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:11:29', NULL);
INSERT INTO `cnvds` VALUES (42, 'CVE-2021-36343', 'CNVD-2022-08196', 'Dell BIOS缓冲区溢出漏洞', '中(AV:L/AC:H/Au:M/C:C/I:C/A:C)', '2', 'Dell BIOS ', 'DellBios是美国戴尔（Dell）公司的一个计算机主板上小型内存芯片上的嵌入式软件。DellBIOS存在安全漏洞，该漏洞源于软件存在错误的输入验证。本地经过身份验证的攻击者可能利用该漏洞通过使用SMI来获取SMRAM中的任意代码执行，从而潜在地利用这个漏洞。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-36343', '目前厂商已发布升级补丁以修复漏洞，补丁获取链接：https://www.dell.com/support/kbdoc/en-us/000193321/dsa-2021-240', 'DellBIOS缓冲区溢出漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/317026', '(暂无验证信息)', '2022-02-01', '2022-01-26', '2022-02-03', '2022-02-03', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:11:29', NULL);
INSERT INTO `cnvds` VALUES (43, 'CVE-2021-43588', 'CNVD-2022-08197', 'Dell EMC Data Protection Central输入验证错误漏洞', '中(AV:N/AC:L/Au:N/C:N/I:N/A:P)', '2', 'DELL EMC Data Protection Central <19.6', 'DellEmcDataProtectionCentral是美国戴尔（Dell）公司的一个管理控制台。用于数据保护。DellEMCDataProtectionCentral存在安全漏洞，该漏洞源于网络系统或产品未对输入的数据进行正确的验证。目前没有详细的漏洞细节提供。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-43588', '目前厂商已发布升级补丁以修复漏洞，补丁获取链接：https://www.dell.com/support/kbdoc/000195103', 'DellEMCDataProtectionCentral输入验证错误漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/317011', '(暂无验证信息)', '2022-02-01', '2022-01-26', '2022-02-03', '2022-02-03', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:11:29', NULL);
INSERT INTO `cnvds` VALUES (44, 'CVE-2022-22554', 'CNVD-2022-08198', 'Dell Emc System Update存在未明漏洞', '低(AV:L/AC:L/Au:N/C:P/I:N/A:N)', '1', 'DELL Emc System Update <=1.9.2.0', 'DellEmcSystemUpdate是美国戴尔（Dell）公司的一个应用程序。用于将适用于Linux、MicrosoftWindows操作系统的戴尔更新以及通过Idrac和操作系统的更新分发到Idrac直通。DellEmcSystemUpdate存在安全漏洞，攻击者可利用该漏洞导致用户密码的泄露。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2022-22554', '目前厂商已发布升级补丁以修复漏洞，补丁获取链接：https://www.dell.com/support/kbdoc/000195007', 'DellEmcSystemUpdate存在未明漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/317041', '(暂无验证信息)', '2022-02-01', '2022-01-26', '2022-02-03', '2022-02-03', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:11:29', NULL);
INSERT INTO `cnvds` VALUES (45, 'CVE-2022-23807', 'CNVD-2022-08180', 'phpMyAdmin授权问题漏洞', '中(AV:N/AC:L/Au:S/C:N/I:P/A:N)', '2', 'phpMyAdmin  phpMyAdmin  >=5.1.0，<5.1.2phpMyAdmin  phpMyAdmin  >=4.9.0，<4.9.8', 'phpMyAdmin是Phpmyadmin团队的一套免费的、基于Web的MySQL数据库管理工具。该工具能够创建和删除数据库，创建、删除、修改数据库表，执行SQL脚本命令等。phpMyAdmin存在安全漏洞，该漏洞源于经过身份验证的有效用户可以操纵其他帐户从而绕过未来登录实例的双因素身份验证。目前没有详细的漏洞细节提供。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2022-23807', '目前厂商已发布升级补丁以修复漏洞，补丁获取链接：https://www.phpmyadmin.net/security/PMASA-2022-1/', 'phpMyAdmin授权问题漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/317051', '(暂无验证信息)', '2022-02-01', '2022-01-25', '2022-02-02', '2022-02-02', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:11:29', NULL);
INSERT INTO `cnvds` VALUES (46, 'CVE-2022-23808', 'CNVD-2022-08031', 'phpMyAdmin跨站脚本漏洞（CNVD-2022-08031）', '中(AV:N/AC:M/Au:N/C:N/I:P/A:N)', '2', 'phpMyAdmin  phpMyAdmin  >=5.1.0，<5.1.2', 'phpMyAdmin是Phpmyadmin团队的一套免费的、基于Web的MySQL数据库管理工具。该工具能够创建和删除数据库，创建、删除、修改数据库表，执行SQL脚本命令等。phpMyAdmin存在跨站脚本漏洞，该漏洞源于WEB应用缺少对客户端数据的正确验证。攻击者可利用该漏洞执行客户端代码。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2022-23808', '目前厂商已发布升级补丁以修复漏洞，补丁获取链接：https://www.phpmyadmin.net/security/PMASA-2022-2/', 'phpMyAdmin跨站脚本漏洞（CNVD-2022-08031）的补丁：https://www.cnvd.org.cn/patchInfo/show/317046', '(暂无验证信息)', '2022-02-01', '2022-01-25', '2022-02-01', '2022-02-01', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:11:29', NULL);
INSERT INTO `cnvds` VALUES (47, 'CVE-2021-45380', 'CNVD-2022-08032', 'AppCMS跨站脚本漏洞（CNVD-2022-08032）', '中(AV:N/AC:M/Au:N/C:N/I:P/A:N)', '2', 'AppCMS AppCMS V2.0.101', 'AppCMS是一款用于移动应用程序下载的内容管理系统（CMS）。AppCMS存在跨站脚本漏洞，该漏洞源于WEB应用缺少对客户端数据的正确验证。攻击者可利用该漏洞执行客户端代码。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-45380', '目前厂商已发布升级补丁以修复漏洞，补丁获取链接：https://github.com/source-trace/appcms/issues/8', 'AppCMS跨站脚本漏洞（CNVD-2022-08032）的补丁：https://www.cnvd.org.cn/patchInfo/show/317001', '(暂无验证信息)', '2022-02-01', '2022-01-25', '2022-02-01', '2022-02-01', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:11:29', NULL);
INSERT INTO `cnvds` VALUES (48, 'CVE-2021-36347', 'CNVD-2022-08033', 'Dell EMC iDRAC栈溢出漏洞', '高(AV:N/AC:L/Au:S/C:C/I:C/A:C)', '3', 'Dell EMC iDRAC9 <5.00.20.00', 'DellEMCiDRAC是美国戴尔（Dell）公司的一种用于系统管理员更新和管理戴尔系统的位于服务器主板上的硬件。DellEMCiDRAC存在栈溢出漏洞，远程攻击者可以利用该漏洞提交特殊的请求，可使应用程序崩溃或可能以应用程序上下文执行任意代码。', '通用型漏洞', 'https://nvd.nist.gov/vuln/detail/CVE-2021-36347', '目前厂商已发布升级补丁以修复漏洞，补丁获取链接：https://www.dell.com/support/kbdoc/zh-cn/000194038/dsa-2021-259', 'DellEMCiDRAC栈溢出漏洞的补丁：https://www.cnvd.org.cn/patchInfo/show/317056', '(暂无验证信息)', '2022-02-01', '2022-01-24', '2022-02-01', '2022-02-01', '(无附件)', '2022-02-01', 'CNVD', '2022-02-07 11:11:29', NULL);

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `req_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8;

-- ----------------------------
-- Records of logs
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8mb4  DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4  DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4  DEFAULT NULL,
  `qq` varchar(255) CHARACTER SET utf8mb4  DEFAULT NULL,
  `wechart` varchar(255) CHARACTER SET utf8mb4  DEFAULT NULL,
  `pass_word` varchar(255) CHARACTER SET utf8mb4  DEFAULT NULL,
  `salt` varchar(255) CHARACTER SET utf8mb4  DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 500 CHARACTER SET = utf8mb4;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'LS', 1, '1948275556@qq.com', '15136169700', '8141837471', NULL, 'c6926f6e6f48bf830d87bb08eb07c3cc', NULL, '2022-02-04 15:52:44', '2022-02-04 15:53:39');
INSERT INTO `users` VALUES (2, '测试用户-zhi', 0, 'kze02z44mf@qq.com', '32325753863', '7121524247', NULL, 'ed190102864b90d03f839f2d33519892', NULL, '2022-02-04 15:52:45', '2022-02-04 16:02:08');
INSERT INTO `users` VALUES (3, '测试用户-16d', 1, 'uf361zz2hu@qq.com', '68859234236', '1218124051', NULL, 'e3bf3835f89630f1f5e883a6f5e33ead', NULL, '2022-02-04 15:52:45', '2022-02-04 15:53:36');
INSERT INTO `users` VALUES (4, '测试用户-3w4', 1, '6ytrlrywwn@qq.com', '44438588739', '7867011303', NULL, '88c2c13380db55cd7dbf6fb28df9f15f', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (5, '测试用户-mvn', 1, '8sr352g0qo@qq.com', '34305765111', '2606072408', NULL, 'b36eb9361acffcbf694f1a594336a63c', NULL, '2022-02-04 15:52:45', '2022-02-04 15:53:37');
INSERT INTO `users` VALUES (6, '测试用户-i6l', 0, 'i87zkxnvl5@qq.com', '37298675642', '9954321222', NULL, '956159289630114d53afb90ee0ae144c', NULL, '2022-02-04 15:52:45', '2022-02-04 16:02:09');
INSERT INTO `users` VALUES (7, '测试用户-gup', 1, 'msulx6f6q6@qq.com', '99354963518', '1281761676', NULL, '7f228458d9bef377d4120580210bc1df', NULL, '2022-02-04 15:52:45', '2022-02-04 15:53:38');
INSERT INTO `users` VALUES (8, '测试用户-kf0', 1, 'pfrmxfi0q0@qq.com', '94441056048', '6792020846', NULL, '0bded209f8d1dc4bd2151f87f8684b0f', NULL, '2022-02-04 15:52:45', '2022-02-04 16:02:10');
INSERT INTO `users` VALUES (9, '测试用户-2lc', 1, 'wjrab1ukt2@qq.com', '99415113897', '1674596734', NULL, '6575b361e8c7e9836a2ea6a885efdd39', NULL, '2022-02-04 15:52:45', '2022-02-04 15:53:38');
INSERT INTO `users` VALUES (10, '测试用户-xmz', 1, '4ts7q238ha@qq.com', '61253638521', '3027260978', NULL, '3c7543a06f0598a084e7efe4835e4c97', NULL, '2022-02-04 15:52:45', '2022-02-04 21:38:58');
INSERT INTO `users` VALUES (11, '测试用户-vtb', 1, '32f7dus0s0@qq.com', '71683798584', '5281884752', NULL, '4fc6f4aa6eb8c84984bb27ef5727fe2e', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (12, '测试用户-wy8', 1, 'swobh4ke7m@qq.com', '50114133340', '8175773554', NULL, '4931daa82035d46acbd2e52834ce1df5', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (13, '测试用户-mm7', 1, 'glm4ou2ngq@qq.com', '68581872454', '1283412997', NULL, '3976c52b1c45057e1a655b80bced9d7b', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (14, '测试用户-8jd', 1, 'h8k6brxfj7@qq.com', '11792725581', '6876939859', NULL, '2092a6c811c37557f642163b63c83757', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (15, '测试用户-fs9', 1, 'u38f08s35t@qq.com', '43331757535', '8567064771', NULL, '28699ffdf85fa089e30d0ee546e022aa', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (16, '测试用户-2b2', 1, 'p79mdyb1vo@qq.com', '43577207548', '8645389917', NULL, 'bb750a7823f11891eed27a3439777e9d', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (17, '测试用户-d3w', 1, 'a90za7ionl@qq.com', '99611898735', '7310355684', NULL, 'ae852e060b2819ff477ca4f4d69869d0', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (18, '测试用户-l2j', 1, 'bqmhcfko3q@qq.com', '25524466578', '3965732738', NULL, '05cbf2a8ace659b1ee650400e39d89f6', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (19, '测试用户-ukh', 1, '18aa78akyf@qq.com', '42298230964', '4906552378', NULL, 'd43ccf0b21066512720c8195d685270a', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (20, '测试用户-epx', 1, '26w9ibyxt4@qq.com', '16730890473', '1685597007', NULL, 'de7cd43da3ead685194b45219352dcef', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (21, '测试用户-308', 1, 'yio2wjnz3l@qq.com', '43379122378', '8365819726', NULL, '2ce8c37f932b479ac08487b42bda749b', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (22, '测试用户-ux8', 1, 'ogc0tbcu0i@qq.com', '95149426067', '0544569519', NULL, 'a882372f9618b6e1dd900dd178d98a8e', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (23, '测试用户-nxu', 1, 'x1wtuz3nl3@qq.com', '61214849013', '7545460821', NULL, '4037660fbffad84a826cdd30ecd493bb', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (24, '测试用户-o2a', 1, 'hgygaznw9g@qq.com', '08223531558', '0529450213', NULL, '8249ba152c865117dba32524e4b02534', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (25, '测试用户-7wa', 1, '6o42vr8luk@qq.com', '54472782327', '2785913097', NULL, 'a8f1db1930f0dc5012d09a485e908529', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (26, '测试用户-117', 1, '2b1drqpg3k@qq.com', '20778408246', '7736713981', NULL, '83111baf08f1bafda224315b61c22089', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (27, '测试用户-2pw', 1, '9j5mbt8ovh@qq.com', '89278760897', '3053586393', NULL, '88befaf0dc0de7610c0ccde10b083d82', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (28, '测试用户-4y8', 1, 'v173wuzxcj@qq.com', '00088134330', '2790293069', NULL, '0f759b3bb9035c69b709d7e6599dd8e4', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (29, '测试用户-kag', 1, 'o0okk9m7zr@qq.com', '55882049034', '6639791356', NULL, '79ad46c068c2b06a0072e12cb9973d38', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (30, '测试用户-i46', 1, 'a7jgqhyqbt@qq.com', '73331307207', '8568501346', NULL, 'afee3bcc487bbe9fec34e591aee0aaed', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (31, '测试用户-v9c', 1, 'qxtsk8t3b2@qq.com', '18125196927', '4638158468', NULL, 'f8f9ad14a14ecff5a6d291bfac6f5044', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (32, '测试用户-81c', 1, 'tow3k8ddvf@qq.com', '87162208356', '1184440634', NULL, '4bc3770229bd9e1141ba1e83f42e7517', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (33, '测试用户-e54', 1, 'cm3igvu200@qq.com', '99725130938', '3685267243', NULL, 'b01f3cf8527ff04a4fc699d6d9287600', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (34, '测试用户-8k4', 1, 'h0w8b41ban@qq.com', '38017430020', '0183299264', NULL, 'b3e68b0bc033fe0da90d8ce98db6897e', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (35, '测试用户-v8s', 1, 'oo6qyvqhs3@qq.com', '56246941333', '1563084828', NULL, '807372172ef49efc0f83511dbcda7ecc', NULL, '2022-02-04 15:52:45', NULL);
INSERT INTO `users` VALUES (36, '测试用户-690', 1, '7v6kkjkgf1@qq.com', '12965200506', '9487907909', NULL, 'c3cc474632acc7bf734b853c7420ab2a', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (37, '测试用户-h5g', 1, '81sse4ew1x@qq.com', '24320769231', '2086575514', NULL, '0fc880168b4dc74bb079ed2e332aac7b', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (38, '测试用户-ac8', 1, 'wub7gigpxt@qq.com', '23642666070', '6155696074', NULL, 'f98bd24540efcf09b7f69ceeaa5e1171', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (39, '测试用户-gul', 1, '98jayv6vbs@qq.com', '36456712580', '9541230170', NULL, '6dc6c90029eb3cd9bc43e82c516ed92e', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (40, '测试用户-63b', 1, 'rs811glaiu@qq.com', '19402467831', '9743513816', NULL, '44f4a72d79d33474da3d110759e6b972', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (41, '测试用户-y3a', 1, 'w53rc79ryk@qq.com', '41903570167', '0328049582', NULL, '47138ab294de0abd719fc00f9242c891', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (42, '测试用户-35l', 1, 's1pfchw3ee@qq.com', '97296284607', '0060062604', NULL, '95ea8afd3110b41833e5712cea60dd27', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (43, '测试用户-h5q', 1, 'e9pjtjjrxn@qq.com', '21138077960', '1393532670', NULL, 'cbe8d226034407a2798f93be85c18c11', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (44, '测试用户-206', 1, '887axgo5bj@qq.com', '13803099135', '7277210466', NULL, '7eeac3c719fbd527041162ae1d8c36ad', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (45, '测试用户-dlb', 1, 'a0pwrvd85c@qq.com', '28044979848', '8042208756', NULL, '4632214ca0b0f9bf2a2c9f8b534f0ded', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (46, '测试用户-zfg', 1, 'ku4zz4h0pr@qq.com', '41576758374', '0877714095', NULL, '22fe842109adf4f77eb0955288d802e6', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (47, '测试用户-4xv', 1, 'betofb7mu8@qq.com', '98469175675', '8702743819', NULL, '15b86c48a6900b658a74ca87ba91bccb', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (48, '测试用户-kgh', 1, 'yy7y6pr1nd@qq.com', '24039193608', '8527590827', NULL, '729421cc23ba18467d3dd48ca0fb8cbd', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (49, '测试用户-pim', 1, 'ozxzhu5cjc@qq.com', '80895417714', '4704588551', NULL, 'd54b00c4795468398db2957e086f9612', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (50, '测试用户-4sy', 1, '9fk33qqe34@qq.com', '58713095288', '8167223689', NULL, '52ef4d70a86124ac1241e31099b491e1', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (51, '测试用户-8y5', 1, '8g4qrzvc00@qq.com', '34644744600', '8454291039', NULL, 'c329805b5ccf244b98788d47504d64b7', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (52, '测试用户-lv8', 1, '5kkr77pppw@qq.com', '39232412060', '1104413228', NULL, 'c1b719e98011eb2d6266465c0d35f29d', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (53, '测试用户-z73', 1, 'qbain8zcdq@qq.com', '61051168966', '0797878864', NULL, 'f8d21c47b8b73e0b4c51245338fd5db3', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (54, '测试用户-pcw', 1, 'cu66ey76d3@qq.com', '98145144191', '3232684545', NULL, 'c80764bfd124e7d6f8d405b24d354ecb', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (55, '测试用户-5nq', 1, 'dn8tsm6fvv@qq.com', '79104842650', '0364140445', NULL, '79a932178ac4c09efcc00eb76ab093b1', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (56, '测试用户-kjr', 1, 'cxla3y8uyz@qq.com', '41406944125', '0698994573', NULL, '1ee7c7a1a6a34a75ef0d6d2fe5a3bcec', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (57, '测试用户-naz', 1, 'dr5uytz0g3@qq.com', '41130483765', '5971382527', NULL, '777f4c66ea3e3f82a9802c7b1fb153b3', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (58, '测试用户-cqp', 1, '6zxpkni5gd@qq.com', '07980463619', '0593519856', NULL, 'e8767fd01d15267b7a1c9254100c23b7', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (59, '测试用户-mck', 1, 'gb3g3e6hs0@qq.com', '10742229151', '7017089308', NULL, '35b504eb94c803038c77a5d8ac063279', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (60, '测试用户-jox', 1, 'npvlyt5x3h@qq.com', '04672674718', '5192155822', NULL, 'fd717df7e2998eaf617271049302efb8', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (61, '测试用户-bul', 1, 'dk6t5uhqkf@qq.com', '64164848688', '9952555611', NULL, '86eefdbfdd6d7dc1babf5dc675ce57d2', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (62, '测试用户-6cx', 1, '25aql0xvbf@qq.com', '90599367083', '6210971932', NULL, '4895a567916fc6acc756b9c1d68bbd47', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (63, '测试用户-a7n', 1, 'ioklz6sgq9@qq.com', '68347044325', '7545058288', NULL, '71ab5654716b30944e326ff11ea6423c', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (64, '测试用户-588', 1, 'tow2udabhr@qq.com', '38970061016', '1171438982', NULL, '5eb18201766507fb4a777e2396e58c50', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (65, '测试用户-lbt', 1, 'fnm2mjmeo4@qq.com', '85291272451', '0550034117', NULL, 'ebbab1a0a1ffa38ffca29cdf7cc64d60', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (66, '测试用户-3q1', 1, '22etdsx5hj@qq.com', '32529173322', '0878755400', NULL, 'e710e2e4e40d205e226b6cbb3f345e31', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (67, '测试用户-ibh', 1, '1pmrjibmw7@qq.com', '73719340709', '9753184302', NULL, '14c5c5df87b37cd65f46fe7eb5708bd0', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (68, '测试用户-e2o', 1, 'wt0ev1zt1j@qq.com', '48149099301', '3055790031', NULL, '1260805da145ce3e6e19e0f705e547b7', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (69, '测试用户-tnd', 1, 'sob8i4by69@qq.com', '50927594904', '2768493225', NULL, 'e7a124ccaa9874510ccc61a62813a112', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (70, '测试用户-xhk', 1, 'hobcin0bj2@qq.com', '65348834467', '4718942132', NULL, '4def723ae52a2c92729bd125a973bdfc', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (71, '测试用户-ije', 1, 'qbm96jt9yy@qq.com', '90129945679', '5393296558', NULL, 'cfe40c5fb0ea392241414e8e1fff6534', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (72, '测试用户-899', 1, 'tqd2vqtfdm@qq.com', '47786122430', '9009218814', NULL, 'c08baf3d7fbd12d981d9de4da1e7c327', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (73, '测试用户-bfw', 1, 'tsd6ian6w1@qq.com', '98062347960', '9525452757', NULL, '7fee8869a08cde5ad545d4b6abe4f42f', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (74, '测试用户-0lj', 1, 'ybwm6wrjrt@qq.com', '05052690493', '4989588306', NULL, '92b71331bc6fa5046612a43c580ba3f1', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (75, '测试用户-4qu', 1, '8p4j18i27f@qq.com', '44349410411', '6224971740', NULL, 'b4bc775197384af56708ab1d5f06eb38', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (76, '测试用户-03c', 1, 'a2r4g0x5h1@qq.com', '06028749607', '0878189182', NULL, 'c386cf3eb00f3da1e016afebf5940a98', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (77, '测试用户-cam', 1, '76190ayv6f@qq.com', '93390094299', '3018864996', NULL, 'baa7506cdfee7c619a802f9d30a1245b', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (78, '测试用户-xnl', 1, '4achyw361i@qq.com', '06680012844', '8092941747', NULL, '14c353e65dafd6451d54176dcd3bdc1b', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (79, '测试用户-qrq', 1, '58tsdqe7f3@qq.com', '00796178929', '7071302713', NULL, '6642ba50c0d981f94328feca70aa782e', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (80, '测试用户-wmr', 1, 'hnbw65lrkc@qq.com', '81335615886', '2288612064', NULL, '10fdd3f3db5573e839fa2f8c6a43ffc4', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (81, '测试用户-jxx', 1, 'y5yxafpu6q@qq.com', '87749004016', '5393389069', NULL, 'beb71ddec7b651a2a0b58bce90c6724c', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (82, '测试用户-7p3', 1, 'sfp976smbu@qq.com', '22687590551', '6239127393', NULL, 'e36381cec7b78f73d0a1455f56d636e6', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (83, '测试用户-3k5', 1, '3s53b71cjr@qq.com', '31048671012', '6253267597', NULL, 'c3fe999584afc6b4f54bdd982f518efb', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (84, '测试用户-4c1', 1, '9jpuq1v2sz@qq.com', '79143128624', '2736503125', NULL, '5aade6686524e0b9d4c9b3e8500dc96c', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (85, '测试用户-fnm', 1, 'mrk5nfogqx@qq.com', '88280793532', '1394895283', NULL, 'bbcd24856b68f20e01bd83bf0cb29c1e', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (86, '测试用户-wn0', 1, 'acsz0z93dn@qq.com', '63801476010', '8113549591', NULL, '913333e531806f9fcc6088860cbfa644', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (87, '测试用户-r60', 1, '917uelrsum@qq.com', '20364613060', '8212364925', NULL, '176fb0d2a9c9141f09c21ddf9d3d9782', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (88, '测试用户-o0y', 1, 'xub6qke4t3@qq.com', '69468207392', '3416795639', NULL, '11759e153dd8c947ffde7f93d21a253d', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (89, '测试用户-wlg', 1, 'ccbtdf9erc@qq.com', '47897033490', '3632211334', NULL, '9bae4101daafc3c2f420129a8f46eb49', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (90, '测试用户-nw6', 1, 'ogen76wzfj@qq.com', '37375060394', '0876482271', NULL, 'fa6c2a7c87ea026066e7971627d3f9af', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (91, '测试用户-8ud', 1, 'sk7urat090@qq.com', '55998002713', '8680953327', NULL, '9955ed90e1f7cfc94b53d938e6d09f69', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (92, '测试用户-b2x', 1, 'a0ljd0t7rf@qq.com', '21076635381', '9125896602', NULL, 'ca97cfaecf953bdc2e7a0884d4231275', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (93, '测试用户-pk1', 1, '2a9obntie6@qq.com', '36480503139', '8170016384', NULL, '61275dd678bac7a31f15316302663d03', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (94, '测试用户-27u', 1, 'mqy39c65cn@qq.com', '04571708606', '2009161371', NULL, 'd86f026b68617e1bcb49cf9c6e167b59', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (95, '测试用户-ftf', 1, 'drhpj3fjfd@qq.com', '12288257302', '2675162093', NULL, '1314258e823acd36c91c1c343a56e013', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (96, '测试用户-yrx', 1, '4lqlfl721y@qq.com', '17738966851', '5783880835', NULL, '50e7da0d5cbad8712a9eb54b8f2a4c63', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (97, '测试用户-981', 1, 'sfsb2yqf2d@qq.com', '12021544165', '6111102675', NULL, '51b6731cdcf74d63bd924bb3405ec62b', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (98, '测试用户-m2v', 1, '2acmrv9qby@qq.com', '31917906498', '8830703108', NULL, '657d3649016586967e3dbfd59dd1bf89', NULL, '2022-02-04 15:52:46', NULL);
INSERT INTO `users` VALUES (99, '测试用户-wu8', 1, '4i8z4lw0dg@qq.com', '54521243329', '2081230790', NULL, '871a341c399dcf57a1750ed3a9dda291', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (100, '测试用户-u09', 1, 'med024qo1r@qq.com', '50934735098', '2253581571', NULL, '6ea9cb69d3438798f7e66360995a29a0', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (101, '测试用户-cup', 1, 'wooj1apgan@qq.com', '08144322335', '0943618953', NULL, '09a969d02d0e60cd5db15c258c14316b', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (102, '测试用户-9ac', 1, 'q2cemuenwf@qq.com', '13815410445', '4481231675', NULL, '03db50325e851186d85420599b3754ce', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (103, '测试用户-2p9', 1, '4uol5tvngx@qq.com', '31286638082', '1143421834', NULL, '3f1e016b9d12a72dbd9dcb882398f03f', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (104, '测试用户-fdg', 1, 'po16ux3rkm@qq.com', '20766098152', '4889486980', NULL, '103c151f8265b2c6946761ed5d8a5a0d', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (105, '测试用户-kzm', 1, 'gcgvrh6s68@qq.com', '07742093309', '8395875336', NULL, 'ad737f85b147815263f9bbbd670f9e95', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (106, '测试用户-ybv', 1, 'vvsock1l73@qq.com', '17146966838', '7627228040', NULL, '55ab577788d3b10c400da0436f6396a9', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (107, '测试用户-wli', 1, 'lex94t2wau@qq.com', '78725511230', '5747719704', NULL, '2e7f2f5459487f136d83bd6899fc7992', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (108, '测试用户-o80', 1, 'bqu9b26u4k@qq.com', '72057647616', '4391478529', NULL, '42c633db2ea40ca95c4828a7322fa919', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (109, '测试用户-o5n', 1, '6alm0qtarn@qq.com', '92055001016', '5434073134', NULL, 'fea4fd52e2b53ac8b635dc12e8a90343', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (110, '测试用户-ns4', 1, 'ap1e789d79@qq.com', '31735559046', '3087880863', NULL, 'e2a044940d6e915127f7dee362f0d0d1', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (111, '测试用户-tbm', 1, 'v0ja097jcz@qq.com', '92387068066', '1539068615', NULL, '5c3558119388cd8749405b136da0f6be', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (112, '测试用户-jqm', 1, 'pr8oauh7c9@qq.com', '62807405657', '8348137767', NULL, 'd6a3e6c8fc85c61ee1c46811430dc5e8', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (113, '测试用户-b76', 1, 'nlo634ggy8@qq.com', '63932828806', '5621779039', NULL, 'ec9c68729b968dcede14b4b04a8d9e6b', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (114, '测试用户-wc3', 1, 'i14kgqyaqj@qq.com', '67875068014', '3844766627', NULL, '7ce30bd23d2bdfb1636a0a325519f38b', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (115, '测试用户-ph0', 1, '6p4omvihpn@qq.com', '79013537503', '2678086158', NULL, '434fd3de28c23f2d4903233347170868', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (116, '测试用户-jfx', 1, 'kwspicwxio@qq.com', '68663395406', '6239821712', NULL, '448c2c09685fe3cd3ffc41aa20107b07', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (117, '测试用户-x93', 1, 'bo71crhtpv@qq.com', '06017143607', '3888214049', NULL, '762d44b52ff9b736219cb4085ae04cf0', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (118, '测试用户-efl', 1, 'nj56xozk93@qq.com', '80312718114', '7620864605', NULL, 'a92817b76a2075faecf5b0cd041826be', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (119, '测试用户-m40', 1, 'ol4kgebfhs@qq.com', '87322335967', '0575476168', NULL, 'a0b78f0f4e7f83a9eee4d848c55d700d', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (120, '测试用户-4mg', 1, 'yka1cwm4z0@qq.com', '64579438047', '5221707535', NULL, 'ccbb7a62af31fb5b74d0ac99c8abea49', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (121, '测试用户-re1', 1, 'fhxf32zsi5@qq.com', '90967612136', '9908569518', NULL, 'b5c15aa399d2d0727aef54ff79fbb1a5', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (122, '测试用户-2f3', 1, 'm3jv8p90jc@qq.com', '25011524580', '4713373785', NULL, 'c8c24edfcd51349b3fd70ebaff4e4c25', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (123, '测试用户-xgd', 1, '0aza5w5tt1@qq.com', '63938465043', '5358592273', NULL, '7edadf4976baf213e31b257f9c622974', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (124, '测试用户-6os', 1, '4vvcs6fycq@qq.com', '69582201599', '7819357282', NULL, '39c42213ef648dab012c979a8bc1c327', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (125, '测试用户-mkp', 1, '7cuev6uw8p@qq.com', '90542629174', '0998355474', NULL, '8184d98e6fd318bd6e594ee85fa51213', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (126, '测试用户-vhb', 1, 'lf670y4nc7@qq.com', '16710876383', '6200712720', NULL, '7652ce201be26b4ed664fe3e76a4ff32', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (127, '测试用户-37x', 1, 'x7h9wjkz4q@qq.com', '18907853299', '4215770294', NULL, '4d599a456e0b24ce62325a4bd76ed469', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (128, '测试用户-smr', 1, 'fsvlfpyko5@qq.com', '13101409048', '7744134098', NULL, 'd1c5d7ec58f06ec3ca99490a1868ece6', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (129, '测试用户-grg', 1, '5tyu5am8rm@qq.com', '09462154462', '9370613574', NULL, '02db2c09e036778a98634358280e3f48', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (130, '测试用户-3m9', 1, 'lrqymkl6r1@qq.com', '92641898868', '7560461803', NULL, '31e20ea3c98c42843009c7798ee8bd67', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (131, '测试用户-yxz', 1, '73y8fttl6p@qq.com', '92624217397', '7251507532', NULL, 'ceb823fb7b3e2fc45afa257c29b5c21b', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (132, '测试用户-5g7', 1, 'o4e4ng1wcd@qq.com', '26785118987', '8414316892', NULL, '551ce4237b6b79c6d718b7825621a8be', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (133, '测试用户-sqw', 1, 'yet7dkfdze@qq.com', '61962240937', '0717713827', NULL, '1386a726ac9eb22ed074d82f27e957c0', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (134, '测试用户-hfv', 1, 'ege6gcxeya@qq.com', '64660474007', '7996784682', NULL, '4cd92e659ca53f31fbf231ffd28868fd', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (135, '测试用户-pgw', 1, '5n3bxhxx1d@qq.com', '89184944215', '2160636905', NULL, '5667856723b4e752dbb2c2d8a15c2f7e', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (136, '测试用户-rjh', 1, 'u65u3ygcnt@qq.com', '79378491251', '0497195167', NULL, '4a95cc230ff9a67887eab35854dce598', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (137, '测试用户-qdd', 1, 'tnq58far27@qq.com', '14692693471', '4269837239', NULL, 'b928b5c81b6454c1cac07bde9f56fd2a', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (138, '测试用户-rq4', 1, 'm59ayh8gnj@qq.com', '82887727902', '4749280362', NULL, '7778c0617d13f00aac923e9921a30e9c', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (139, '测试用户-73o', 1, 'lsmz22cp3e@qq.com', '67406676621', '0131018821', NULL, 'a198cd3ff80f72162911a95a6a67f64d', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (140, '测试用户-2dw', 1, 'v073embudj@qq.com', '17723454459', '8645072077', NULL, 'ca88fcd9479fc946c2d4a9f13881c69b', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (141, '测试用户-8lj', 1, 'utb8u5cf4j@qq.com', '34617102221', '0362508550', NULL, '91767066f08715acf4087475840917fc', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (142, '测试用户-h1l', 1, 'txm5isy30i@qq.com', '45787488393', '2511474444', NULL, '656d9918f906ff5820859ea2b298ed17', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (143, '测试用户-p9i', 1, 'xgmvg7rs4k@qq.com', '03368278979', '6538476441', NULL, '572de094caa63ffafedf78e7c56ab854', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (144, '测试用户-v3d', 1, 's1e3g1pb0t@qq.com', '83755497359', '9395006074', NULL, 'd89a7896cbcb933c7e6a355a7127394a', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (145, '测试用户-1fl', 1, 'u5xl7s67d5@qq.com', '81215858675', '1534115780', NULL, '1b00f58229f4607feb32462e9b4868ad', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (146, '测试用户-9q4', 1, 'e8kxxlb7m2@qq.com', '18068741805', '0823646039', NULL, 'a704fdcc6267f05b621eff31baff2fc1', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (147, '测试用户-zns', 1, '4d2tvitdsh@qq.com', '61388108131', '4603129314', NULL, '9131684c8d46d56c9710e5800f0a1ff1', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (148, '测试用户-gwa', 1, 'vdpz4yysjv@qq.com', '03603608322', '3170691387', NULL, '8172e0d7194df725ff4a3b55a778dfc9', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (149, '测试用户-tfy', 1, 'g62kx5hg6c@qq.com', '23811854901', '5376872669', NULL, 'be07b20230870e49d8f322cfb3fdd618', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (150, '测试用户-3zm', 1, 'bi0d9o7z2c@qq.com', '55815712746', '3983013346', NULL, '9555509454175cfe4353e4e447ca8daa', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (151, '测试用户-b2j', 1, '8y5uw997zc@qq.com', '81046001437', '4429045213', NULL, '10f2726afa7c2270d9d6f8ac720facdd', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (152, '测试用户-g14', 1, 'nc9ppkfsdz@qq.com', '19967623845', '9970345701', NULL, '6903c47b177e3b49b3333c6380835a3e', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (153, '测试用户-17y', 1, 'stbgqj1gzl@qq.com', '73134215075', '9219514377', NULL, '1d9022c21fb0a06f76c059fdf6c579c6', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (154, '测试用户-kyx', 1, '0cehkiogrp@qq.com', '54184981974', '3509968229', NULL, 'a2ae4cad84e59be0dd5d733f2eacba05', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (155, '测试用户-6cq', 1, 'x14xlzt1x2@qq.com', '85818812457', '4156329883', NULL, '02c8c6362f73faac883094c6fcb2c5a5', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (156, '测试用户-usx', 1, '3oqghplryq@qq.com', '52987203613', '3793312719', NULL, 'acd21e2b91fab481f6e186de403e5731', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (157, '测试用户-6sr', 1, 'i142q0617g@qq.com', '94622123189', '6064131375', NULL, '8f0fd41bd512efdbada1ec04b7997005', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (158, '测试用户-69m', 1, '24tw82ojce@qq.com', '72323813892', '3303241138', NULL, '6acc3a1c8ef5a29a89c47ba4c65d833c', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (159, '测试用户-dz0', 1, '8b6440eo2w@qq.com', '53192817433', '4780982245', NULL, '549ffd2094f48d01612c104a7525d7b3', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (160, '测试用户-3xb', 1, '7d264z53f8@qq.com', '11338694318', '8453534687', NULL, 'f8db93cf77785d9db86ec2262e60a9ec', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (161, '测试用户-uj4', 1, 'c0bghdz374@qq.com', '29734539055', '2783977192', NULL, 'ac6fc43fbb1ad61fdd18e555f5cfe7e8', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (162, '测试用户-oam', 1, 'zpdgzz69lm@qq.com', '26397824547', '9213242273', NULL, 'b65157b4afccb6d348a5c8cb36cb9183', NULL, '2022-02-04 15:52:47', NULL);
INSERT INTO `users` VALUES (163, '测试用户-u0i', 1, 'pv2gijqtrn@qq.com', '65018377093', '3244754548', NULL, '1e82bebca8fdba505cab2a8ff283c150', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (164, '测试用户-qde', 1, 'sakb64gqk9@qq.com', '74809094962', '3442866723', NULL, '79a23bb126dbfeaf94d9863b5450b3d8', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (165, '测试用户-i95', 1, 'xh4vhaepao@qq.com', '90049931512', '2280229066', NULL, 'dcb49a54f498ae1a0cb5f3a5f24d6b65', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (166, '测试用户-d28', 1, 'xexzuumrpj@qq.com', '35984952810', '8557745463', NULL, 'c7971b893db1d3bcc4309202f4df20fc', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (167, '测试用户-evc', 1, 'g1gcpy4vsk@qq.com', '67593129497', '5649921064', NULL, 'b13b692901cfa6b3471e15dc2cdad4d5', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (168, '测试用户-x3f', 1, '6gabdphgat@qq.com', '58460550877', '8630350075', NULL, '619322f32fc1d861f5de65206db6dcca', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (169, '测试用户-nrg', 1, '0qjk21rs4l@qq.com', '89708602864', '1374166399', NULL, '781a5fb1d7391dee861a6f265913f7bd', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (170, '测试用户-smc', 1, '09te9y55bw@qq.com', '00758487713', '0142161249', NULL, '09be0c201a5b1fa38bbf2ea9e2f10ff9', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (171, '测试用户-vap', 1, 'lcu2r6ktbg@qq.com', '40777634249', '3160682654', NULL, 'f6b09b10c214492d7699428552a935cb', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (172, '测试用户-11o', 1, '7ktviir397@qq.com', '05835686619', '5061515130', NULL, 'c471fdfaca9fca7d0727d8ed61d0c2c7', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (173, '测试用户-3ss', 1, 'ic3f2c5vl4@qq.com', '40891481268', '3752186401', NULL, 'e7038879fe5e1b2c94b77395e8f17478', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (174, '测试用户-y32', 1, '3bo5d9mu37@qq.com', '85145719053', '6082292614', NULL, '06375523f018b62f7ac51014f20c41bf', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (175, '测试用户-87m', 1, 'xu0t0pmzrt@qq.com', '60209901462', '3833366640', NULL, '6c4a5b1e1f20a148e59f49acef124497', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (176, '测试用户-76e', 1, 'dz8gjjveyo@qq.com', '04635713423', '1546402663', NULL, 'e968039f1f5a3e2b9d23500435759704', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (177, '测试用户-a0s', 1, 'p5lzigy8nl@qq.com', '16583473909', '5616888208', NULL, '6f262465e0f0e73f6e6108e13f7654bf', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (178, '测试用户-ou0', 1, 'hc5zfobd8p@qq.com', '95825383101', '2879299093', NULL, '7916b3e845fe68fc5eca5a67132ba216', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (179, '测试用户-nwg', 1, 'ih4gc6tfpp@qq.com', '40451146802', '5774357312', NULL, 'ac318e9c6d7892dbe23a4dbe08e8e258', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (180, '测试用户-43x', 1, 'c08fg72m90@qq.com', '11194830176', '9218746983', NULL, 'ce78476509a783f569f64ded0bc4daa1', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (181, '测试用户-k9i', 1, '389zyo2l2z@qq.com', '40252026310', '7024403889', NULL, '22a2ebbd306c5d5b306e6370f5972641', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (182, '测试用户-l3n', 1, 'oz2bh3szhb@qq.com', '21577989544', '9555017082', NULL, '82fa460bf60679a4914171c0130dd1ea', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (183, '测试用户-ll7', 1, 'b5dxtoxlpc@qq.com', '85977152720', '5603400535', NULL, 'a6f00da63ea29347fa49208f8e5a0ff0', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (184, '测试用户-dv9', 1, '8excvda65a@qq.com', '37324535174', '2383428381', NULL, '8da9b532464e467f8ea3169d5b697e30', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (185, '测试用户-q56', 1, '2wc5wvs2eo@qq.com', '65539544592', '6688689387', NULL, 'ac91d61ed19e4d549324739921165319', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (186, '测试用户-7on', 1, '8xjg81kmw9@qq.com', '92944765183', '3956637427', NULL, '714be106449e3fd08a773926ab0f4c3e', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (187, '测试用户-sv6', 1, 'm3a7zqqwzo@qq.com', '16970099669', '2324644203', NULL, 'eec82a76bdc22e90dbebf107c8a47f3a', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (188, '测试用户-w7n', 1, 'v2pm6qc6e4@qq.com', '79751190889', '1041143539', NULL, '0b9bd445acbd805bfcf769da22640144', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (189, '测试用户-k1x', 1, '6ex0blr9ss@qq.com', '00459883366', '0686249647', NULL, 'f7e70cdadd62bc47e4c92db800834808', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (190, '测试用户-zvb', 1, 'xh6r07v5eu@qq.com', '35060151917', '9378068705', NULL, 'd856024207e290928101525c1531c1ee', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (191, '测试用户-s6u', 1, '2rmanf7w4m@qq.com', '03227083974', '2649821664', NULL, '89fe39afdfb7841dd260702b63595f88', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (192, '测试用户-110', 1, '6nnxe7hjvw@qq.com', '39141189716', '1643298272', NULL, '214c16889ec1fa04af8810d6200b4737', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (193, '测试用户-rzz', 1, 'xmuzp7yknv@qq.com', '67666082047', '1011072768', NULL, '996c9772b6ae96eda83450a4a28bb293', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (194, '测试用户-b2k', 1, 'r0h6cc4u3r@qq.com', '39068664560', '0843112992', NULL, '3ba77a418938375abe1ef29ce8bed0df', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (195, '测试用户-ugi', 1, 'q132uy720o@qq.com', '92242050170', '8493660317', NULL, '2f8076df3b400603ab849572e433d99c', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (196, '测试用户-7ku', 1, 'jnvqhafmlb@qq.com', '00981618794', '1040301500', NULL, '5faf2e9d654e3146a9224521bd5e762f', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (197, '测试用户-txa', 1, 'oncawams1u@qq.com', '46731525816', '7531005735', NULL, '08f8bf8ad43adcc1656dce5cb91575b7', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (198, '测试用户-nv5', 1, 'v384tczhj1@qq.com', '39097008334', '8909070469', NULL, '1400ac48c5d52ebe986944c915838f2c', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (199, '测试用户-oy2', 1, 'qwr8zmbzss@qq.com', '70405535378', '6605171432', NULL, 'c874acc7184da7c0e1beffca3067dcaa', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (200, '测试用户-yuf', 1, 'ecb9lc3obf@qq.com', '01504301873', '9319986733', NULL, 'cf2ea88007a1773b55fb5986c9c3fab5', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (201, '测试用户-cll', 1, 'j1wwem2sqv@qq.com', '96317106411', '9665025383', NULL, '2657c4ffc81687bc6a31b457a13219e2', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (202, '测试用户-fxz', 1, 'hvki8edskh@qq.com', '18884615976', '2420484018', NULL, 'cb2977131acec21940c75c56cebc7b26', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (203, '测试用户-q4b', 1, 'uif27pl4ze@qq.com', '50839518192', '3639586207', NULL, 'fa6940bd44201fa31318e5996272432a', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (204, '测试用户-fdj', 1, 'tvrmtpx8ux@qq.com', '31700901400', '8506235006', NULL, 'be5febb73b18044fa7849c15b1249c43', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (205, '测试用户-rim', 1, 'm40r7hct4k@qq.com', '13548593646', '5828652104', NULL, 'a27fa17f15d945faa380b3d4b3db3161', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (206, '测试用户-3mc', 1, 'q3c7pq6arq@qq.com', '55705953627', '1786538477', NULL, '633b58a39c0fc2f2cc0080b1fb19833e', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (207, '测试用户-k9f', 1, 'hrvktptcsc@qq.com', '57665475822', '1842277426', NULL, '73910edd170b331c067a254754605d41', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (208, '测试用户-si6', 1, 'aet4guyae6@qq.com', '53638978428', '2762944494', NULL, 'c9bdd6d4957a616f0e48ff26231baafe', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (209, '测试用户-aws', 1, 'bh806x1jj4@qq.com', '06443894186', '7186177069', NULL, '7defeb0c0c23718d1275c3a722dac792', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (210, '测试用户-huq', 1, 'ddrfajcl5j@qq.com', '75040703255', '2179616397', NULL, '229dd07f458fa6024d0d9c197dad1ba1', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (211, '测试用户-inw', 1, 'dtq23cwrdt@qq.com', '50592189469', '7927242164', NULL, 'a7bc5266451b4636c521eae4a229214c', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (212, '测试用户-toc', 1, 'cwuegh9f19@qq.com', '79563684651', '6701864043', NULL, 'aca5ae4297753d9050f5ca50c92646dc', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (213, '测试用户-rd7', 1, '4ncplsrfr0@qq.com', '41993172526', '5732048743', NULL, 'efad9c87032dfa434480502dc84406b8', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (214, '测试用户-bln', 1, 'x5e16gfbe2@qq.com', '77118661053', '1208003340', NULL, '395400d6268939d2267b17353166f449', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (215, '测试用户-bqr', 1, 'w1yrpy4k8l@qq.com', '71805577037', '1994140970', NULL, 'c050e7c3d60be2750de54591ebcf7a57', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (216, '测试用户-vk8', 1, '1ylxbr6o1w@qq.com', '85360343227', '6668888792', NULL, '77825a461e0fe81b0938b00e2b607c8e', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (217, '测试用户-f42', 1, '6pg6v2jxdz@qq.com', '21316629818', '0346541664', NULL, 'f67038bf3ff37a4d8fee061a214d8844', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (218, '测试用户-vr9', 1, 'fomwkxjbiy@qq.com', '17541799131', '9804087052', NULL, 'fa0d1ec192f11877bbf6f74597a6281d', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (219, '测试用户-zfa', 1, 'rvta95b0dq@qq.com', '65772839477', '7228348868', NULL, '08cfacd599b683ef800433c02e59eac5', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (220, '测试用户-i2a', 1, 'w5bym9069u@qq.com', '75465789553', '0529799705', NULL, '01876c902fda5c68e06c1b5081111e7a', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (221, '测试用户-pfx', 1, 'yypccvwzbz@qq.com', '32954124747', '8696102604', NULL, 'c2f8aaa639ac49f7ba639d72e6d0b295', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (222, '测试用户-1da', 1, '6ogx485kso@qq.com', '21644806457', '3511091489', NULL, '49f5d0cb4c5adfda4b004def4b2864c7', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (223, '测试用户-x0v', 1, 'aixmogp9td@qq.com', '44644888615', '9088646282', NULL, '1b421640d8c7bd1d6901eb7b26e67e49', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (224, '测试用户-cjt', 1, 'ut9jscge6c@qq.com', '29200637803', '1255938971', NULL, '21a9d41537212c2cf60a1e3d3db7ba65', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (225, '测试用户-i5v', 1, 'xmkntmm71s@qq.com', '52164494145', '1775774322', NULL, 'e8fc6286d3dd49e568957b45f08e33a0', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (226, '测试用户-r3k', 1, 'eat2mdkayz@qq.com', '35128892261', '6555050565', NULL, 'b9a692a5fa18aaa3051e7c61e3b10354', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (227, '测试用户-nyn', 1, 'dfjw7im18q@qq.com', '31561674854', '2584941345', NULL, '944e078aef987f042521476c160747b9', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (228, '测试用户-kt3', 1, 'af3rgadx02@qq.com', '43731256872', '9416618357', NULL, '69670b33b5f00533b8ad0426c400cc14', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (229, '测试用户-7ko', 1, '3ifwo15hiq@qq.com', '49936797359', '6031990891', NULL, 'b9cb48f061ead7a9e298ec2ded75c51c', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (230, '测试用户-33x', 1, 'o77adus1xc@qq.com', '66426896749', '2927509098', NULL, '0b80c0316a474adb5d759891cc10be73', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (231, '测试用户-r07', 1, 'wr81lfiu2e@qq.com', '95945002566', '3866388059', NULL, '432b1a939daedd2fdf6b17785c7a184b', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (232, '测试用户-mtd', 1, 'u40cqy6tj3@qq.com', '86784005926', '0376180575', NULL, '2c571a100f38d53e015a6239b9c395c1', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (233, '测试用户-wl2', 1, '5804f6tmmj@qq.com', '89819501610', '8281306835', NULL, 'e7e01a569f05c6c397307d4ea6b5fbf7', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (234, '测试用户-4ag', 1, 'nl0k86s29b@qq.com', '90586233326', '0655230886', NULL, '0b96da59431e44d211a3d17a6840bdb7', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (235, '测试用户-fr9', 1, '4ycs44phl1@qq.com', '96764196561', '2696198750', NULL, '73d840c4c065108bbda3857870b99c3b', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (236, '测试用户-h6m', 1, '07mkbbzxh7@qq.com', '84382543616', '5909154675', NULL, 'e0bfa18f4a625ace167d5f8074811938', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (237, '测试用户-s48', 1, 'wzf366w79s@qq.com', '72376605467', '7745936132', NULL, '8cb5b57092e69e15390a4a7c91b303b3', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (238, '测试用户-8p5', 1, 'f94a8et58b@qq.com', '61061078175', '6278097136', NULL, '0e9931b1d5707cdc46d26de2594b81c6', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (239, '测试用户-4cd', 1, '58c8cm8vej@qq.com', '03851764604', '6294971022', NULL, '4d0621c1a44baaa32840355ec3508469', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (240, '测试用户-32x', 1, 'tllrqqfn1b@qq.com', '31695655277', '3740592880', NULL, 'b0be0aaaa7c2191ba4fbbfa7c40ee35e', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (241, '测试用户-ehd', 1, 'q1q476dck2@qq.com', '44982599500', '8147023322', NULL, '5f4c1eeb9ad4b6bfbfcde6854c8a3471', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (242, '测试用户-ezu', 1, 'svp7d8w0a9@qq.com', '05728939089', '2126165026', NULL, 'a8458e8fc1abb4a33245e5c645ecf8a3', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (243, '测试用户-jfk', 1, '7fz4gr5iyv@qq.com', '17689149590', '4944592500', NULL, '1e08d51ad97bee6db046aff25372bc31', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (244, '测试用户-ot3', 1, '3kkw13nxbx@qq.com', '63736242477', '5724973011', NULL, '8347849b904c60a5f99a43587b71df82', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (245, '测试用户-h3c', 1, 'k852ajv115@qq.com', '68568625465', '7646856819', NULL, 'ddfef33112626dbcbe9aa9f48ba2fd8f', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (246, '测试用户-ucy', 1, 'uy9d0w3vi2@qq.com', '67190858657', '8233463535', NULL, '8ca986a5a30927e4f9549ee94aad3e2e', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (247, '测试用户-42v', 1, 'koc40g1s4a@qq.com', '43961118180', '5761541504', NULL, 'dd5f113fd7c2abcc60d278f7c5d97078', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (248, '测试用户-q6y', 1, '593eki4nqv@qq.com', '43918677137', '7660244726', NULL, '3ba18e4ceedd2b9d9360ffd84c414f4e', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (249, '测试用户-k9o', 1, '783kt85utz@qq.com', '09832944376', '2473967144', NULL, '20c72cab56f62fe2b66af16b914550d2', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (250, '测试用户-ya9', 1, 'moqmvk8lkd@qq.com', '98204453960', '9874912569', NULL, 'db00817be73851b661c194511c9d19fb', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (251, '测试用户-5nt', 1, 'hrnzx5ot50@qq.com', '41152317467', '0002474346', NULL, '4cae3bb5edc989177626d48be513aa93', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (252, '测试用户-tzy', 1, 'ox5bdu3qwp@qq.com', '25796238275', '6536695842', NULL, 'c981daccba0dca6a1584ed33a9bd2384', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (253, '测试用户-pua', 1, 'vc7mynsob7@qq.com', '95477553213', '7106716017', NULL, 'e882183f2fefd6e28b15b85297514209', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (254, '测试用户-u7m', 1, 'rjdmdgqde2@qq.com', '08132684968', '1019811849', NULL, '71cf81446cbf9cdd0b95bd09a41032b6', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (255, '测试用户-ef8', 1, 'dgz28ltl61@qq.com', '44862759740', '1280124432', NULL, '47f3bbd727c5239efc6c39a7584ef222', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (256, '测试用户-n3t', 1, '857t6abpdd@qq.com', '47110728217', '1967803880', NULL, '40507fec47f252a113e936b99928fcde', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (257, '测试用户-o2y', 1, '8tstupb2fu@qq.com', '06470815695', '3487618853', NULL, 'ac5447de9c29e838850aab45890a4168', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (258, '测试用户-llt', 1, 'lcz0iqth6p@qq.com', '41820844663', '5808154553', NULL, '26ce9a22ad5f05825f4023edd50cb61b', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (259, '测试用户-ngi', 1, 'hsice2r9sk@qq.com', '29656853234', '7813413465', NULL, '324ff1453bb28ea88898813592815f00', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (260, '测试用户-pwx', 1, 'ke8cu2tqx0@qq.com', '22292099646', '8346097527', NULL, 'dece1d345440c4cb567b21fb8256ca3f', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (261, '测试用户-5og', 1, 'vq28fddzfx@qq.com', '10888759901', '8412353341', NULL, 'f5629deb3935dafe253f292280b55870', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (262, '测试用户-0ua', 1, 'zr12izxhp7@qq.com', '25894505768', '9480813435', NULL, 'caac03ebc9107c94528be067d669121b', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (263, '测试用户-ymb', 1, 'gjewd1svfi@qq.com', '45316504982', '5417570268', NULL, '61c5dd71e6b16511523c5b4d8987051a', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (264, '测试用户-eac', 1, 'zvjjoom7ax@qq.com', '70527177399', '8542115294', NULL, '36bdb9aedac99c5be1e8fe92d97f1d96', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (265, '测试用户-n9g', 1, '6nc0aypvtn@qq.com', '89973126533', '2942210985', NULL, 'ef4d34140a0c1e5ac0bcee49bb0dd19b', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (266, '测试用户-y0l', 1, 'q7ggzc953m@qq.com', '04411270557', '2030948553', NULL, '6bfb57f8cd1ebde688fc2675cb949e41', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (267, '测试用户-k8j', 1, 'onb7d0u7rr@qq.com', '04968563144', '4728491289', NULL, 'cfb10db4050424a9f2966ca9b135e687', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (268, '测试用户-6hq', 1, 'av02jew3c1@qq.com', '84811707567', '1288023241', NULL, '1c62bd70d97fad4292167ed552212b80', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (269, '测试用户-kht', 1, 'a59idyj4hp@qq.com', '46937509761', '9891217475', NULL, '24ef911ef930f83245ec03c66da3a4e8', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (270, '测试用户-bur', 1, 'yyylxa4f3b@qq.com', '35288499912', '6785603228', NULL, '7f95a352e6c9a0f84772a6c3da6effe4', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (271, '测试用户-8x9', 1, 'mbpbz6ji4t@qq.com', '68118761907', '4847694618', NULL, '12ec657e5745f2b65b91c75fbc8c2bf2', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (272, '测试用户-5nr', 1, 'ssf09y5i4d@qq.com', '31750795102', '7142731897', NULL, '6ecf681594f6d7a38e9273fec6359bad', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (273, '测试用户-h1v', 1, '3shi1bqg5s@qq.com', '61421933150', '4066843211', NULL, '665f2dc33cfb6c01fd95f45119c54c4f', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (274, '测试用户-5sa', 1, 'pxbkv32rdc@qq.com', '53743482201', '5620249035', NULL, '31127c9649f1a9b91882df3f9548cbc7', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (275, '测试用户-j37', 1, 'ms3zmebbe9@qq.com', '82597821598', '6360605759', NULL, 'b2e73a0ac6f6d1daa24d9c41afb7b96d', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (276, '测试用户-c4v', 1, 'brg1r8vfwf@qq.com', '54102295212', '8351489648', NULL, 'a9f53db59f93021f67bc99f00280e075', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (277, '测试用户-yil', 1, 'g38dk99e28@qq.com', '35775767728', '4261102335', NULL, 'b4205c539a4393bd206e4d7af5cea771', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (278, '测试用户-zjb', 1, 'qr05zckbf2@qq.com', '26858736564', '6151735608', NULL, '9f67c5586efb5796eda2314bd29a0070', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (279, '测试用户-nnn', 1, 'dywdayyj1f@qq.com', '14773951850', '2778840034', NULL, '0ab1e29f6261733b7c330ed85b537108', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (280, '测试用户-37y', 1, 'choxv5rd0p@qq.com', '69288581237', '6103661212', NULL, 'db693ee46a7fabfb1089c1b216372757', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (281, '测试用户-99o', 1, 'xosi8vmvgx@qq.com', '57453875653', '8461030013', NULL, 'd41e63f1a3eb9d54a73df64ebdf45efe', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (282, '测试用户-lr5', 1, 'jot0lx1lmj@qq.com', '96207974685', '5509351224', NULL, 'fb3454755fb2b8e0ed6fcfe81d7aa26d', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (283, '测试用户-pqv', 1, '6hhlkgovj3@qq.com', '05778159254', '9264384167', NULL, '0aa58e4b1c3e4c4031a2ddc57c088772', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (284, '测试用户-86g', 1, 'doh3wd6rr3@qq.com', '99000841748', '6822018832', NULL, 'ae7946cd71b296df5edd7f36e131daba', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (285, '测试用户-z37', 1, 'vo1eje3mwg@qq.com', '81949880877', '9455479142', NULL, '0db7c3e2bb9521587972442e0f35cfc8', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (286, '测试用户-0ij', 1, 'eydv53vknt@qq.com', '62504193119', '7516930417', NULL, '5e412418cada7d49b58d15b06e7f170f', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (287, '测试用户-m1z', 1, '8sik1p1j7j@qq.com', '01073395979', '6502317337', NULL, 'd50ec8d1d439da5f25e5be207c7167b3', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (288, '测试用户-6nt', 1, '8lnb4fh2su@qq.com', '82533623945', '2458898504', NULL, '93817d58ffd7451ee3e31f357581e29a', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (289, '测试用户-4tg', 1, 'novsp63yfy@qq.com', '64271664258', '6954753564', NULL, '445851227bf84062463c09a5c9f09569', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (290, '测试用户-3z4', 1, '7lfertgomk@qq.com', '36540310273', '3600303233', NULL, '612c7aaf6ba89ae55772b5a9980afd5b', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (291, '测试用户-rs0', 1, 'lcapdve0ty@qq.com', '03194403848', '8574915782', NULL, 'f6ab3e8eb2a084ce370c569d75417aea', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (292, '测试用户-2kb', 1, 'dfv11nro1c@qq.com', '17497515890', '3783245306', NULL, 'da95747835a66a503e8532623b66edbe', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (293, '测试用户-sab', 1, 's93ts0w5om@qq.com', '88891417032', '1672675550', NULL, 'c15407e7758946c9203f03d4a2082a88', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (294, '测试用户-3nh', 1, 'boch5y3003@qq.com', '53952293578', '3168630074', NULL, '4e85bb419e650c0f2129947457e11f11', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (295, '测试用户-56c', 1, '83iakr82rr@qq.com', '21071543189', '0170826587', NULL, '09f1e08715a68e07e354119cbe619682', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (296, '测试用户-mh7', 1, 'rlb91k27gm@qq.com', '60130137483', '3406782159', NULL, '2b1693b0a1dccdbb7a35ab50bc80522e', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (297, '测试用户-tmr', 1, 'gm6nzdd0ju@qq.com', '61511784389', '7813144221', NULL, '335b17ba5a4f46a18f6b70898daf6c7f', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (298, '测试用户-91g', 1, 'kqhsnf7ric@qq.com', '20560977874', '5889899244', NULL, '905e039bf841cd6928a8105b1ba0e04a', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (299, '测试用户-bfx', 1, 'r17fpla9iy@qq.com', '22136392302', '4740219272', NULL, '7cdf0d0c383a485e1b0425c110218531', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (300, '测试用户-so2', 1, 'knbpllod9b@qq.com', '12169661836', '8834591983', NULL, '92b2fb0e3964e8021c65d5a127572952', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (301, '测试用户-so2', 1, 'mo38f0rg81@qq.com', '39939730136', '8976466360', NULL, 'ec298b91e15d8be1ffd47bd53d9331cd', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (302, '测试用户-60m', 1, '8l06tn822g@qq.com', '93896972826', '9250166562', NULL, '09fb4360918635af2033f4d507b610f0', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (303, '测试用户-2r8', 1, 'gagahnm41l@qq.com', '11420780629', '7523753429', NULL, '10cc42f049a8bfd71555c768057e4a6b', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (304, '测试用户-avu', 1, 'uvhx37o9ip@qq.com', '63846160676', '1216825334', NULL, '2bb3a9544dc0675d19eefbefb4c6d3f7', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (305, '测试用户-16a', 1, 'oinz8qkzf3@qq.com', '15772526420', '2252017739', NULL, '55235d6a25746fbedff95d90c3ea11d6', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (306, '测试用户-tqx', 1, '0qotdzzxa8@qq.com', '88336717118', '3345073413', NULL, '31eda49b28b6d6c05fe08efb53b2b14c', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (307, '测试用户-920', 1, '6hnl50ylnw@qq.com', '99198025247', '1734051354', NULL, '38e06865d97fe4da168a154a648efe46', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (308, '测试用户-myr', 1, '4hwajxont3@qq.com', '42579858122', '2805373198', NULL, '49ffb89754462f091f22ed13ae749e40', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (309, '测试用户-1hb', 1, 'qkbf40n423@qq.com', '99157926876', '6109831282', NULL, '16b734cfdfd3877b30f2614bfd0d135f', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (310, '测试用户-bb8', 1, 'fc1tpjlno7@qq.com', '74535400640', '3506081400', NULL, '156f8571edab1f14a735f52491e5055d', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (311, '测试用户-itw', 1, 'eytv502a72@qq.com', '40501567822', '8664448869', NULL, 'e4e8fa02f2192f9ab95c616abd872217', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (312, '测试用户-9r8', 1, '4i7tn12o5a@qq.com', '70871919506', '4985054897', NULL, '009cbc616465c42675cdfb2ff83b55c5', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (313, '测试用户-fnn', 1, '8c7t94tcxi@qq.com', '22812332963', '9290468062', NULL, '99b602601f209ca7c9c7fc161d50aaaa', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (314, '测试用户-4av', 1, 'ukcf9p6fgt@qq.com', '09286930681', '1898784385', NULL, '99f30357535c51cf41818b20baa34d0b', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (315, '测试用户-2v4', 1, 'tj3nkeg8q4@qq.com', '24180590945', '4468802884', NULL, 'a4934442b4e57fa394d27cb2404c1192', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (316, '测试用户-aa7', 1, 'fcetntm487@qq.com', '82965214944', '5256827897', NULL, '8aa0ee6cceba25175afcc0deeadfd5b2', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (317, '测试用户-0b3', 1, '074zjq1blv@qq.com', '87184272461', '2251112312', NULL, '37d374f9cb8a28e30112b3e2f8978655', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (318, '测试用户-mit', 1, 'bytgaqtg26@qq.com', '46900135007', '9150381194', NULL, 'a98eb19e883b84c87d4e77b490973c95', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (319, '测试用户-5ji', 1, 'dk8rfqaihf@qq.com', '70353660986', '9823828546', NULL, '5eea44e5a14e954853e26f1349e712ac', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (320, '测试用户-33j', 1, 'vt2ulrqksm@qq.com', '25060331355', '8291512482', NULL, '0f2817806fce3f86d1c13c335fd55b4a', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (321, '测试用户-bm1', 1, 'smt2qgneh4@qq.com', '64019388565', '2097588234', NULL, 'f3f904ade814b08c2a5a0db17e3f11b6', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (322, '测试用户-q49', 1, '5nvsit0556@qq.com', '79785400399', '4193202537', NULL, '649660bd12cd2b5b395ecf99d5d48f9c', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (323, '测试用户-1zv', 1, '0q2qj50vgz@qq.com', '52147376568', '1560377605', NULL, 'ab12fc66fac724b128094b7627913e85', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (324, '测试用户-j1c', 1, '058wk5w5mm@qq.com', '10680451558', '0418812872', NULL, '0fb232fac7407b6bd3101dd81ee76a9b', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (325, '测试用户-wca', 1, 'fwbilsw7ld@qq.com', '48071219450', '9234923054', NULL, '823bc6c91c9c1cc5ecb7b255a0559784', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (326, '测试用户-vs6', 1, '05qsdkkgx5@qq.com', '34178854993', '5047551123', NULL, '46e9309a99411b61390c0099092ca412', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (327, '测试用户-k28', 1, 'c2s1r2fede@qq.com', '40566522826', '8926647782', NULL, 'ba9fbd622ad9fad1790c2929a2c4ee3a', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (328, '测试用户-gr0', 1, '71sg4fivyg@qq.com', '60730392334', '4529772365', NULL, 'f8270cdffc86c212b7d9666c6a65707d', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (329, '测试用户-tto', 1, '2bgslh3t2f@qq.com', '31702582607', '3636442675', NULL, 'c2429a30f3984a39661243118ca1ba97', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (330, '测试用户-n2q', 1, '1z2igf1k3d@qq.com', '33865046322', '6017675697', NULL, '46b15484275b68ccdf76d1477b4c9aa2', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (331, '测试用户-72i', 1, 'cqsia449xc@qq.com', '31215813487', '5641795051', NULL, '02beed3213e837005e9186f910aa0ed3', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (332, '测试用户-bmt', 1, 'onqsw8bhd0@qq.com', '95533331937', '9474615647', NULL, 'dd9bec939f5f14af5ba083c2a0a1d0ed', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (333, '测试用户-yiy', 1, '038m33ak8h@qq.com', '52165489210', '3655371663', NULL, 'a63a9b995ea1be01a8fa4bc9dd602d04', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (334, '测试用户-zvq', 1, '1brgcjyml5@qq.com', '81638398941', '4671308409', NULL, '1b62cf49cf12a8b52d66f1112dc5bf24', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (335, '测试用户-g7s', 1, '7qwt5fezms@qq.com', '60365712341', '0038183351', NULL, 'df2647c07262cb0ce2f63a13daa98201', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (336, '测试用户-4oo', 1, '47mg0ifxxt@qq.com', '45094058455', '7976670806', NULL, 'd4bc7762d82a1c3c31ad668a9b45b846', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (337, '测试用户-iq2', 1, '1ejkp8gu5t@qq.com', '12882214959', '0213768220', NULL, '41270eb4f5c2689a0366cf5d092d4852', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (338, '测试用户-5ka', 1, 'ojw717dqpm@qq.com', '49616383334', '6221021407', NULL, 'c431f58f6a62ee7cd20eb44088763f9a', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (339, '测试用户-0wf', 1, 'iz939c3laf@qq.com', '51456377131', '9368097839', NULL, '68c1c03871399764bb11d1caf77e2251', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (340, '测试用户-u82', 1, 'oi4xcdnyva@qq.com', '27054735292', '8684449789', NULL, '51f05846771aab4470616a41609eebde', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (341, '测试用户-q0q', 1, 'gj7qiit3e4@qq.com', '67616089243', '0373284761', NULL, 'e47ed50bca3ef8b2ce45933f9d84edff', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (342, '测试用户-2e4', 1, '34p7iervab@qq.com', '37433783622', '6616843172', NULL, '6f96ebeff46c80e6ea7f1a0f3eb13da9', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (343, '测试用户-eu1', 1, 'ojn43qmu7m@qq.com', '47488648874', '6695013043', NULL, 'dc10e8187481a5d6dcd3a553754a7ad0', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (344, '测试用户-ok0', 1, '00xym72t37@qq.com', '03922665154', '1237721450', NULL, 'db27fefd13b9d44444463a3ddad28fd4', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (345, '测试用户-i0d', 1, 'j8t12cfl14@qq.com', '59257685013', '8215906311', NULL, 'b38ffdbcf29c443c13c6a92aef384638', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (346, '测试用户-hv2', 1, 'mryd9dpr04@qq.com', '92643546868', '6691099844', NULL, '1fadf208b39857fc9a5c970e044fab8c', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (347, '测试用户-30g', 1, 'c2bl078wuz@qq.com', '59692554709', '4769874854', NULL, '828ca795e9ceee150d6c413f0a4ba2ee', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (348, '测试用户-b9v', 1, 'es4f8e9kqb@qq.com', '18893567152', '5842858448', NULL, '4164f032efe139826b611751f2772912', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (349, '测试用户-43w', 1, '42a3ry3lmx@qq.com', '72128790160', '9116138293', NULL, '850e6296f29e1d85f015d689ad93f2db', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (350, '测试用户-fiy', 1, 'v7l0aqcvfj@qq.com', '38066217557', '9261652353', NULL, '4f13a6b57b9c3c22d504e88c94e6a6fe', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (351, '测试用户-zqd', 1, '60pwp0yemh@qq.com', '61188997289', '7753877782', NULL, '33af2bbe9e27799575cd94b08b4d0f68', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (352, '测试用户-wka', 1, '635bozjp1z@qq.com', '61998350183', '9978179151', NULL, '4d261973acebab052de6fc0274e6de81', NULL, '2022-02-04 15:52:48', NULL);
INSERT INTO `users` VALUES (353, '测试用户-a8w', 1, '1pmm7yfzq3@qq.com', '95653332659', '9935634522', NULL, '342cbe65d5b77ac256df428bde48757f', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (354, '测试用户-q74', 1, 'xl770ajkqc@qq.com', '38395225486', '4373614571', NULL, '4edbd6c61e219d10a3901f7e87aacf97', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (355, '测试用户-25z', 1, 'b4bveoae0h@qq.com', '69568534795', '7546572316', NULL, '8da1286c81b953216a562b9da3f0a9c7', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (356, '测试用户-76s', 1, 'psfnt6vjay@qq.com', '21585000935', '7140779755', NULL, 'ee0b4e9017802885a7c6ed0ffd8c1fcf', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (357, '测试用户-6hb', 1, 'qpw5lzkb0u@qq.com', '40713866635', '7683002695', NULL, '7baedecaa5660f18981c24a3d4a841d1', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (358, '测试用户-rxi', 1, 'iauqsy7sru@qq.com', '93379401833', '9012464106', NULL, 'e8bed3a61ea12b79699ed3c487515f2d', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (359, '测试用户-jd7', 1, 'vwvhy6d6vr@qq.com', '81499915258', '7532100354', NULL, '996d9c21264432effa374e342c4e2149', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (360, '测试用户-6jw', 1, 'gypygsaz3w@qq.com', '13246014721', '0524383378', NULL, '441dc25218d9bbba938fd5aba84d173d', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (361, '测试用户-rp8', 1, 'x11w6hirlk@qq.com', '20566474129', '0019642068', NULL, '1931f50eb8454e7a6d74ffb80efe3ca6', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (362, '测试用户-9u1', 1, 'gq23ezdqvi@qq.com', '37533419333', '5575394243', NULL, '616ae7e86517ff94a96577ed4ab01711', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (363, '测试用户-hb1', 1, 'cn1wi6wzga@qq.com', '65333816182', '9040510200', NULL, '6a0f6c8b6cebb37aefbf8b35f4cb2c1e', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (364, '测试用户-9c5', 1, 'fup45o2uqa@qq.com', '90825387183', '5947742383', NULL, '7bb65ad7150961d89f01f09bf6baa6fb', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (365, '测试用户-7vz', 1, 'rmpfa17tpm@qq.com', '68946441357', '9852234676', NULL, '9c02a49949104f2e53e9b5152ea0cf5f', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (366, '测试用户-uds', 1, 'oexh7t18kn@qq.com', '34815685316', '1341596243', NULL, 'd85a2e5ba2be740754d7556cb1d25812', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (367, '测试用户-kw7', 1, 'pxyt812p01@qq.com', '76073088791', '5291705584', NULL, '6f4e37425312cc4ebc785d694e2726f3', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (368, '测试用户-nzn', 1, 'xqij6sl4jg@qq.com', '47294994615', '7136138436', NULL, '8188728c490cc4f4fcb1c3bcdf7fe685', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (369, '测试用户-4yi', 1, '58moi8eefu@qq.com', '17232516789', '7696556260', NULL, '2218711cae41f3b950dbc3fbc156d582', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (370, '测试用户-2dp', 1, '5qqdd7zosk@qq.com', '54980538196', '9300689267', NULL, '73f2fa0ddb6f3767b4263093564e6795', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (371, '测试用户-f6j', 1, 'june8l6bub@qq.com', '29858716215', '7717758306', NULL, '55b3c3873471d35bbee73fcb1f9fac00', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (372, '测试用户-pmq', 1, 'l7pq0w56v3@qq.com', '05494003347', '2531240961', NULL, '77ec36d902a7c93fc954da3b97c32c1e', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (373, '测试用户-gp4', 1, '3i9z3ul98m@qq.com', '50950899091', '2311838115', NULL, '9aea7a7c5f53ee33897e2f70aa799373', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (374, '测试用户-4ow', 1, 'qqvj5phy0a@qq.com', '21383021121', '0390991631', NULL, '1be676ad3dfb4716487c845f399789c6', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (375, '测试用户-103', 1, 'tb6t1iuac9@qq.com', '57402351133', '4243569343', NULL, 'd5804681b00e31c199220e58ef58e1cb', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (376, '测试用户-vv9', 1, 'bwiwmav172@qq.com', '36184163893', '3953937332', NULL, 'a7091e527d3afbdd438516374f03d3f0', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (377, '测试用户-0eg', 1, 'vxsjeftibq@qq.com', '22839406585', '4052275552', NULL, '086d1efe4b30370870052ffaf947bba2', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (378, '测试用户-bzt', 1, 'olxrjs38xr@qq.com', '31702343852', '8198694854', NULL, 'c53cb33d26e797de4a18483399bf6672', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (379, '测试用户-nsp', 1, '1q1rpmsjbe@qq.com', '38188942000', '1722366748', NULL, '4d51f1206665b1e7a85a2867f0838d1d', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (380, '测试用户-u4j', 1, 'kxfzk6ptwq@qq.com', '83698459507', '8931629555', NULL, '1df24a0102e4501685b084551f2cbe44', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (381, '测试用户-has', 1, 'sln533mvif@qq.com', '58692729226', '3417931230', NULL, '1d95549ce8424756f02732c9032f90b8', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (382, '测试用户-war', 1, 'ry460x84ik@qq.com', '17746899594', '2632543159', NULL, '241feba5ed43d3c72a6a0e00a81d5ac7', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (383, '测试用户-8fw', 1, '7xt9zrj4i2@qq.com', '40263460111', '5150026412', NULL, '8da97cdf10b777dae40fcd95764e111a', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (384, '测试用户-otk', 1, 'mcd746uwec@qq.com', '28116646221', '6362287610', NULL, '0832e513abfbef05a2e4adcaaa154700', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (385, '测试用户-187', 1, 'jlpof2tc6r@qq.com', '68888345438', '3583708408', NULL, 'f051d06fd9f8cbc8cdca4d6a82e250f8', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (386, '测试用户-t0i', 1, 'xtfxq65lui@qq.com', '22000969433', '1485282648', NULL, '42867197b09f4b2e85a36cf2bacad9fb', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (387, '测试用户-44x', 1, 'f1net6s43h@qq.com', '72620817942', '1684014171', NULL, 'd9f0b62c7e2c31e52edf32ccda21db92', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (388, '测试用户-b9l', 1, '20vva9behe@qq.com', '75045593964', '6379377484', NULL, '9a0b076dad2b02d861d3d44dfb5d458b', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (389, '测试用户-2ro', 1, 'kckmu7wumt@qq.com', '18366614657', '3985287778', NULL, 'c6bbbc52bc2b390039db833ac022c585', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (390, '测试用户-uv8', 1, 'ztzsqsgoks@qq.com', '48077544937', '7386505643', NULL, '13721968f0c2ffa02e6d17f560467d99', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (391, '测试用户-vxn', 1, '9culuspm6x@qq.com', '58921025762', '9331368741', NULL, '1a0281bfb11a0b52b2c2029be9ac6778', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (392, '测试用户-ssd', 1, 'zhh8e0nqll@qq.com', '17940190763', '5881918188', NULL, '4c74a339be555fb12c54c2b3ee02719e', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (393, '测试用户-ett', 1, 'l578u5ai9b@qq.com', '20386830850', '0009658083', NULL, '83fbc500978bbb638004aa6fb2a52264', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (394, '测试用户-e03', 1, 'k7ip6wc67x@qq.com', '35841492567', '2361442998', NULL, 'f3a061c607f7ae13392957edc433137c', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (395, '测试用户-vrr', 1, 'an367awgq0@qq.com', '79523765708', '2530477063', NULL, '0850d7aed12986e847fcc21bc847053a', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (396, '测试用户-vvp', 1, 'tdocxdkeoq@qq.com', '56614040798', '5835816626', NULL, '4d68761957014fc1bc32f08b32a8bb59', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (397, '测试用户-5re', 1, 'o1hs76343j@qq.com', '13786604651', '2061827215', NULL, 'ec97ce09ac0b462e1300a5dc83b2af58', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (398, '测试用户-r76', 1, 'ktewnf1u14@qq.com', '99789654966', '1934756289', NULL, '9e65ae8946ff2b5fe970aa8314aac292', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (399, '测试用户-l44', 1, 'u893ztbj76@qq.com', '43200539902', '5590421164', NULL, 'd5d584133d6af267d974f125db9f0619', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (400, '测试用户-utd', 1, 'jbnvqpb8kn@qq.com', '70163419960', '2160548069', NULL, '134f9198c661b208996e026387f88b8e', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (401, '测试用户-tj9', 1, 'yqr8obrh1x@qq.com', '95766926809', '6626033901', NULL, '9b4166d2cb12800adeaa78ffa186b60c', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (402, '测试用户-3q3', 1, '9phuu8zyg4@qq.com', '05741791030', '9086576055', NULL, 'edd35496d0c2f0b837e84ae1a6bcae07', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (403, '测试用户-g12', 1, 'tkjdh8vfyx@qq.com', '65747901180', '4079575528', NULL, '3f4f04c69561cd69a00b1d0816a56ea2', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (404, '测试用户-8bt', 1, '5yzp9fxd5e@qq.com', '19450314501', '9040406496', NULL, '516f03abd16c99e9e77535929e3d3c14', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (405, '测试用户-wtm', 1, '05444par7g@qq.com', '56791771276', '9332001982', NULL, '089aef7857bb0c3f7cb680b1ec22bf4b', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (406, '测试用户-9k5', 1, '90uegm2v60@qq.com', '13011136397', '0289258766', NULL, 'f8b1f19187deb35e31bfde8035f4d154', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (407, '测试用户-uoh', 1, 'hcxtpmp9xh@qq.com', '13941145008', '4953771300', NULL, '4a83948bc0027039858aaaa587f78d98', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (408, '测试用户-gc5', 1, 'ryb8w5gi4t@qq.com', '68743511901', '5100217090', NULL, '2f4c7f333bcca29a09f308939030b33d', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (409, '测试用户-9eu', 1, 'ddrwapy693@qq.com', '70489434462', '8037857165', NULL, 'd0772a008912166352d8a4972414ce19', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (410, '测试用户-711', 1, '9tuh28acyd@qq.com', '69673696157', '9169217590', NULL, 'e20ce44629bcdcff78a460abd04faf41', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (411, '测试用户-t9i', 1, 'm6i6lpsxzo@qq.com', '91300801895', '9152131813', NULL, '3ce020ff0ba1e54cff09aec01a1d41a5', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (412, '测试用户-svz', 1, '5nvk629em3@qq.com', '88559198974', '6274523903', NULL, '7861779e0e0f2acbb9e97a58ebb4e7a6', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (413, '测试用户-sfe', 1, 'p7npqomcw1@qq.com', '67950438888', '6006568369', NULL, 'c10d7c2e777ef6ba7e961d177be745fb', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (414, '测试用户-q0b', 1, 'ugpv4r8snc@qq.com', '76302185270', '4117392024', NULL, '6847538865884ef7c930fa3a865e4bb2', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (415, '测试用户-6pj', 1, 'pj5j8r9okw@qq.com', '65774112628', '2805417572', NULL, '0b202c667670ae30a4270dc051abfa03', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (416, '测试用户-ipm', 1, 'hbjcctimlw@qq.com', '90032351133', '8760818842', NULL, '2ef972930b8bce7ae66dc0895e3014eb', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (417, '测试用户-px9', 1, '6iu296yqvr@qq.com', '66561686165', '2175884472', NULL, 'dcf45c8c867411abd6fe8bcc6f3d1c6f', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (418, '测试用户-a5n', 1, 'b7c69xtwdg@qq.com', '05034756171', '4828408548', NULL, '283ac7abbf80e7b56b334e97a3ea35a1', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (419, '测试用户-5rz', 1, 'tohxav5gst@qq.com', '76800477325', '9740463683', NULL, '8f4bf5074cf7127a2c0251e6ddbc2ae3', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (420, '测试用户-xm1', 1, '3ogdspe4oc@qq.com', '89514075606', '3842875158', NULL, '17f9d8804b847ee330528689ab0ee7a9', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (421, '测试用户-fht', 1, 'txnxdk5z6m@qq.com', '01222411562', '8986424597', NULL, '64450b653a33c84ab1be305e947ea566', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (422, '测试用户-icx', 1, 'g65wekfgc8@qq.com', '10470434557', '1489464427', NULL, '0fb7aee05eee2ef7ecb1032682ce7093', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (423, '测试用户-hr4', 1, 'ef65qz0vld@qq.com', '47948226556', '2211559953', NULL, 'ddd625feeda8e8583223b77d2f52f71a', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (424, '测试用户-o04', 1, 'pbbp4gb0wl@qq.com', '08429653268', '0024501437', NULL, '7b8f25f93ea2d385b30aaa74e1b33fd2', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (425, '测试用户-8dx', 1, 'm38vpue33f@qq.com', '69918571136', '7287411727', NULL, '0e6c774420da692085d6e6dc34f85070', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (426, '测试用户-ulx', 1, 'fanb99bjs8@qq.com', '34873647224', '5275471267', NULL, '531c41be9f94e4f29cadd03ad7402516', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (427, '测试用户-ptb', 1, '65awhvl3i6@qq.com', '07639172966', '1876171597', NULL, '2995f3643ba21d65b7c8968b761e0e45', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (428, '测试用户-4tx', 1, 'q445w4ql1k@qq.com', '31864540868', '9372695675', NULL, '9dfbcfe9ca863b58bf0b1a1b4e47cc03', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (429, '测试用户-ol2', 1, '2jgd90d1u2@qq.com', '14579894231', '1443697866', NULL, '65c31067515a016a434b9b9c557fcc3c', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (430, '测试用户-i9k', 1, '799kv4izvt@qq.com', '93840213923', '0821842643', NULL, '3ccdbc3022449ba6e31de6eaab7a8b2a', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (431, '测试用户-xcn', 1, '1o507st6ix@qq.com', '21310130822', '0755954531', NULL, '8fec33f938d210bab872d139b8f5cdb5', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (432, '测试用户-gku', 1, 'p2q5v48tko@qq.com', '91304292106', '3061806442', NULL, '83d689071e6155c5edd92edc7e46d4fc', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (433, '测试用户-9q8', 1, 's95kvwsupy@qq.com', '28220363159', '1026640930', NULL, 'bc5ee449e9e16d5d6537676fc51656b1', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (434, '测试用户-nhk', 1, 'h30eg1izp8@qq.com', '70948730110', '9065242521', NULL, '6651579ef94de2bd83f267a0e80c7459', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (435, '测试用户-ynh', 1, '660xjlohnu@qq.com', '62140313094', '8997208999', NULL, '3d903310b37fe8dfc71895b6f672358e', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (436, '测试用户-0pv', 1, 'epqhk6ui1y@qq.com', '95144454268', '4318176714', NULL, 'c1d0f0e31a5a9610c12c2ad264e06f55', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (437, '测试用户-xgs', 1, 'k77t2uuu4s@qq.com', '11253183388', '8498104034', NULL, 'a47560045a96b3b269df237cb5768427', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (438, '测试用户-jpe', 1, '0fhpzi5hya@qq.com', '86339550698', '4100913015', NULL, '4e78e2b30ac8f7a673cf022490193be2', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (439, '测试用户-ph9', 1, '5nkp4k9723@qq.com', '51367257233', '0925132557', NULL, '1a1f9853b78762e62da86fdc201beb24', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (440, '测试用户-gb9', 1, '2kd8rh8vo8@qq.com', '88835297000', '9395450264', NULL, '8164ee7df166721bbbca1ae1c54d77ee', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (441, '测试用户-wqq', 1, '9ew1ucnka5@qq.com', '67205489758', '7767340226', NULL, '6fe7ec4fce9b202faa302ec4dedf64f3', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (442, '测试用户-3xt', 1, 'gnzkl96a9n@qq.com', '39427348617', '8612792908', NULL, 'b83613d6811e53e7037be3668432e5f6', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (443, '测试用户-hby', 1, 'uu589gfk3k@qq.com', '79580464675', '2515301608', NULL, '10b880fa6244a90cda3266af5e94ec88', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (444, '测试用户-rft', 1, 'dcla63r535@qq.com', '65963373849', '3432198189', NULL, 'c1f108cd93af8847322f9e9e845b3e1c', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (445, '测试用户-0b2', 1, 'vbspus5rgy@qq.com', '14956372411', '9872201636', NULL, 'e000d665e68f339a4db932673acc9c6c', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (446, '测试用户-607', 1, '9quxuxququ@qq.com', '34054503690', '6527010659', NULL, '4ccc076230c382e14d0ab3773b06c4b8', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (447, '测试用户-4w7', 1, 'kntxrzia8o@qq.com', '61708669332', '7365150181', NULL, '3aab5161cfc7976bdff7ac1c6fb1a776', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (448, '测试用户-98n', 1, 'gajoq3a1tx@qq.com', '86066946394', '4274346807', NULL, '86edba4dbe4189ab1d4812c70f40b370', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (449, '测试用户-tpv', 1, 'el28mub47b@qq.com', '74975148722', '2477787838', NULL, 'cd84d4e3dec542cf493ecbb0eca0d8a0', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (450, '测试用户-gzl', 1, '80dcbub7cb@qq.com', '51683018179', '1418771187', NULL, '940dea12a155a084a867ea207b606619', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (451, '测试用户-20g', 1, 'u3hq8ydkdz@qq.com', '60441927784', '8662872138', NULL, '483e4b6310dbf99518987cdab8dd809a', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (452, '测试用户-m7v', 1, 'lvtkq4guan@qq.com', '45590371856', '8145362717', NULL, 'f1b350327ece07eddb4e908e34303a56', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (453, '测试用户-4t9', 1, 'vig2s0z57n@qq.com', '14272047217', '4676486406', NULL, '93479eb88a04ef72b441f227ca019d06', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (454, '测试用户-eg7', 1, '3fwpwabd48@qq.com', '32389794693', '1728373051', NULL, '05f39191a0319ae93d13df895ff4d852', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (455, '测试用户-wca', 1, 'htbeky0a7m@qq.com', '98475171939', '0251326652', NULL, '65a3882c04203f59dd57b9e614c282e6', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (456, '测试用户-b9y', 1, 'zxi5hyxz9y@qq.com', '67757196801', '6195741776', NULL, 'afca389458898958e1251461c2de649f', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (457, '测试用户-35v', 1, 'lr0vnjn8oi@qq.com', '91654628507', '1871102275', NULL, 'ecb5d7bc149bd33ae501ce33f951a429', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (458, '测试用户-yl0', 1, 't3f52q36zz@qq.com', '03754357790', '5602216544', NULL, 'bd5814f78ce2e86694275d94bf333eb4', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (459, '测试用户-s9z', 1, '1iusseg73k@qq.com', '60228160741', '9884299200', NULL, 'e00eb6540f7ca0076a150d9607aeb42a', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (460, '测试用户-8xk', 1, 'b2rzb1o006@qq.com', '22138249802', '7906191784', NULL, '25fa712a73ea1b195c6f0352dd2bdf9b', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (461, '测试用户-g15', 1, '0lsp0vy01n@qq.com', '53306351723', '8561568110', NULL, 'c25671e43a1f01962c581287df8c0de4', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (462, '测试用户-vmp', 1, 'rqj045hfda@qq.com', '64780054955', '7515756523', NULL, '96519d2c685d58167c197b36feec6205', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (463, '测试用户-d9j', 1, 'pk3tnwyjht@qq.com', '48520013999', '2904170453', NULL, 'da10ebaaefdc1f0fdd81459b2cd622ab', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (464, '测试用户-paj', 1, 'j105cpskbo@qq.com', '22167455877', '3828285684', NULL, '77d40d6a87b05dd30a7603f099379f3b', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (465, '测试用户-458', 1, 'ju7dz0liox@qq.com', '18812500098', '2253069683', NULL, 'd97fb6f3646c2ed9bab649f9dd6d5faa', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (466, '测试用户-76l', 1, 'lgeksjhnf5@qq.com', '75735442824', '7346057268', NULL, '7e602f6297658b469094f5a8fc68a5e3', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (467, '测试用户-zw6', 1, '87qlk1r1lt@qq.com', '30716790814', '9273845353', NULL, '4215306e5d07a8a0dc9dea8c5d03c257', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (468, '测试用户-7uz', 1, 'i05o6gopzt@qq.com', '26729453831', '9389451034', NULL, 'c3fb2b285e390f7caa5249741c07e8a8', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (469, '测试用户-p18', 1, '3zwt5yv5r5@qq.com', '49456364779', '5990994737', NULL, '2c222f2b6d50e96531ace69f7742bbda', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (470, '测试用户-5w3', 1, 'dge6kb1h98@qq.com', '04202682083', '6356741131', NULL, '0ef76445a7299b14d00b449c374b4a0b', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (471, '测试用户-wey', 1, 'aggzluzluv@qq.com', '99112067946', '2188071990', NULL, 'a20db2f05cf2c28c36cd98f82154863d', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (472, '测试用户-9ra', 1, 'owrld0u4y8@qq.com', '94451159302', '2904192920', NULL, '68ef7c394332059c01153ba04ca073b8', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (473, '测试用户-x35', 1, '7x4rixytze@qq.com', '45517315632', '7781285908', NULL, '550479bb340a38c3160758d884c248e7', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (474, '测试用户-mqf', 1, 'k88vh6iukj@qq.com', '52075180086', '9388735672', NULL, '5e8d569c86a5018a622a6adaf2464714', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (475, '测试用户-ljx', 1, 'pee5q3gyow@qq.com', '75896723023', '6454857288', NULL, '98825553cb06a39bd97a8fe46ce3e153', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (476, '测试用户-pnf', 1, 'k6yvfw8fpq@qq.com', '78201752020', '6666208782', NULL, '58952ee8cd874dfdc7cf8e832df74bab', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (477, '测试用户-px5', 1, '1c04f1ggs2@qq.com', '28593233906', '8797102150', NULL, 'cb66e0b69dee8b7483c606955d33c520', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (478, '测试用户-dnc', 1, 'tsr9hekvik@qq.com', '68196965724', '6677387654', NULL, 'cf25e9f61cd8c92f0acd54c14d530bee', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (479, '测试用户-9pr', 1, 'asiqqarise@qq.com', '19540369651', '9059756769', NULL, '758a266ea7008815663bc9d9c12d40f5', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (480, '测试用户-r64', 1, 'kzl29c1e95@qq.com', '14258854678', '7716566725', NULL, '36631f642fd05d589787861eac1427ba', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (481, '测试用户-npy', 1, 'abjogstcvq@qq.com', '05810355587', '8298238835', NULL, 'f4b49745ae77efb05d01b8609394bfba', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (482, '测试用户-y92', 1, 'n4m2ig991b@qq.com', '56584247792', '9902471641', NULL, '922ef9a68aac4f37513db69872f3cb02', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (483, '测试用户-94y', 1, '79g5iysmxc@qq.com', '78205047530', '7136377177', NULL, '5ed2c212ae4266ab5979eca8ea4d3284', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (484, '测试用户-kr3', 1, '5zid9e1672@qq.com', '89740713713', '2742737281', NULL, '68f97cbaf5a9c40a37dff82027e8e770', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (485, '测试用户-w7q', 1, '1vj5p7g2v7@qq.com', '94348733706', '4351383282', NULL, 'c2b890708911c45265b759ce8c95f486', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (486, '测试用户-k4f', 1, 'ser1gcmjbh@qq.com', '61134232457', '3630328611', NULL, '3feba37052787c17a0aea9fb1ed07030', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (487, '测试用户-8hv', 1, 'tfjdhc9ds0@qq.com', '52000433620', '9844009075', NULL, '22406303e1d8d49f5eeba20a8802d965', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (488, '测试用户-k64', 1, 'kkkddcy5do@qq.com', '31216257107', '1891529053', NULL, 'add73d6f87fb99b30ba9737a7cde1772', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (489, '测试用户-mmz', 1, 'mo4a60babe@qq.com', '99517006211', '0225091643', NULL, '9e28579bc14b2787b8f7d4cec3d5fc20', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (490, '测试用户-fup', 1, '47tl70sl61@qq.com', '20308820858', '2809144131', NULL, '6186927d256106d455dd4bb126f8a19a', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (491, '测试用户-66p', 1, 'wtauw4n988@qq.com', '20512132048', '1827020049', NULL, 'bd64791da79bb8c80709c1c099a1d034', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (492, '测试用户-d2o', 1, 'p3red69ax2@qq.com', '22174643517', '2764712881', NULL, '7477ba7cab8e8b3f42fa0fc40c435201', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (493, '测试用户-5jk', 1, '0ps7hbcrtq@qq.com', '28477394452', '0141860112', NULL, '004122c0e8b0c258037e405c38c1b10a', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (494, '测试用户-wu9', 1, '9o5ulc0hbe@qq.com', '84743872926', '0919775671', NULL, 'ab88250b3185d6e4cf44b8b719c8e727', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (495, '测试用户-dov', 1, 'lnhc0zx6o2@qq.com', '09568047772', '3500491305', NULL, 'e63b5cf8d50cf03674c9533811cd82b8', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (496, '测试用户-lye', 1, 'udc1q1qpti@qq.com', '81815180220', '5790940811', NULL, 'f1e1dedd92a29129fa76c788be7dcfeb', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (497, '测试用户-tn6', 1, 'yviful3wjy@qq.com', '80053590524', '3124450631', NULL, '7a951de3aa27b39656536b22b9ba7e57', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (498, '测试用户-a9j', 1, 'cmrc7wsclf@qq.com', '27052528755', '0788150066', NULL, 'd4daa8f13201751d6f8430f2512efe1d', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (499, '测试用户-ew0', 1, 'lsmlp02ngd@qq.com', '52310658911', '0196031380', NULL, '065baa375b236c5abcee8fbb2f25e923', NULL, '2022-02-04 15:52:49', NULL);
INSERT INTO `users` VALUES (500, '测试用户-axf', 1, 'yauovp81wr@qq.com', '90139938270', '7879939368', NULL, 'cf7fa611fd8baba6315b9477261945c4', NULL, '2022-02-04 15:52:49', NULL);

SET FOREIGN_KEY_CHECKS = 1;
