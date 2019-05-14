/*
Navicat MySQL Data Transfer

Source Server         : project
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : mvc

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2019-05-14 17:12:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_company
-- ----------------------------
DROP TABLE IF EXISTS `t_company`;
CREATE TABLE `t_company` (
  `autoId` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` varchar(255) DEFAULT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `companyDscp` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_company
-- ----------------------------
INSERT INTO `t_company` VALUES ('1', '1', '北京市卓越科技有限公司', '移动互联网,O2O', '北京市朝阳区 - 亚运村 - 大屯里118号A座', '18811756226', 'dasouche@163.com');
INSERT INTO `t_company` VALUES ('2', '2', '北京市多博科技有限公司', '移动互联网公司', '北京市海淀区', '18710482064', 'boduokej@163.com');

-- ----------------------------
-- Table structure for t_deliveryrecord
-- ----------------------------
DROP TABLE IF EXISTS `t_deliveryrecord`;
CREATE TABLE `t_deliveryrecord` (
  `deliverid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `positionid` int(11) DEFAULT NULL,
  `resumeid` int(11) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `positions` varchar(255) DEFAULT NULL,
  `acceptorrefuse` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`deliverid`),
  KEY `userid` (`userid`),
  KEY `positionid` (`positionid`),
  KEY `resumeid` (`resumeid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_deliveryrecord
-- ----------------------------
INSERT INTO `t_deliveryrecord` VALUES ('15', '2', '1', '14', '赵枫枫', 'Java研发工程师', '通过');

-- ----------------------------
-- Table structure for t_employ
-- ----------------------------
DROP TABLE IF EXISTS `t_employ`;
CREATE TABLE `t_employ` (
  `autoId` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_employ
-- ----------------------------
INSERT INTO `t_employ` VALUES ('1', '2', '赵枫枫', '男', '22', 'zhaofengfeng', '123456');
INSERT INTO `t_employ` VALUES ('2', '3', '刘慧慧', '女', '15', 'liuhuihui', '123456');
INSERT INTO `t_employ` VALUES ('4', '5', '张皖豫', '男', '24', 'zhangwanyu', '123456');
INSERT INTO `t_employ` VALUES ('14', '17', '秦鹏', '男', '24', 'qinpeng', '123456');
INSERT INTO `t_employ` VALUES ('15', '18', '范依风', '男', '24', 'fanyifeng', '123456');

-- ----------------------------
-- Table structure for t_employer
-- ----------------------------
DROP TABLE IF EXISTS `t_employer`;
CREATE TABLE `t_employer` (
  `autoId` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` varchar(200) DEFAULT NULL,
  `employerName` varchar(200) DEFAULT NULL,
  `employerPwd` varchar(200) DEFAULT NULL,
  `employerAddress` varchar(200) DEFAULT NULL,
  `employerTel` varchar(200) DEFAULT NULL,
  `employerEmail` varchar(200) DEFAULT NULL,
  `employerAccount` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`autoId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_employer
-- ----------------------------
INSERT INTO `t_employer` VALUES ('1', '1', '李卓', '12345', '北京大兴', '13434343434', '3434343434@qq.com', 'lizhuo');
INSERT INTO `t_employer` VALUES ('2', '2', '刘博', '12345', '北京丰台', '13535353535', '3535353535@qq.com', 'liubo');
INSERT INTO `t_employer` VALUES ('3', '1', '张猛', '12345', '北京通州', '13646464646', '4646464646@qq.com', 'zhangmeng');

-- ----------------------------
-- Table structure for t_position
-- ----------------------------
DROP TABLE IF EXISTS `t_position`;
CREATE TABLE `t_position` (
  `positionid` int(11) NOT NULL AUTO_INCREMENT,
  `companyId` varchar(200) DEFAULT '2',
  `positions` varchar(255) DEFAULT NULL,
  `postype` varchar(255) DEFAULT NULL,
  `posdate` varchar(255) DEFAULT NULL,
  `posnum` varchar(255) DEFAULT NULL,
  `posdes` varchar(255) DEFAULT NULL,
  `posreq` varchar(255) DEFAULT NULL,
  `possal` varchar(255) DEFAULT NULL,
  `posphone` varchar(255) DEFAULT NULL,
  `posloc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`positionid`),
  KEY `userid` (`companyId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_position
-- ----------------------------
INSERT INTO `t_position` VALUES ('1', '1', 'Java研发工程师', '研发', '2019-03-07', '5名', '负责根据开发进度和任务分配，完成相应模块的开发任务，并在过程中解决关键问题和技术难题；  负责参与需求分析、设计，高质量完成开发任务，确保高性能处理和系统的稳定性；参与软件工程文档、产品文档的编写。', ' 统招计算机或相关专业本科毕业，具有2～5年JAVA开发经验；熟悉Spring, Spring MVC, MyBatis等开源框架和其理念，熟悉常见的一些设计模式；熟悉Linux下的常用命令，熟悉Mysql，有较好的数据库表设计能力； 具备良好的表达和沟通能力、具备团队合作精神，对工作热情，有一定的抗压能力，有责任心和独立分析能力。', '10k-20k', '18811756226', '北京市朝阳区');
INSERT INTO `t_position` VALUES ('3', '1', '分布式数据库存储工程师', '研发', '2019-03-06', '6名', '参与开发RocksDB存储引擎。', '参与开发RocksDB存储引擎；熟练掌握C/C++语言，良好的编程习惯、数据结构、算法等基础知识；RocksDB或者MyRocks代码贡献者优先；五年以上工作经验，有数据库底层系统研发经验优先。', '30k-50k', '17810522209', '北京市朝阳区');
INSERT INTO `t_position` VALUES ('4', '1', 'python开发工程师 ', '研发', '2019-03-05', '15名', '负责今日头条沟通系统研发，包括但不限于即时通讯(IM)工具；负责效率工具的后台开发工作，具体包括需求分析、文档撰写、设计编码、测试运维、效果追踪等工作； 责高质量的设计和编码；承担重点、难点的技术攻坚。', '较好的产品意识，愿意将产品效果做为工作最重要的驱动因素；掌握WEB后端开发技术: 协议、架构、存储、缓存、安全等； 积极乐观，认真负责，乐于协作。', '20k-35k', '18501593024', '北京市海淀区');
INSERT INTO `t_position` VALUES ('5', '2', 'java工程师 ', '研发', '2019-04-07', '8名', '根据产品和运营需求，进行需求分析、任务分解、架构设计、代码开发、集成测试；产品架构高可用性、高可扩展性方向的优化调整；负责服务的部署、管理、监控和维护。', '精通java语言，能够熟练应用spring boot、mybatis等主流开发框架；熟练使用LINUX，能进行shell编程。有其他脚本语言（如python）开发经验更佳；熟悉Java常用设计模式，熟悉常用消息、缓存等中间件。', '20k-40k', '17800093085', '北京市海淀区');
INSERT INTO `t_position` VALUES ('6', '1', 'Hadoop研发工程师 ', '研发', '2019-04-09', '6名', 'Hadoop 技术栈的开发和管理，解决实际业务挑战，e.g. YARN, HDFS, MapReduce, Spark, etc； 承担千台-万台规模 Hadoop YARN 集群的管理工作，与业务一起解决性能优化、容量规划、预算审计等问题，保障集群高效稳定经济运行。', '思维活跃，熟悉 Hadoop Stack 及相关基础设施；优秀的设计和编码能力：针对具体的业务场景问题，快速设计和实现解决方案；对工程质量有很高的自我要求。', '25k-45k', '18810259180', '北京市海淀区');
INSERT INTO `t_position` VALUES ('8', '1', 'iOS研发工程师', '研发', '2019-04-05', '3名', '与产品和运营人员沟通，保证产品的质量和开发进度；持续优化相关产品的质量、性能和用户体验；对移动平台相关新技术进行研究和功能实现，对现有开发方法进行改进。', '3年以上iOS平台开发经验；精通iOS中的UI、网络、数据库、动画等开发技巧；熟悉Objective-C Runtime、RunLoop、Cocoa Touch、内存管理机制，熟悉APNS、Auto Layout；有App上架作品或相关作品者优先。', '15k-28k', '18510233389', '北京市朝阳区');
INSERT INTO `t_position` VALUES ('10', '2', 'c++开发工程师 ', '研发', '2019-04-10', '10名', '负责公司产品桌面客户端的设计和研发；持续改进优化代码，配合测试解决代码缺陷，维护后续线上遇到的问题。', '精通C/C++，具备高质量的代码架构能力，并熟练使用VisualStudioIDE/QT开发工具；有3年以上的基于C++、QT/VisualStudio开发桌面应用程序的开发经验；熟悉多进程、多线程、TCP/IP通讯等，具备Windows/Mac平台代码开发、调试和优化的。', '15k-20k', '15308835716', '北京市海淀区');
INSERT INTO `t_position` VALUES ('12', '2', '全栈工程师 ', '研发', '2019-04-04', '5名', '负责机器视觉SDK产品的功能设计、开发及实现；负责机器视觉SDK的易用性改进及界面优化。', '精通React，有丰富的相关开发经验；熟悉Golang，有相关后端开发经验；学习能力强，做事积极主动，善于沟通。', '20k-50k', '15310830505', '北京市海淀区');
INSERT INTO `t_position` VALUES ('13', '2', '.NET工程师 ', '研发', '2019-04-06', '7名', '进行公司门诊系统开发及维护。', '熟练使用 ASP.NET 开发 Web 应用程序；熟悉 .NET Core 平台，熟练使用 ASP.NET Core 框架开发 Web 应用程序；熟练使用 HTML、CSS、JavaScript 及 Vue.js 编写前端代码；熟悉 SQL Server、MySQL 关系型数据库及 Redis。', '18k-20k', '18710517107', '北京市朝阳区');
INSERT INTO `t_position` VALUES ('14', '2', 'Android开发工程师 ', '研发', '2019-04-08', '10名', '负责字节跳动效率工具的 Android 端研发；负责高质量的设计和编码；和产品经理配合，参与手机产品需求讨论，功能定义等。 ', '良好的设计和编码品味，热爱写代码能产出高质量的设计和代码； 熟练掌握Java语言，熟悉Java常用的库； 有良好的产品意识，积极乐观，认真负责，乐于协作；。', '25k-40k', '15539676825', '北京市朝阳区');
INSERT INTO `t_position` VALUES ('15', '1', 'Web前端开发工程师', '研发', '2019-04-09', '12名', '负责运维工具、平台的设计、开发、优化、持续迭代； 为团队引入创新的技术、创新的解决方案，用创新的思路解决问题； 对现存或未来系统进行宏观的思考，规划形成统一的组件、框架或平台。 \r\n', '熟练掌握ES6，CSS3，HTML5等前端技术； 丰富的React、Vue等主流前端框架开发经验； 较好的产品意识，愿意将产品效果做为工作最重要的驱动因素。', '20k-40k', '18811462857', '北京市海淀区');

-- ----------------------------
-- Table structure for t_resume
-- ----------------------------
DROP TABLE IF EXISTS `t_resume`;
CREATE TABLE `t_resume` (
  `resumeid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '2',
  `realname` varchar(255) DEFAULT NULL,
  `birthdays` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `phonenum` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `workexp` varchar(255) DEFAULT NULL,
  `positions` varchar(255) DEFAULT NULL,
  `exsalary` varchar(255) DEFAULT NULL,
  `exaddress` varchar(255) DEFAULT NULL,
  `perdscp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resumeid`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_resume
-- ----------------------------
INSERT INTO `t_resume` VALUES ('14', '2', '赵枫枫', '1996-05-02', '男', '北京', '13878789065', '123456@qq.com', '北京石油化工学院', '本科', '计算机科学与技术', '无', 'Java开发', '10000+', '朝阳区', '在工作上，对工作热情，任劳任怨，责任心强，具有良好的组织交际能力');
