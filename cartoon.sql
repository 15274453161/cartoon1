/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : cartoon

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2020-03-15 19:37:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for age
-- ----------------------------
DROP TABLE IF EXISTS `age`;
CREATE TABLE `age` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age_range` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of age
-- ----------------------------
INSERT INTO `age` VALUES ('1', '10~20岁男生');
INSERT INTO `age` VALUES ('2', '10~20岁女生');
INSERT INTO `age` VALUES ('3', '20~30岁男生');
INSERT INTO `age` VALUES ('4', '20~30岁女生');
INSERT INTO `age` VALUES ('5', '30~40岁男生');
INSERT INTO `age` VALUES ('6', '30~40岁女生');

-- ----------------------------
-- Table structure for cartoon
-- ----------------------------
DROP TABLE IF EXISTS `cartoon`;
CREATE TABLE `cartoon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ct_name` varchar(255) DEFAULT NULL COMMENT '漫画名称',
  `ct_author` varchar(255) DEFAULT NULL COMMENT '漫画作者',
  `ct_cy_id` smallint(11) DEFAULT NULL COMMENT '漫画分类',
  `ct_wk_id` int(11) DEFAULT NULL COMMENT '漫画更新日期',
  `ct_introduce` varchar(1000) DEFAULT NULL COMMENT '漫画介绍',
  `ct_state_id` smallint(6) DEFAULT NULL COMMENT '漫画状态进度是否是完结或者连载：完结：0，连载：1',
  `ct_score` double DEFAULT '10' COMMENT '漫画评分',
  `ct_age_range_id` int(11) DEFAULT NULL COMMENT '漫画的年龄分类范围',
  `ct_title_no` varchar(255) DEFAULT NULL COMMENT '漫画编号',
  `ct_url` varchar(255) DEFAULT NULL COMMENT '封面地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cartoon
-- ----------------------------
INSERT INTO `cartoon` VALUES ('1', '猪窝', '金坎比 / SICK', '6', '1', '在某个诡异重重的岛屿醒来的主角，发现自己被捆绑在一个屋子里。失去记忆的他为了寻找记忆，逃离这座岛屿，与某个诡异的一家人勾心斗角、斗智斗勇。主角为何会突然在昏迷状态下来到这座岛屿？这个诡异的家庭到底是什么人？', '1', '9.32', null, '1432', 'http://f2.kkmh.com/image/190115/gVKol4IJ0.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('2', '名花有草', '雨后', '5', '1', '红莲公主的住处在宫里最为偏僻。她的母亲在她很小的时候就离世了，她便从小在宫中孤零零地长大。宫中几乎没有人在乎她，有些人甚至都不知道她的存在......这样的她逐渐和更多的人相遇：世子邸下，杨道云，这些人会给她的生活带来怎样的变化呢？', '1', '9.16', null, '1412', 'http://f2.kkmh.com/image/190331/JhZIY8PGd.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('3', '教主，注意名声！', 'clevercool', '5', '1', '在恋爱中屡次碰壁的霍心漾，最终决定要去报复那些情场的感情骗子。打怪升级一路上来却遇见了终极对手，但是这位终极对手给人的感觉却亦正亦邪，并且外表极具迷惑性… 在恋爱中屡次碰壁的霍心漾，最终决定要去报复那些情场的感情骗子。打怪升级一路上来却遇见了终极对手，但是这位终极对手给人的感觉却亦正亦邪，并且外表极具迷惑性…', '1', '8.93', null, '1385', 'http://f2.kkmh.com/image/190305/Mtd3pMQZr.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('4', '觉醒吧，铲屎官！', '孙齐皓 / ZHENA', '3', '1', '附身于猫咪的觉醒者凯顿，邂逅了隐藏着觉醒能力的高中生徐之佑，两个人的可爱幻想篇章。', '1', '7.82', null, '1313', 'http://f2.kkmh.com/image/171213/rt79rf2bj.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('5', '乖乖女的恋爱指南', '南琇', '5', '1', '一直恪守强迫症日程表的乖乖女郑小乖，对前辈一见倾心，立下了摆脱母胎单身追求真爱的flag，但是，恋爱经验完全为零，撩汉这项技能该如何get？', '1', '8.92', null, '1277', 'http://f2.kkmh.com/image/190215/iwd8lu1HO.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('6', '金钱游戏', '裴真秀', '6', '1', '一部奇幻故事，主人公因相信朋友的一面之词投钱炒币，没想到失手后欠下巨额债务，无奈之下想要轻生，就在跳河之前，他打出了一通改变他生命的电话。阴差阳错之下他参演了一档名为《金钱游戏》的真人秀，出演这档节目的8个人面对巨额奖金，在100天的时间里，上演了一幕幕揭露人性的戏码。', '1', '8.76', null, '1389', 'http://f2.kkmh.com/image/180409/mr07xq2sd.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('7', '神之塔', 'SIU', '4', '1', '财富、荣耀、权利、力量、复仇······无论你想要什么，神之塔都可以实现。全部记忆都被黑暗覆盖的少年夜，为了追寻蕾哈尔而闯入神之塔，灿烂的星空在塔顶，骗局与陷阱在塔里，开始登塔吧！', '0', '8.54', null, '241', 'http://f2.kkmh.com/image/180703/5MTLzw5TQ.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('8', '邻家小龙', 'cho', '3', '1', '如果一条会说话的蜥蜴，不！一条真正的龙住在隔壁会怎样？第一次开始独立生活的主人公去邻居家介绍自己，发现一条龙在玩游戏！而且其他邻居都已知道这龙的存在！龙在人类世界如何生存下去？怎样赚钱呢？……', '0', '8.98', null, '298', 'http://f2.kkmh.com/image/181227/QBWkl39Ls.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('9', '他是巧克力拿铁', '杏', '8', '1', '《他是巧克力拿铁》是一部风格明快的校园恋爱漫画，讲述了女主角津岛莉里与男主角濑波薰之间青涩甜蜜的互动，以及同学亲友之间轻松有趣的日常。津岛莉里是一位温柔善良、活泼单纯的女高中生，对甜食十分热衷。濑波薰则是一位阳光帅气、真诚大方的男高中生，在学校里是富有人缘、能力出众的学生干部，同时也是津岛莉里的学长，在校外则在咖啡厅中打工，泡得一手香浓的拿铁咖啡。两人在咖啡厅中偶然邂逅，并在校园生活中不断拉近彼此的距离……', '0', '9.22', null, '1426', 'http://f2.kkmh.com/image/180118/f7ewl3vnu.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('10', '她的两种使用方式', 'WONDER', '5', '1', '她通过竞拍，把自己人生的白天和黑夜分别卖给了不同的两个人……白天和黑夜，属于不同人的她，从此不为人知的两面人生开始了！', '0', '9.21', null, '1347', 'http://f2.kkmh.com/image/170227/7gwyxfo27.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('11', '最快更新的心灵的声音', '赵石', '7', '2', '热播韩剧《心里的声音》原作漫画 倾听过你自己心灵的声音吗？ 乍看之下可能会觉得这只是一部以描绘日常生活为主题的作品，但其实里面的故事非常搞笑和夸张，是一部为搞笑而生的漫画。抛掉对写实的执着，天马行空的想象，作家赵石的这部作品绝对可以让你笑破肚皮。', '0', '9.25', null, '381', 'http://f2.kkmh.com/image/170331/ob28qu3re.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('12', '心动预警', '空枣 / 甜甜', '5', '2', '经历人生巨变的她与过去曾与她有过美好交集的他再次相遇，她变身成为傲娇警花，而他变成了一位毒舌神探，两人携手破案寻找阴谋的真相，在坚持正义的道路上互相救赎，获得爱情与成长的故事。', '0', '9.44', null, '1335', 'http://f2.kkmh.com/image/190305/tmfbQ6DrA.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('13', '英雄联萌', '徐霸 / 金珍石', '8', '2', '小混混成群结队的高中，强者为王，弱者只会受尽屈辱。眉清目秀小男生以怎样的力量为弱者代言？凭借弱小的身躯，将会续写怎样的传奇？', '0', '7.87', null, '1339', 'http://f2.kkmh.com/image/180704/eKHMMmOxH.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('14', '高三无双', 'BB达宫 / Hama', '3', '2', '失传千年的武林绝学出现在了当代高中？临危受命的张五柱能否担当起掌门的职责？他是否能在弟子的辅佐下，治理好五当派并完成奶奶的临终遗愿呢？', '0', '7.68', null, '1430', 'http://f2.kkmh.com/image/170922/43h4885wg.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('15', '30分钟浪漫路', '李智爱', '8', '2', '卫星恩终于等到了和她一起在月下走回家的人，这段30分钟的路程，他们能走进爱情吗？就像月亮和地球那样，坚定不移。 卫星恩终于等到了和她一起在月下走回家的人，这段30分钟的路程，他们能走进爱情吗？就像月亮和地球那样，坚定不移。', '1', '9.01', null, '1218', 'http://f2.kkmh.com/image/190103/LyS9fzBt6.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('16', '柔美的细胞君', '李东建', '9', '2', '柔美的细胞君第二季超~~可爱来袭，这一季，柔美想谈恋爱，脑内的细胞全炸了，都帮她出谋划策，可是，最关键的爱情细胞君还在昏迷，柔美能恋爱成功吗？爱情细胞君快醒醒啊！', '1', '9.03', null, '465', 'http://f2.kkmh.com/image/190228/cgbRHDdSi.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('17', '我的傻大个男友', '鱼丸', '5', '2', '我的男友身高199cm,太高了，高的不正常！让158cm的我情何以堪！你们看见的只是表面萌萌哒身高差，可背后的甜蜜，你们根本想象不到！ 火遍朋友圈的大型虐狗漫画，非战斗人员请撤离！', '1', '9.33', null, '1115', 'http://f2.kkmh.com/image/190428/bE9zq9LQu.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('18', '阴间美男计', '双笔', '3', '2', '震惊！人间的顶级演员竟是阴间的勾魂使？！还为了业绩对女主做出了不可描述之事...女主的命运将会如何？勾魂使的真实身份会暴露吗？', '1', '7.9', null, '1334', 'http://f2.kkmh.com/image/190117/ts7pyyEYM.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('19', '恋上女网红', 'jellyfis / Dohin.e', '5', '2', '从头到脚都平凡无奇的女大学生秀智凭借化妆和手机美颜功能摇身一变成为万人迷网红，而且还获得了人气爱豆组合“卡乌斯”成员之一“卢西非”的青睐。卢西非亲手发消息给秀智要求见面。刚开始优秀智以为对方是冒充明星的屌丝，不以为然。没想到这却激发了卢西非的征服欲，在网上公开寻人。秀智和卢西非到底会不会见面并迸发出爱情火花呢……', '1', '8.32', null, '1328', 'http://f2.kkmh.com/image/181025/4diVYyMUJ.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('20', 'Here U Are', 'D君', '8', '2', '人见人爱的治愈系学长遇见了高冷傲娇的小学弟，以至于学长常常短暂性颜面扫地，气急败坏。学弟，你怎么能这么不懂得体谅前辈呢！不过，在两人的相处过程中，二人好像变得不一样了.......', '1', '7.37', null, '1203', 'http://f2.kkmh.com/image/181116/OcCpK8kYi.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('21', '青春白卷', '田善旭', '8', '3', '聚集平凡学生、模范学生、不良学生的学校，学生们还不确定自己的人生目标，他们在互相激励下，一点点寻找人生的方向，有冒险，有失误，更有很多青春的美好回忆！', '1', '9.43', null, '262', 'http://f2.kkmh.com/image/181228/tmvCwUPXS.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('22', '实力至上校园', '韩东宇 / 李道熙', '8', '3', '吴泰京的入学给学校带来了巨大的变化。全校师生都在吴泰京建立的新秩序面前低头，校内因此变成沙场。然而，天才少年的转学，打破了这一现状…', '1', '9.64', null, '1332', 'http://f2.kkmh.com/image/181113/N5A29bSRf.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('23', '代价贩卖机', '尹', '3', '3', '耗费几年光阴，立志要成为一名歌手的陈锋，在出道前夕被富二代顶替了位置，歌手梦想再度破灭。在他失魂落魄醉醺醺回家的路上，发现一个从未见过的红色贩卖机，但这个贩卖机的使用说明却有些与众不同。就在他准备利用贩卖机赌一把的时候，不可思议的事情发生了…', '1', '9.33', null, '1293', 'http://f2.kkmh.com/image/190506/tEf3Fbf7t.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('24', '京华祸福录', '徒子文化', '6', '3', '受病而弱不禁风的张谨行，遇到了有引人落灾祸的体质的祸兮，二人兄妹相称入长安，专门解决各种诡奇命案。 祸兮觊觎张瑾行身上的宝物，恨不得张瑾行赶紧撒手人寰，却由于两人的羁绊在路途中渐渐加深，祸兮越来越舍不得张谨行，一次次帮他缓解厄运延续他的生命……', '1', '8.99', null, '1405', 'http://f2.kkmh.com/image/180723/Md4P9Uo5i.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('25', '喜欢我的小柿子', '烈/日', '8', '3', '19岁的男主人公是洪柿浩休学一年，重新回到高三生活，呆萌的他内心里似乎住着一个长不大的小孩， 常常令身边的人哭笑不得，那么，我们的小柿子能够在短暂的高中生涯里，遇到自己的那个TA么？ 19岁的男主人公是洪柿浩休学一年，重新回到高三生活，呆萌的他内心里似乎住着一个长不大的小孩， 常常令身边的人哭笑不得，那么，我们的小柿子能够在短暂的高中生涯里，遇到自己的那个TA么？', '0', '8.76', null, '1240', 'http://f2.kkmh.com/image/180705/KD7348uAV.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('26', '独家恋爱指令', 'Ho wook / Man jin', '3', '3', '现实世界中，换男友如换衣，对爱情毫无憧憬的林小夕，在发生交通意外死亡的当天遇到了恶魔小说家A。恶魔A将其从死亡边缘拉了回来，但条件是让她进入自己的小说中，成为小说的女主。林小夕为了活命，答应了恶魔A的条件。小说中的她会和男主张俊秀，男二刘昊天谱写一段怎样的罗曼史呢？这段经历又能否改变她的爱情观呢？', '0', '9.56', null, '1442', 'http://f2.kkmh.com/image/181113/stfsPy78q.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('27', '我的表哥在摩洛哥', '幽灵 / 木鬼', '7', '3', '“赚钱狂魔”表哥大学毕业后不想做一个平凡的上班族，他不顾家人反对，毅然踏上摩洛哥求学之旅， 在求学过程中，表哥死性不改，开发各种赚钱新技能，一场误打误撞的异国求学之旅就此拉开帷幕。', '0', '8.33', null, '1273', 'http://f2.kkmh.com/image/190305/w3fCZ3Kyk.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('28', '女神降临', '喵喵', '10', '3', '拥有逆天颜值的女神任晶晶，走在大街上永远是焦点所在，谁曾想到，她也有丑小鸭一样灰暗平庸的过去，她是如何逆流而上，成为不动刀的女神，秘密就在这里……', '0', '8.88', null, '1268', 'http://f2.kkmh.com/image/181002/tMS3E5lUS.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('29', '奇奇怪怪', '吴城垈', '6', '3', '吴城垈作家特有的黑白画风及平静的描述，现实代入感强烈，持续不断又历历在目的奇妙怪异故事合集，刮起了一股网络恐怖漫画风潮！你准备好了吗？', '0', '9.76', null, '296', 'http://f2.kkmh.com/image/190103/nJzja4cVQ.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('30', '绝顶', '肖新宇', '4', '3', '故事由牧野帮帮主贾富贵谢顶开始，虽然在武力方面碾压江湖，但是由于谢顶，导致他超级不自信，为了寻找生发配方而，二当家和他一起踏上江湖，展开冒险引发了一系列的爆笑事件！', '1', '9.21', null, '1331', 'http://f2.kkmh.com/image/190726/3hrrEvWxu.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('31', '温蒂的花店', 'Bize / sizh', '3', '4', '家人！恋人！都背叛了温蒂，绝望之余意外获得神奇力量。 温蒂关闭了心灵之门安居花店！这位女主能再爱上别人吗？她的One pick会是白马王子？还是黑骑士？', '1', '9.33', null, '1336', 'http://f2.kkmh.com/image/190306/7spiDS8E8.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('32', 'AI管家在末世', '蔡溶宅 / 柚弦', '4', '4', '人类因A.I获得跨越性的科技飞跃，全球80%人类无需工作的时代来临，197X年病毒流感开始爆发。此时，住在某一村庄的奈瑟发现被遗弃的A.I，将其送到德罗西奶奶那儿，求她修理。A.I重获新生后，被奈瑟取名为哈斯迪...但，不幸的是，德罗西奶奶和奈瑟被病毒感染。哈斯迪背着奈瑟，跑向城市。但，抵达目的地的哈斯迪，看到的却是…', '1', '9.43', null, '1369', 'http://f2.kkmh.com/image/190704/IikMjRPhK.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('33', '恋爱革命', '232', '5', '4', '上学第一天的路上弄丢钱包无法搭公车的公主英，身后的女同学替他付公车费，帮他解决危机。美女救英雄，那么，就以身相许吧！屡败屡战的痴情男主和外刚内柔的霸道女主，青春恋爱革命现在开始！', '1', '9.23', null, '249', 'http://f2.kkmh.com/image/190118/Vr8wiW8nT.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('34', '一半', '考石头 / 奇三三', '9', '4', '因为一只猫相遇的两个迥异的女孩，相识相知、彼此陪伴与治愈的暖心故事', '1', '9.56', null, '1350', 'http://f2.kkmh.com/image/180705/Z8fSi2plu.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('35', '成龙补习班', 'EON', '3', '4', '蛟龙巴利修炼千年一心想成为一条真正的龙，为了通过升龙考试拜托传说中的家教老师灿灵帮忙辅导……巴利能否通过考试金榜题名呢？', '1', '9.07', null, '1397', 'http://f2.kkmh.com/image/180831/l2WcBVX3F.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('36', '百鬼夜行志・一夜怪谈之卷', '阿慢', '6', '4', '正好在搞笑和恐怖中间的漫画吧！超级欲擒故纵的漫画。「恐怖与搞笑只有一线之隔。」 这是一部让人感到莫名其妙的短篇怪谈创作集......想要看恐怖篇，但没有勇气看太可怕的读者来来来~~ 正好在搞笑和恐怖中间的漫画吧！超级欲擒故纵的漫画。「恐怖与搞笑只有一线之隔。」 这是一部让人感到莫名其妙的短篇怪谈创作集......想要看恐怖篇，但没有勇气看太可怕的读者来来来~~', '0', '9.33', null, '629', 'http://f2.kkmh.com/image/180706/K3O0ERxy5.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('37', '看脸时代', '泰俊', '8', '4', '全校最丑陋的男同学偶然得到了一具完美男神的身体，思维可以在两个身体间相互转换，他会如何改变分身所带来的各种意外事件？又养眼又现实的精彩故事还在继续…… 超过99%的网友都在搜，网评最热内容指路↓ [第28话] 秀我主播 [第113话] 跟踪狂 [第219话]“离家出走”组织', '0', '9.23', null, '423', 'http://f2.kkmh.com/image/170701/yrplx2ggu.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('38', '所以和黑粉结婚了', 'Jaerim', '5', '4', '男主角胡珺是一位世界级的K-POP star，他的公认黑粉李锦莹，是如何从一名杂志社记者变成黑粉的呢？两人是为何会开始同居生活，同居期间又发生了怎样的故事呢？', '0', '7.45', null, '1374', 'http://f2.kkmh.com/image/190108/RxbQwCdXi.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('39', '指尖上的狂粉', '朴正悯', '10', '4', '狂热的追星族少女在某一天早晨醒来后却发现自己变成了偶像欧巴的手指头？！这是上天给她的惊喜还是一个噩耗？她喜欢的欧巴又真的是那么完美吗？', '1', '7.87', null, '1241', 'http://f2.kkmh.com/image/170428/jc9z9e7pr.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('40', '从谎言开始', '梁阿渣', '10', '4', '被夏依依和秋芒两个女孩子表白之下的唐堂，灵机一动搬出“我不喜欢女孩子”为借口拒绝。心有不甘的夏依依和秋芒却开始反复要求唐堂出示证据，而为了圆自己撒的谎，唐堂只好求助于自己的竹马——陈青野，配合他的表演。而总是表现出不情愿的陈青野，却也一次又一次地满足着唐堂的各种无理要求。', '1', '7.99', null, '1365', 'http://f2.kkmh.com/image/180929/jlI2oylmC.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('41', '烧啊我的卡路里', '常盘勇者', '7', '5', '我，重半吨!能打!无敌!锄强扶弱!全校男生保护神!然而某天，我变瘦了变弱了...但是变帅了…', '1', '7.34', null, '1416', 'http://f2.kkmh.com/image/171201/wd4irlrb9.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('42', '僵尸奶爸', '昌', '7', '5', '震惊！H城惊现了一大批僵尸，即将被赶尽杀绝，不料乖乖女儿也被咬成了僵尸！但这个僵尸女儿有点怪萌，敢咬爸爸却不敢咬奶奶，难道僵尸的世界里也存在地位高低？！ 震惊！H城惊现了一大批僵尸，即将被赶尽杀绝，不料乖乖女儿也被咬成了僵尸！但这个僵尸女儿有点怪萌，敢咬爸爸却不敢咬奶奶，难道僵尸的世界里也存在地位高低？！', '1', '7.54', null, '1324', 'http://f2.kkmh.com/image/170505/zaja53ork.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('43', '我与这家伙', '尤米', '5', '5', '从小就食量惊人的少女，却怎么也吃不胖，与她青梅竹马的少年也在一直认真投喂少女，两个可爱的家伙的日常。', '1', '9.56', null, '1380', 'http://f2.kkmh.com/image/180316/bgyxqkf6x.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('44', '恋爱战争', '乌贼藏/叁衫', '5', '5', '2119年，数学系宅男吴恙因单身而被强制送进恋爱学院进修。在这里，只有恋爱成功才能离开。而失败的人就会成为对方的仆人！吴恙在恋爱魔女萧百媚的教导下，熟练运用各种套路斗渣女，撕渣男，赢得了一次次恋爱战争的胜利。而两人间的爱情也在此过程中，渐渐萌生...', '1', '8.75', null, '1437', 'http://f2.kkmh.com/image/181127/MRO60QRHW.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('45', '柔美的细胞君', '李东建', '9', '5', '柔美的细胞君第二季超~~可爱来袭，这一季，柔美想谈恋爱，脑内的细胞全炸了，都帮她出谋划策，可是，最关键的爱情细胞君还在昏迷，柔美能恋爱成功吗？爱情细胞君快醒醒啊！', '1', '8.32', null, '465', 'http://f2.kkmh.com/image/181024/V5JfR4mGh.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('46', '暧昧沦陷', '正瑞', '5', '5', '她，对男友的不专一感到失望，最终选择分手。经历一段失败的感情后，对爱情彻底没有了安全感，却偏偏在这个时候遇到身上有和自己名字一样纹身的他。是真爱还是让她感到不安的中央空调男？一种微妙的情感在心中盘旋，不知不觉深陷其中…', '1', '8.87', null, '1388', 'http://f2.kkmh.com/image/170620/95o6digkp.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('47', 'C位成神', '白熊 / 部队火锅', '7', '5', '随着科技发展，掌管天气的神仙不再被人们祭祀。神仙雨师神力日渐衰落，化名为“石雨”下凡到人间，被黑心老板拐入了贫困潦倒的娱乐公司做练习生，参加选秀节目“我是C位”。 因为毫无常识还异常想红闹出不少乌龙，石雨意外走红，与其他三位队友组成了SWEN男团出道。而石雨渐渐发现，队友杨东骏与钟云居然也是来人间打工赚信仰的神仙……', '0', '8.46', null, '1378', 'http://f2.kkmh.com/image/180711/RVdAlzsJY.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('48', '花样K House', '泰俊', '10', '5', '一个不知名的小岛，一个为了心中的梦想上京的岛民。阴差阳错，机缘巧合之下，开始了他啼笑皆非的逐梦之路。高颜值帅哥们的同居生活，却有着不可告人的秘密。他们的故事，正在拉开序幕…', '0', '8.39', null, '1323', 'http://f2.kkmh.com/image/190305/0UX9Ax9Z0.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('49', 'Dead Life', '金星勋 / 林辰国', '3', '5', '当世界被丧尸所占领，高中生纪成勋被喜欢的女生所咬，意外变成了一个高智商丧尸。身为丧尸的他会如何选择？是毁灭世界还是拯救世界呢？', '0', '9.23', null, '1358', 'http://f2.kkmh.com/image/190123/LKLiiuXCu.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('50', '只喜欢美男', 'Tari', '5', '5', '只要能待在帅哥身边就好！非帅哥不爱的萧宇宙，崎岖坎坷的恋爱成长故事', '0', '9.54', null, '1229', 'http://f2.kkmh.com/image/170821/tkjglgra1.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('51', '18不限', '九攻', '7', '6', '这是两个直男朋友和一帮神助攻的故事。在静水高中的校园里，逗B乐天的金斩和学霸班长喻树是一对要好的同桌，同时也是“腐眼看人基”的同学眼中的完美男男CP。他们都以各自的方式经历着迷茫而美好的18岁，两人之间的感情也面临重重考验。至于他俩之间是超越友情的爱情，还是超越爱情的友情，有差吗，嗯？', '0', '9.76', null, '1063', 'http://f2.kkmh.com/image/180706/qcetpjh3A.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('52', '童年细思恐', '辰瑆', '6', '6', '楼上的脚步声、窗外婆娑的树影、散发奇怪香味的旧书箱……也许一些儿时不以为然的经历，在长大知道真相后，就是完全不同的体会了吧……', '0', '9.21', null, '1366', 'http://f2.kkmh.com/image/180104/qrcff6e1s.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('53', '顾事与你：值日300天', 'Atias / 旺财的菊', '8', '6', '校内闻名的刺头——顾泽！原本只有30天的值日，却被学生会副会长叶汝川“改了一点”，变成了“300”天…… 两人针对值日与否斗智斗勇！而在震惊于各路牛鬼蛇神、狠人狼灭的神操作之中，顾泽与叶汝川也开始逐渐了解对方，并慢慢培养出默契…… 坏学生VS副会长！想尽办法逃避值日的十七岁日常！ 校内闻名的刺头——顾泽！原本只有30天的值日，却被学生会副会长叶汝川“改了一点”，变成了“300”天…… 两人针对值日与否斗智斗勇！而在震惊于各路牛鬼蛇神、狠人狼灭的神操作之中，顾泽与叶汝川也开始逐渐了解对方，并慢慢培养出默契…… 坏学生VS副会长！想尽办法逃避值日的十七岁日常！', '1', '9.33', null, '1353', 'http://f2.kkmh.com/image/181228/yYT0F89S6.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('54', '白色风暴', '集盒', '10', '6', '一场至关重要的自由式滑雪空中技巧赛决赛，滑雪天才少年姜明霖因雪板故障痛失冠军，与此同时，漂泊异国的赌徒白翎因下注姜明霖夺冠，血本无归，惨遭当地黑帮追击。当草蛇灰线的阴谋铺展开来，少年们的命运逐渐牵扯在一起，白翎、姜明霖、景林、左一昀，他们必须迎接挑战，掀起一场白色风暴，夺回属于他们的冠军荣耀。', '1', '9.45', null, '1408', 'http://f2.kkmh.com/image/190305/rGANBoowL.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('55', '逆袭女王的男人', 'Lee Yeon', '5', '6', '在妈妈施压下一直只顾着学习的金艺瑟，终于考上了名校！但从来没有打扮过的她，在这个校园里却是个名副其实的丑小鸭。而化妆师千允诚正在寻找她这张在别人眼里平淡无奇的脸。艺瑟能变成白天鹅吗？他们之间会有什么样的故事？让我们拭目以待！', '1', '9.45', null, '1337', 'http://f2.kkmh.com/image/190809/UueDu7BAR.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('56', '我的妈妈是校花', '洪承杓 / GuGu', '3', '6', '男主孔小灿为了拯救身患重病的妈妈与死神达成交易，用自己44年的寿命换取妈妈痊愈。痊愈后的妈妈变成了20岁的模样，而他自己则随时可能遭遇事故身亡。于是他决定在自己活着的时候帮妈妈完成梦想…跟比自己还要年轻的妈妈一起生活，会发生什么样的故事呢？知道真相的妈妈又会作何反应…', '1', '9.12', null, '1440', 'http://f2.kkmh.com/image/190628/006UArHuf.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('57', '没错，是初恋呀', '下午茶', '5', '6', '她想隐瞒，而他又想弄清，两人演绎欲擒故纵的浪漫爱情故事！ 她想隐瞒，而他又想弄清，两人演绎欲擒故纵的浪漫爱情故事！', '1', '7.98', null, '1411', 'http://f2.kkmh.com/image/181226/G9wGgQYsl.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('58', '宿运街18号', '光影漫道/HK/C先生', '6', '6', '都市奇异故事短篇集锦，你有什么愿望让我们来帮你实现。', '1', '9.21', null, '1409', 'http://f2.kkmh.com/image/170818/u9v48wcrg.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('59', '朕的皇妃是客服', 'Peralta / Eunyoung', '5', '6', '密林购物广场的客服专员陈艺璐，在去拜访客人的时候，无意中穿越到了异世界的肖国，并且在那里稀里糊涂地成为了皇妃…', '0', '9.03', null, '1433', 'http://f2.kkmh.com/image/190122/6WmbZM1pw.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('60', '喜欢也没用，没用也喜欢', '胡桃文化', '5', '6', '艺大设立了特色美术系和艺术实验系，为了考取设计研究生临时转专业来的宋知阳在那遇见了一直以来都喜欢的模特艺人。却得知实验系不成文的无法恋爱的魔咒。在结识了各色各样有趣且努力成为出道艺人的孩子，也遇上了私生粉和各种麻烦事，打破阻碍的同时两人的感情也逐渐加深，当揭开“魔咒”背后其实都是人为因素造成的故事时，两个人能否走在一起...', '0', '8.45', null, '1342', 'http://f2.kkmh.com/image/170206/tiroy0up0.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('61', '最讨厌的你', 'Bless / 蛋堡', '5', '7', '黄一一和宫肖宇从大学开始恋爱了9年，本以为要结婚的宫肖宇某天突然接到了黄一一要求分手的电话。来不及去找她，他就发生了意外。等他醒来时却发现自己竟然回到了大学时代，再次见到恋人的他万万没想到对方也是穿越而来的。重新相遇的两人，还会选择对方吗……', '0', '8.54', null, '1402', 'http://f2.kkmh.com/image/190115/fWsBT8Fco.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('62', '新石器女', 'JAEAH / GARAM', '5', '7', '生命所剩不多的腹黑医生遇到了长生不死的神秘少女，围绕在他们身边的惊险和浪漫同时被引爆，他的世界好像也不再是非黑即白那么简单......', '0', '8.65', null, '1246', 'http://f2.kkmh.com/image/190203/I3ZUhFeBi.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('63', '少女的世界', 'morangg', '8', '7', '在这个看脸时代里，丑小鸭与白天鹅所受的待遇完全不同，娜丽就刚好有一群白天鹅朋友，这些可爱的少女们会怎样守护自己的友谊呢？', '0', '7.34', null, '552', 'http://f2.kkmh.com/image/180113/amnf2jtl1.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('64', '郭九二漫画宇宙', '郭九二', '7', '7', '漫画家郭九二与妈斗与爸斗与猫斗的日常生活', '0', '6.43', null, '1445', 'http://f2.kkmh.com/image/190311/9ZmVPUZWW.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('65', '笑藏钩', '璎珞 / 贰三子', '3', '7', '昭武十三年，逍遥山宝箓派封禁之物失窃，引出一连串诡秘悬案。宝箓派诸弟子奉命捉拿叛徒。跳脱飞扬的大弟子白笈，下山偶遇早已离开师门的小师弟——当朝太子萧却，曾经最亲密的师弟如今却对他态度古怪；嫉恶如仇的二师弟明悬，平生最恨妖魔鬼怪，却与妖怪纠缠出一段说不清的孽缘……江湖朝堂风云诡谲，师兄弟联手勘破谜案，也在红尘越陷越深……', '0', '6.55', null, '1375', 'http://f2.kkmh.com/image/171023/l71gp7es9.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('66', '我的妈妈是校花', '洪承杓 / GuGu', '3', '7', '男主孔小灿为了拯救身患重病的妈妈与死神达成交易，用自己44年的寿命换取妈妈痊愈。痊愈后的妈妈变成了20岁的模样，而他自己则随时可能遭遇事故身亡。于是他决定在自己活着的时候帮妈妈完成梦想…跟比自己还要年轻的妈妈一起生活，会发生什么样的故事呢？知道真相的妈妈又会作何反应…', '0', '7.99', null, '1440', 'http://f2.kkmh.com/image/180316/bgyxqkf6x.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('67', '许愿的正确姿势', '你好苏 / 一只虾', '7', '7', '主角向神许愿却付出惨重代价！被迫开启印度冒险之旅收集圣物，只为再次许愿让一切复原。 主角向神许愿却付出惨重代价！被迫开启印度冒险之旅收集圣物，只为再次许愿让一切复原。', '0', '5.83', null, '1435', 'http://f2.kkmh.com/image/181128/yesQAUBtQ.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('68', '龙从天上来', '杨笑汝', '5', '7', '世界上存在着一些远古神秘生物，被称之为“小元天”，有的人想以它们牟利，也有的人在保护它们。小姑娘袁瓶瓶在小的时候曾经“死”过一回，从此对“龙”心有余悸，然而兜兜转转，长大的她又再相逢曾经的龙少年……', '0', '9.04', null, '1436', 'http://f2.kkmh.com/image/190403/0c5HhBnjG.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('69', '我与她的田园战歌', '风人动漫', '4', '7', '开发异界成为新兴产业？在水墨风格的山海经世界，究竟怎么种田才能交得起养老保险呢？且看他的鬼点子与她的战斗力……', '0', '8.67', null, '1441', 'http://f2.kkmh.com/image/181116/4vpgfyOyi.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('70', '高三无双', 'BB达宫 / Hama', '3', '7', '失传千年的武林绝学出现在了当代高中？临危受命的张五柱能否担当起掌门的职责？他是否能在弟子的辅佐下，治理好五当派并完成奶奶的临终遗愿呢？', '0', '8.55', null, '1430', 'http://f2.kkmh.com/image/190619/KH9sBw5l4.webp-fe.w360.webp.m.i1');
INSERT INTO `cartoon` VALUES ('71', '宵禁都市', '混沌工作室 / 优癖', '4', '7', '地狱之门打开了！ 一座人与恶魔一起生活的城市出现了，它的名字是——海拉穆尔！！ 地狱之门打开了！ 一座人与恶魔一起生活的城市出现了，它的名字是——海拉穆尔！！', '1', '8.67', null, '1362', 'http://f2.kkmh.com/image/190730/PFqsm4Yaj.webp-fe.w360.webp.m.i1');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cy_name` varchar(255) DEFAULT NULL COMMENT '分类名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cy_name` (`cy_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('5', '励志');
INSERT INTO `category` VALUES ('2', '古风');
INSERT INTO `category` VALUES ('3', '奇幻');
INSERT INTO `category` VALUES ('4', '少年');
INSERT INTO `category` VALUES ('6', '恋爱');
INSERT INTO `category` VALUES ('1', '悬疑');
INSERT INTO `category` VALUES ('7', '搞笑');
INSERT INTO `category` VALUES ('8', '校园');
INSERT INTO `category` VALUES ('9', '治愈');
INSERT INTO `category` VALUES ('10', '都市');

-- ----------------------------
-- Table structure for chaptor
-- ----------------------------
DROP TABLE IF EXISTS `chaptor`;
CREATE TABLE `chaptor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chaptor_name` varchar(255) DEFAULT NULL COMMENT '章节名称',
  `ct_id` int(11) DEFAULT NULL COMMENT '漫画id',
  `update_time` varchar(255) DEFAULT NULL COMMENT '更新日期',
  `chaptor_url` varchar(255) DEFAULT NULL COMMENT '章节图片地址',
  `zan_num` int(11) DEFAULT '0' COMMENT '点赞数量',
  `bg_music_url` varchar(255) DEFAULT NULL COMMENT '背景音乐',
  `pay` int(255) DEFAULT '0' COMMENT '付费章节',
  `pay_user_id` varchar(11) DEFAULT '' COMMENT '所购买章节的用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=707 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chaptor
-- ----------------------------
INSERT INTO `chaptor` VALUES ('1', '完结篇 恋爱是酸甜味的', '1', '01-14', 'http://f2.kkmh.com/image/170113/rf9eakfw1.webp-fe.w360.webp.m.i1', '0', null, '0', '2,');
INSERT INTO `chaptor` VALUES ('2', '第53话 我们回家', '1', '12-27', 'http://f2.kkmh.com/image/161226/a7kvmk98p.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('3', '第52话 我的心很小', '1', '12-20', 'http://f2.kkmh.com/image/161219/6gdp1hu3g.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('4', '第51话 不恨你妈了？', '1', '12-13', 'http://f2.kkmh.com/image/161213/ty514ln6m.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('5', '第50话 后知后觉的真心', '1', '11-29', 'http://f2.kkmh.com/image/161129/9aoy0ip8l.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('6', '第49话 就这样被喜欢的人看穿', '1', '11-22', 'http://f2.kkmh.com/image/161122/52qj7f0db.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('7', '第48话 尴尬的气氛', '1', '11-15', 'http://f2.kkmh.com/image/161115/zkp3xsvtz.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('8', '第47话 没有安全感', '1', '11-01', 'http://f2.kkmh.com/image/161031/6pz6phvix.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('9', '第46话 一个人', '1', '10-25', 'http://f2.kkmh.com/image/161025/a36xrufy4.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('10', '第45话 吃醋', '1', '10-18', 'http://f2.kkmh.com/image/161017/oriu8949d.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('11', '第44话 对不起', '1', '10-11', 'http://f2.kkmh.com/image/161010/yku73tw1m.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('12', '第43话 解释的理由', '1', '10-04', 'http://f2.kkmh.com/image/161003/ir3o6uoh6.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('13', '第42话 你不懂女生', '1', '09-27', 'http://f2.kkmh.com/image/160926/9470cx887.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('14', '第41话 最温柔的拒绝', '1', '09-06', 'http://f2.kkmh.com/image/160905/ahgtlbd3q.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('15', '第40话 好丢脸', '1', '08-24', 'http://f2.kkmh.com/image/160823/tetpcq41i.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('16', '第39话 难过就哭出来', '1', '08-09', 'http://f2.kkmh.com/image/160808/h2rk6hvht.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('17', '第38话 喜欢的那种心情好像动摇了', '1', '07-26', 'http://f2.kkmh.com/image/160726/tzlpdhkjg.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('18', '第37话 还有我陪你', '1', '07-12', 'http://f2.kkmh.com/image/160711/3u8f5wvdj.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('19', '第36话 请你相信我', '1', '07-05', 'http://f2.kkmh.com/image/160704/p47o97nkv.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('20', '第35话 你竟然打我！', '1', '06-28', 'http://f2.kkmh.com/image/160627/9rk9dd81t.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('21', '第34话 吕振宇可以补考了！', '1', '05-17', 'http://f2.kkmh.com/image/160516/tf1uv196d.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('22', '第33话 不想在见到你', '1', '05-12', 'http://f2.kkmh.com/image/160511/ntleg1afa.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('23', '第32话 回不去了', '1', '05-03', 'http://f2.kkmh.com/image/160502/g6dec3oaf.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('24', '第31话 他竟然变了', '1', '04-26', 'http://f2.kkmh.com/image/160425/3y3ymlz9u.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('25', '第30话 我们都努力让自己变得更好', '1', '04-19', 'http://f2.kkmh.com/image/160418/c7qsnm742.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('26', '第29话 要是你是我喜欢的类型就好了', '1', '04-07', 'http://f2.kkmh.com/image/160407/kqlh7kg1t.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('27', '第28话 要是你喜欢我就好了', '1', '03-29', 'http://f2.kkmh.com/image/160328/7ev9ud8fh.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('28', '第27话 距离好像更近了……', '1', '03-22', 'http://f2.kkmh.com/image/160321/nw4m2qy7q.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('29', '第26话 命运之神的决定', '1', '03-16', 'http://f2.kkmh.com/image/160315/572319xhq.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('30', '第25话 没有人会喜欢孤独', '1', '03-08', 'http://f2.kkmh.com/image/160308/837uzmhlm.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('31', '第24话 我和他究竟谁更重要', '1', '03-01', 'http://f2.kkmh.com/image/160229/q91mmrs46.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('32', '第23话 闺蜜分手，多半是因为男人', '1', '02-23', 'http://f2.kkmh.com/image/160223/gxhdpgrkh.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('33', '第22话 她为什么会出现', '1', '02-02', 'http://f2.kkmh.com/image/160202/y957vhqib.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('34', '第21话 全校都知道我们的事了！', '1', '01-26', 'http://f2.kkmh.com/image/160125/90qjvqd3q.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('35', '第20话 情敌相遇，为爱宣战！', '1', '01-19', 'http://f2.kkmh.com/image/160118/7zce73v20.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('36', '第19话 终于大胆的向暗恋对象表白了！', '1', '01-05', 'http://f2.kkmh.com/image/160104/xc9sqhska.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('37', '第18话 无法注视着你的眼', '1', '12-26', 'http://f2.kkmh.com/image/151225/5cfai7n9k.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('38', '第17话 我会陪着你，这是我们的约定', '1', '12-20', 'http://f2.kkmh.com/image/151220/997dkqvxi.jpg-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('39', '第16话 果然还是默默注视着他就好了…', '1', '12-12', 'http://f2.kkmh.com/image/151212/uqj1bpxwh.jpg-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('40', '第15话 如果你喜欢的人喜欢别人……', '1', '12-05', 'http://f2.kkmh.com/image/151204/20qt9mfi7.jpg-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('41', '第14话 既然那么喜欢，为什么不去追呢', '1', '11-28', 'http://f2.kkmh.com/image/151127/hs9kzynfk.jpg-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('42', '第13话 从来没有见过他这种表情……', '1', '11-21', 'http://f2.kkmh.com/image/151120/55eniqcy8.jpg-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('43', '第12话 你不会喜欢她吧！', '1', '11-14', 'http://f2.kkmh.com/image/151113/wpzm6vo72.jpg-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('44', '第11话 如果撑不住，就不要逞强啊', '1', '11-07', 'http://f2.kkmh.com/image/151106/op8zqu44r.jpg-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('45', '第10话 如果不珍惜，也许就再没机会了', '1', '10-31', 'http://f2.kkmh.com/image/151030/559xj9hpk.jpg-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('46', '第9话 好像情况不太对……', '1', '10-24', 'http://f2.kkmh.com/image/151024/rc8xc6x0a.jpg-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('47', '第8话 明知不可能竟然还会期待', '1', '10-17', 'http://f2.kkmh.com/image/151016/zbgij55pu.jpg-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('48', '第7话 终于可以靠他更近一点了！', '1', '10-10', 'http://f2.kkmh.com/image/151009/cz983wn6q.jpg-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('49', '第6话 那是我第一次看见他的眼泪', '1', '10-04', 'http://f2.kkmh.com/image/151004/2zhaobmwk.jpg-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('50', '第5话 我和他之间有条剪不断的线', '1', '09-26', 'http://f2.kkmh.com/image/150926/oa2di3ac3.jpg-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('51', '第4话 你喜欢他时看他的神情', '1', '09-19', 'http://f2.kkmh.com/image/150919/e2t2ga6m4.jpg-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('52', '第3话 他会喜欢比我可爱的女生吧', '1', '09-12', 'http://f2.kkmh.com/image/150911/dniqmsa4w.jpg-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('53', '第2话 你会喜欢我这种类型的女生吗？', '1', '09-05', 'http://f2.kkmh.com/image/150905/5275fev3j.jpg-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('54', '第1话 我和他的距离，遥不可及', '1', '08-29', 'http://f2.kkmh.com/image/150828/tck7s29gj.jpg-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('55', '第17话 暗中观察', '2', '10-14', 'http://f2.kkmh.com/image/191012/7e0IzYVBj.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('56', '第16话 危墙之下', '2', '10-07', 'http://f2.kkmh.com/image/191009/KicOYvXGl.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('57', '第15话 堕落', '2', '09-30', 'http://f2.kkmh.com/image/190929/Kxmfo88v4.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('58', '第14话 羞涩', '2', '09-23', 'http://f2.kkmh.com/image/190922/IjvF2r8so.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('59', '第13话 我哪敢说啊', '2', '09-23', 'http://f2.kkmh.com/image/190922/ZciInGpqq.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('60', '第12话 快四十岁怎么了？', '2', '09-16', 'http://f2.kkmh.com/image/190916/sHVVFn0MH.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('61', '第11话 又见面了？！', '2', '09-16', 'http://f2.kkmh.com/image/190916/yIKFbDBc4.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('62', '第10话 过去的暧昧秘密', '2', '09-09', 'http://f2.kkmh.com/image/190906/5mlgx7K5j.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('63', '第9话 不想再逃避', '2', '09-09', 'http://f2.kkmh.com/image/190906/SeQEUrqr4.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('64', '第8话 亲密关系？！', '2', '09-02', 'http://f2.kkmh.com/image/191012/tB4UbcQI7.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('65', '第7话 左右为难', '2', '09-02', 'http://f2.kkmh.com/image/190930/sGAJY3gYL.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('66', '第6话 暴力', '2', '08-26', 'http://f2.kkmh.com/image/190929/c3uZe1UWk.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('67', '第5话 我想去', '2', '08-26', 'http://f2.kkmh.com/image/190923/R1gWVdctg.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('68', '第4话 这个刺青是记号', '2', '08-19', 'http://f2.kkmh.com/image/190923/Pg7dJ2lrb.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('69', '第3话 你身上还有多少可能性', '2', '08-19', 'http://f2.kkmh.com/image/190906/mFtMj61x3.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('70', '第2话 最熟悉的陌生人', '2', '08-12', 'http://f2.kkmh.com/image/190830/VQgJ5hczW.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('71', '第1话 再次见到你', '2', '08-12', 'http://f2.kkmh.com/image/190823/VcybvvvLT.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('72', '第一季完结 你怎么才来！', '2', '04-22', 'http://f2.kkmh.com/image/190816/NZJNxF234.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('73', '第31话 流浪汉', '2', '04-22', 'http://f2.kkmh.com/image/190809/m5Wmkdiw1.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('74', '第30话 渣男？！', '2', '04-15', 'http://f2.kkmh.com/image/190726/5g87EJrGW.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('75', '第29话 让我留在你身边', '2', '04-15', 'http://f2.kkmh.com/image/190718/i1w6Ewlc3.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('76', '第28话 迷乱的一夜', '2', '04-08', 'http://f2.kkmh.com/image/190711/0iOQUq1MI.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('77', '第27话 迷香的副作用', '2', '04-08', 'http://f2.kkmh.com/image/190704/XGyuLbZAr.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('78', '第26话 失眠', '2', '04-01', 'http://f2.kkmh.com/image/190627/WBHgTzSkb.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('79', '第25话 一点都没变', '2', '04-01', 'http://f2.kkmh.com/image/190620/UCCvXmWSq.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('80', '第24话 拿你没办法', '2', '03-25', 'http://f2.kkmh.com/image/190612/UXif7xHWA.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('81', '第23话 受伤', '2', '03-25', 'http://f2.kkmh.com/image/190606/isZoO3Ufl.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('82', '第22话 肋骨断了', '2', '03-18', 'http://f2.kkmh.com/image/190530/dlnhPUdyh.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('83', '第21话 你要分手？', '2', '03-18', 'http://f2.kkmh.com/image/190523/VKKSrf2wg.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('84', '第20话 分手吧', '2', '03-11', 'http://f2.kkmh.com/image/190517/CbR8aZxg6.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('85', '第19话 好久不见', '2', '03-11', 'http://f2.kkmh.com/image/190508/tvbGfj6wm.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('86', '第18话 你还喜欢我妈妈吗？', '2', '03-04', 'http://f2.kkmh.com/image/190502/VxqkTXfde.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('87', '第17话 好久不见，笑珠', '2', '03-04', 'http://f2.kkmh.com/image/190425/LmxGTHn0c.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('88', '第16话 有人认识你的戒指', '2', '02-25', 'http://f2.kkmh.com/image/190419/ywKixm8Fy.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('89', '第15话 终于要见到你了吗？', '2', '02-25', 'http://f2.kkmh.com/image/190412/8sxGoQRJK.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('90', '第14话 说谎的某人', '2', '02-18', 'http://f2.kkmh.com/image/190405/7Rbu5zCY1.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('91', '第13话 我没有爸爸', '2', '02-18', 'http://f2.kkmh.com/image/190331/OSxU3GfaN.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('92', '第12话 偷拍', '2', '02-11', 'http://f2.kkmh.com/image/190323/9HcZuBUyo.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('93', '第11话 那时的伤口', '2', '02-11', 'http://f2.kkmh.com/image/190317/VPHSzk8g6.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('94', '第10话 你有思念的人', '2', '02-08', 'http://f2.kkmh.com/image/190310/Ts1ns34L1.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('95', '第9话 是你将我推向地狱', '2', '02-08', 'http://f2.kkmh.com/image/190301/kWzf3gQcL.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('96', '第8话 他是我最讨厌的人', '2', '02-08', 'http://f2.kkmh.com/image/190222/OZyGSMxpQ.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('97', '第7话 意外的吻', '2', '02-08', 'http://f2.kkmh.com/image/190215/42LDme2K2.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('98', '第6话 演绎男男之爱？', '2', '02-08', 'http://f2.kkmh.com/image/190203/6YGqYshs8.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('99', '第5话 偷来的戒指', '2', '02-08', 'http://f2.kkmh.com/image/190203/72PricGn7.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('100', '第4话 恐怖的女孩子！', '2', '02-07', 'http://f2.kkmh.com/image/190203/YcQLSEy2o.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('101', '第3话 独一无二的戒指', '2', '02-06', 'http://f2.kkmh.com/image/190202/B6nNwV7CA.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('102', '第2部第2话 纽约来的小姨', '2', '02-05', 'http://f2.kkmh.com/image/190202/6QybR6COZ.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('103', '第2部第1话 我最讨厌妈妈！', '2', '02-04', 'http://f2.kkmh.com/image/190202/D5MkoDhnX.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('104', '番外 幸福的延续', '2', '02-03', 'http://f2.kkmh.com/image/190201/x05WVWfTk.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('105', '第三季第47话 我爱你，爱你', '2', '04-02', 'http://f2.kkmh.com/image/180401/cY2zHez5z.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('106', '第三季第46话 爱上你的谎言', '2', '04-02', 'http://f2.kkmh.com/image/180401/8gZuHWJKa.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('107', '第三季第45话 怒火', '2', '03-26', 'http://f2.kkmh.com/image/180325/H9zW44QXN.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('108', '第三季第44话 愿意付出代价吗', '2', '03-26', 'http://f2.kkmh.com/image/180325/lSSVr9CJJ.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('109', '第三季第43话 等我！', '2', '03-19', 'http://f2.kkmh.com/image/180318/g0dCQyCA4.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('110', '第三季第42话 都结束了', '2', '03-19', 'http://f2.kkmh.com/image/180318/aUNdNFGBl.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('111', '第三季第41话 美人计', '2', '03-12', 'http://f2.kkmh.com/image/180307/iXYk82F2x.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('112', '第三季第40话 冲着我来吧', '2', '03-12', 'http://f2.kkmh.com/image/180307/xsvYFIAGa.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('113', '第三季第39话 恶魔VS恶魔', '2', '03-05', 'http://f2.kkmh.com/image/180303/QJfDyJU0f.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('114', '第三季第38话 伤透了的心', '2', '03-05', 'http://f2.kkmh.com/image/180303/XESEEyOaX.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('115', '第三季第37话 回忆重叠！', '2', '02-26', 'http://f2.kkmh.com/image/180224/q6GLjjcs6.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('116', '第三季第36话 谁都逃不了', '2', '02-26', 'http://f2.kkmh.com/image/180224/otRDn2OTJ.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('117', '第三季第35话 计划失败', '2', '02-19', 'http://f2.kkmh.com/image/180211/aCmpTu9Qo.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('118', '第三季第34话 他是恶魔！', '2', '02-19', 'http://f2.kkmh.com/image/180211/XcWHIRPaf.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('119', '第三季第33话 手机', '2', '02-12', 'http://f2.kkmh.com/image/180211/inMjeAkdb.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('120', '第三季第32话 噩梦再临', '2', '02-12', 'http://f2.kkmh.com/image/190128/KBQurt6lY.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('121', '第三季第31话 公众人物', '2', '02-05', 'http://f2.kkmh.com/image/190120/ZfTYuRyMC.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('122', '第三季第30话 浮出水面', '2', '02-05', 'http://f2.kkmh.com/image/190110/iSYOgY1Eq.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('123', '第三季第29话 平淡是真', '2', '01-29', 'http://f2.kkmh.com/image/190106/THbhCZRtW.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('124', '第三季第28话 格外想你', '2', '01-29', 'http://f2.kkmh.com/image/181229/Z0uPSjcbM.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('125', '第三季第27话 及时阻止', '2', '01-22', 'http://f2.kkmh.com/image/181223/yndzM195i.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('126', '第三季第26话 住手！', '2', '01-22', 'http://f2.kkmh.com/image/181215/C9enqEObB.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('127', '第三季第25话 内心的恶魔', '2', '01-15', 'http://f2.kkmh.com/image/181209/gprP7nlKW.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('128', '第三季第24话 他的另一面', '2', '01-15', 'http://f2.kkmh.com/image/181202/MZ7W5o1Uj.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('129', '第三季第23话 你不知道的真相', '2', '01-08', 'http://f2.kkmh.com/image/181125/06k4pkKWc.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('130', '第三季第22话 你是钥匙啊', '2', '01-08', 'http://f2.kkmh.com/image/181119/hDJNIQu18.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('131', '第三季第21话 极速狂飙', '2', '01-01', 'http://f2.kkmh.com/image/181110/kIVuQIOq4.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('132', '第三季第20话 危险袭来', '2', '01-01', 'http://f2.kkmh.com/image/181104/rhebgHI0A.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('133', '第三季第19话 深黑的陷阱', '2', '12-25', 'http://f2.kkmh.com/image/181026/IUjNCCBr1.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('134', '第三季第18话 不详的预感', '2', '12-25', 'http://f2.kkmh.com/image/181020/6TYLuuNy5.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('135', '第三季第17话 他出来了', '2', '12-18', 'http://f2.kkmh.com/image/171214/Olu0rmM2z.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('136', '第三季第16话 出国？', '2', '12-18', 'http://f2.kkmh.com/image/171214/Mk187YVqK.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('137', '第三季第15话 对不起妈妈', '2', '12-11', 'http://f2.kkmh.com/image/171208/3V6GiRcFi.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('138', '第三季第14话 爱你的证明', '2', '12-11', 'http://f2.kkmh.com/image/171208/MSRv6h3Id.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('139', '第三季 第13话 不要逃避', '2', '12-04', 'http://f2.kkmh.com/image/180916/wjIdKXgBR.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('140', '第三季 第12话 证明', '2', '12-04', 'http://f2.kkmh.com/image/180907/MCMXrfwNo.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('141', '第三季 第11话 雨夜', '2', '11-27', 'http://f2.kkmh.com/image/180831/VFZzfHXMl.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('142', '第三季 第10话 痛苦的回忆', '2', '11-27', 'http://f2.kkmh.com/image/180827/B3qrMslAn.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('143', '第三季 第9话 再次相遇！', '2', '11-20', 'http://f2.kkmh.com/image/171117/ot4bawrte.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('144', '第三季 第8话 你不相信我', '2', '11-20', 'http://f2.kkmh.com/image/171116/b9dfy7yuc.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('145', '第三季 第7话 暗涌', '2', '11-13', 'http://f2.kkmh.com/image/171110/hy8uw65cf.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('146', '第三季 第6话 袭击！', '2', '11-13', 'http://f2.kkmh.com/image/171109/zwdfnmmao.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('147', '第三季 第5话 开心…', '2', '11-06', 'http://f2.kkmh.com/image/180722/DUoHuXMHu.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('148', '第三季 第4话 恶魔！', '2', '11-06', 'http://f2.kkmh.com/image/171103/hta5wnb6p.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('149', '第三季 第3话 纵火犯的过去', '2', '10-30', 'http://f2.kkmh.com/image/171027/ux3xxzddu.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('150', '第三季 第2话 请停下来！', '2', '10-30', 'http://f2.kkmh.com/image/171027/hstn9z7mc.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('151', '第三季 第1话 俏皮的她~', '2', '10-23', 'http://f2.kkmh.com/image/171020/urlp4tymo.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('152', '第二季 第33话 我喜欢你！', '2', '10-23', 'http://f2.kkmh.com/image/180618/xWPLMtfCH.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('153', '第二季 第32话 晕眩', '2', '10-16', 'http://f2.kkmh.com/image/171013/cl5xkci99.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('154', '第二季 第31话 不敢面对的真相', '2', '10-16', 'http://f2.kkmh.com/image/171013/4tuu4d84r.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('155', '第二季 第30话 童年阴影', '2', '10-09', 'http://f2.kkmh.com/image/171001/2wbg16j8l.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('156', '第二季 第29话 就是不放心你！', '2', '10-09', 'http://f2.kkmh.com/image/170930/c58xpzcev.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('157', '第二季 第28话 守护着你！', '2', '10-02', 'http://f2.kkmh.com/image/180513/ZQQSVmgCB.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('158', '第二季 第27话 不能接受的真相', '2', '10-02', 'http://f2.kkmh.com/image/170930/wrtahrf3i.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('159', '第二季 第26话 悲伤的爱', '2', '09-25', 'http://f2.kkmh.com/image/170920/2d5mg444x.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('160', '第二季 第25话 绝望的心', '2', '09-25', 'http://f2.kkmh.com/image/180422/jrmvJVbgC.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('161', '第二季 第24话 激怒你~', '2', '09-18', 'http://f2.kkmh.com/image/170916/azakxbnjc.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('162', '第二季 第23话 没有路的人生', '2', '09-18', 'http://f2.kkmh.com/image/170917/n8i4z8hta.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('163', '第二季 第22话 这才是我的真心', '2', '09-11', 'http://f2.kkmh.com/image/170906/b1b9xb7ia.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('164', '第二季 第21话 我不许你动他一分一毫！', '2', '09-11', 'http://f2.kkmh.com/image/170906/56k832fsf.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('165', '第二季 第20话 恐吓信', '2', '09-04', 'http://f2.kkmh.com/image/170902/vbunmh8jl.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('166', '第二季 第19话 看着我的眼睛', '2', '09-04', 'http://f2.kkmh.com/image/170902/4r76yfdur.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('167', '第二季 第18话 别动！', '2', '08-28', 'http://f2.kkmh.com/image/180303/9cScMVcwg.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('168', '第二季 第17话 联谊？', '2', '08-28', 'http://f2.kkmh.com/image/170825/74t1fy4z9.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('169', '第二季 第16话 要和弟弟回家住了', '2', '08-21', 'http://f2.kkmh.com/image/170818/i0rj2omyd.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('170', '第二季 第15话 爱的漩涡', '2', '08-21', 'http://f2.kkmh.com/image/170817/07mfr4x9l.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('171', '第二季 第14话 看见真心', '2', '08-14', 'http://f2.kkmh.com/image/170811/fd0nbhmdy.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('172', '第二季 第13话 最黑暗的记忆', '2', '08-14', 'http://f2.kkmh.com/image/170811/yehzvmnkh.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('173', '第二季 第12话 缠绕的回忆', '2', '08-07', 'http://f2.kkmh.com/image/170804/pj6vpvajt.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('174', '第二季 第11话 不安的内心', '2', '08-07', 'http://f2.kkmh.com/image/180113/vZcnAWN78.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('175', '第二季 第10话 儿时回忆', '2', '07-31', 'http://f2.kkmh.com/image/170726/8b8tmogi4.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('176', '第二季 第9话 再也无法弥补的裂痕', '2', '07-31', 'http://f2.kkmh.com/image/170726/bp2mhhgev.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('177', '第二季 第8话 嫉妒', '2', '07-24', 'http://f2.kkmh.com/image/171222/FbjOYp967.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('178', '第二季 第7话 紧张', '2', '07-24', 'http://f2.kkmh.com/image/170719/zrrvumzao.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('179', '第二季 第6话 伤害', '2', '07-17', 'http://f2.kkmh.com/image/171213/op1iWkJ7f.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('180', '第二季 第5话 住手！', '2', '07-17', 'http://f2.kkmh.com/image/180906/AiBeVu2XF.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('181', '第二季 第4话 憎恨的醋意！', '2', '07-10', 'http://f2.kkmh.com/image/171127/FSILlnjEa.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('182', '第二季 第3话 请你躲到我这里来~', '2', '07-10', 'http://f2.kkmh.com/image/171213/tKQF6KVWr.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('183', '第二季 第2话 我们', '2', '07-03', 'http://f2.kkmh.com/image/171213/fWwhsONcG.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('184', '第二季 第1话 不堪的童年', '2', '07-03', 'http://f2.kkmh.com/image/170630/iobqxypue.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('185', '第33话 这是我的选择…', '2', '06-26', 'http://f2.kkmh.com/image/171213/fPkchTUjH.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('186', '第32话 伤害', '2', '06-26', 'http://f2.kkmh.com/image/171213/aMy4LmOZH.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('187', '第31话 最佳女主角', '2', '06-19', 'http://f2.kkmh.com/image/171213/ZBCqzgvCm.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('188', '第30话 童年秘密', '2', '06-19', 'http://f2.kkmh.com/image/170713/dihc6w2kg.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('189', '第29话 不可逾越的裂痕…', '2', '06-12', 'http://f2.kkmh.com/image/170609/fgb92tjz4.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('190', '第28话 希望&绝望', '2', '06-12', 'http://f2.kkmh.com/image/170609/42s6707xk.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('191', '第27话 在我最需要你的时候…', '2', '06-05', 'http://f2.kkmh.com/image/170601/klcpbiffg.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('192', '第26话 窒息在回忆里', '2', '05-30', 'http://f2.kkmh.com/image/170601/e909ym3mz.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('193', '第25话 我不吃', '2', '05-29', 'http://f2.kkmh.com/image/170524/91tqkfywh.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('194', '第24话 我应该对你好点的', '2', '05-29', 'http://f2.kkmh.com/image/171213/HE59dwZyW.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('195', '第23话 扑通扑通的心跳', '2', '05-22', 'http://f2.kkmh.com/image/171213/k10JVO2Qq.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('196', '第22话 “不见”', '2', '05-22', 'http://f2.kkmh.com/image/170812/zw01reqsw.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('197', '第21话 无法逾越的伤痕', '2', '05-15', 'http://f2.kkmh.com/image/170804/m5w5m5ax7.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('198', '第20话 内心深处的黑暗', '2', '05-15', 'http://f2.kkmh.com/image/170728/xdffr58x8.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('199', '第19话 原来这才是我真正的表情…', '2', '05-08', 'http://f2.kkmh.com/image/170721/xymodhbpg.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('200', '第18话 第一次学单车的心情', '2', '05-08', 'http://f2.kkmh.com/image/170713/f0yk5jy0h.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('201', '第17话 你就那样突然的出现了…', '2', '04-29', 'http://f2.kkmh.com/image/170709/m7os6favp.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('202', '第16话 我的闲事不需要你来管！', '2', '04-29', 'http://f2.kkmh.com/image/170703/6xdpqg7x4.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('203', '第15话 不要捣乱', '2', '04-29', 'http://f2.kkmh.com/image/170626/p5mkypo8z.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('204', '第14话 伪装成你们喜欢的模样', '2', '04-29', 'http://f2.kkmh.com/image/180905/pOXKFndLS.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('205', '第13话 原来你竟是为我而来！？', '2', '04-29', 'http://f2.kkmh.com/image/170612/rokv87j1s.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('206', '第12话 你知不知道我很担心你！', '2', '04-29', 'http://f2.kkmh.com/image/170601/1614gtvfl.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('207', '第11话 亲吻手背代表什么呢？', '2', '04-29', 'http://f2.kkmh.com/image/170525/j55l9clsl.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('208', '第10话 完蛋，在所有人面前出丑！', '2', '04-29', 'http://f2.kkmh.com/image/170521/1yd5iuhsa.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('209', '第9话 出现！超帅的老师！', '2', '04-29', 'http://f2.kkmh.com/image/170515/wb8payijx.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('210', '第8话 我们成为了最特别的“关系”', '2', '04-29', 'http://f2.kkmh.com/image/170508/5ojhpzxpu.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('211', '第7话 让我留下陪他一晚吧', '2', '04-29', 'http://f2.kkmh.com/image/170427/5fycfq8sn.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('212', '第6话 原来你是女生！？', '2', '04-29', 'http://f2.kkmh.com/image/170427/unbsnfh3p.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('213', '第5话 “初遇”', '2', '04-29', 'http://f2.kkmh.com/image/170427/icrcz3hlb.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('214', '第4话 “心机”', '2', '04-28', 'http://f2.kkmh.com/image/170427/gp6b7ev38.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('215', '第3话 大婶们的自尊心？？', '2', '04-27', 'http://f2.kkmh.com/image/170427/veno1w6ni.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('216', '第2话 学霸VS学渣', '2', '04-26', 'http://f2.kkmh.com/image/170426/0b1jj9i0r.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('217', '第1话 “我们俩”', '2', '04-25', 'http://f2.kkmh.com/image/171213/t81hAEkrO.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('218', '序章 冤家路窄', '2', '04-24', 'http://f2.kkmh.com/image/180905/2aBQ3HpIB.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('219', '完结篇 公主是个萌奇葩！', '3', '03-17', 'http://f2.kkmh.com/image/180316/xc3rPMq5i.webp-fe.w360.webp.m.i1', '0', null, '1', '');
INSERT INTO `chaptor` VALUES ('220', '第67话 谁是单身汪？！', '3', '03-10', 'http://f2.kkmh.com/image/180309/Y51h0tdRe.webp-fe.w360.webp.m.i1', '0', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/background_music/test4.m4a?Expires=4727297209&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=VjdvxCN95vGOR65Q9WVBJLV%2BsLA%3D', '1', '2,');
INSERT INTO `chaptor` VALUES ('221', '第66话 教主你脸皮真厚！', '3', '03-03', 'http://f2.kkmh.com/image/180302/EGf1K4Xmt.webp-fe.w360.webp.m.i1', '0', null, '1', '2,');
INSERT INTO `chaptor` VALUES ('222', '第65话 另觅新欢？', '3', '02-24', 'http://f2.kkmh.com/image/180223/gGpMkMf06.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('223', '第64话 此生得阿宝', '3', '02-17', 'http://f2.kkmh.com/image/180217/2MuzhzYIL.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('224', '第63话 婚礼免了，这是聘礼！', '3', '02-10', 'http://f2.kkmh.com/image/180209/5RVEo9jSH.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('225', '第62话 阿宝你有喜了！？', '3', '02-03', 'http://f2.kkmh.com/image/180202/WoimvaVoN.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('226', '第61话 我会接住你！', '3', '01-27', 'http://f2.kkmh.com/image/180126/FB2qxofPD.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('227', '第60话 阿宝在这里！', '3', '01-20', 'http://f2.kkmh.com/image/180119/SeWYXaND6.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('228', '第59话 教主要屠城！', '3', '01-13', 'http://f2.kkmh.com/image/180112/FC9FI9cl5.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('229', '第58话 美男挑衅！', '3', '01-06', 'http://f2.kkmh.com/image/180105/9CJidemGJ.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('230', '第57话 教主闯入？！', '3', '12-30', 'http://f2.kkmh.com/image/171229/0QRwS4RBg.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('231', '第56话 我在模仿谁！？', '3', '12-23', 'http://f2.kkmh.com/image/171222/snqcLYYNm.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('232', '第55话 公主得了健忘症！', '3', '12-16', 'http://f2.kkmh.com/image/171215/w3452bman.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('233', '第54话 聚散终有日', '3', '12-09', 'http://f2.kkmh.com/image/171208/FeZeQDSc0.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('234', '第53话 女装癖哥哥？！', '3', '12-02', 'http://f2.kkmh.com/image/171201/bWXlFF1Z9.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('235', '第52话 真公主现身！', '3', '11-25', 'http://f2.kkmh.com/image/171124/WbwWqqLKZ.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('236', '第51话 丢失的记忆', '3', '11-18', 'http://f2.kkmh.com/image/171117/ZkTj8Mzal.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('237', '第50话 我想起来了！', '3', '11-11', 'http://f2.kkmh.com/image/171110/vS69aRglE.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('238', '第49话 齐国三皇子', '3', '11-04', 'http://f2.kkmh.com/image/171103/MHGjf7QkF.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('239', '第48话 认亲大会', '3', '10-28', 'http://f2.kkmh.com/image/171027/hAdQ9NINe.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('240', '第47话 我真的是公主?!', '3', '10-21', 'http://f2.kkmh.com/image/171020/ntMY1foJG.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('241', '第46话 我怎么能相信教主的话', '3', '10-14', 'http://f2.kkmh.com/image/171013/qFSxSm42p.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('242', '第45话 照雪公主', '3', '10-07', 'http://f2.kkmh.com/image/171006/e8XsaBbbG.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('243', '第44话 宿敌的目的', '3', '09-30', 'http://f2.kkmh.com/image/170929/JvOUc1DFq.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('244', '短小章', '3', '09-23', 'http://f2.kkmh.com/image/170921/8HwEEsDV9.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('245', '第43话 情敌！', '3', '09-16', 'http://f2.kkmh.com/image/170915/AKfpfii7n.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('246', '第42话 好汉饶命！', '3', '09-09', 'http://f2.kkmh.com/image/170908/koaei5u6y.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('247', '第41话 逃婚', '3', '09-02', 'http://f2.kkmh.com/image/170901/iBgXXGmZ4.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('248', '第40话 婚前焦虑', '3', '08-26', 'http://f2.kkmh.com/image/170827/P0x0rVxQy.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('249', '第39话 你的新娘不是我', '3', '08-19', 'http://f2.kkmh.com/image/170827/hFVZ5z7ZG.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('250', '第38话 大喜之日', '3', '08-12', 'http://f2.kkmh.com/image/170811/bysgqlgl2.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('251', '第37话 那就嫁给我吧', '3', '08-07', 'http://f2.kkmh.com/image/170806/7bvfdhvgo.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('252', '第36话 阿宝没人要了！', '3', '08-06', 'http://f2.kkmh.com/image/170803/9q7q0w2gc.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('253', '第35话 教主不可以！', '3', '08-05', 'http://f2.kkmh.com/image/170804/y79xgp6p0.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('254', '第34话 阿宝，我好想抱你', '3', '07-29', 'http://f2.kkmh.com/image/170727/y0a38toq2.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('255', '第33话 教主求放过！', '3', '07-22', 'http://f2.kkmh.com/image/170721/f8gaqvtl1.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('256', '第32话 再见了教主', '3', '07-15', 'http://f2.kkmh.com/image/170714/yhdffv8a2.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('257', '第31话 对不起教主，我走了', '3', '07-08', 'http://f2.kkmh.com/image/170707/i0vfpy4ng.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('258', '第30话 教主亲我了', '3', '07-01', 'http://f2.kkmh.com/image/170630/j3z9vzpem.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('259', '第29话 答复', '3', '06-24', 'http://f2.kkmh.com/image/170623/t23qbbg24.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('260', '第28话 求婚', '3', '06-17', 'http://f2.kkmh.com/image/170617/mi5c4h7zt.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('261', '第27话 欺骗的下场', '3', '06-10', 'http://f2.kkmh.com/image/170609/besrgiqmg.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('262', '第26话 阿宝成熟了', '3', '06-03', 'http://f2.kkmh.com/image/170602/oy6b0gbj3.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('263', '第25话 教主变温柔了', '3', '05-27', 'http://f2.kkmh.com/image/170525/4gjp3kwey.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('264', '第24话 阿宝长大了', '3', '05-20', 'http://f2.kkmh.com/image/170519/08xhi73xo.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('265', '第23话 这丫头怎么这样睡觉', '3', '05-14', 'http://f2.kkmh.com/image/170512/08jqme2ky.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('266', '第22话 今晚侍寝本教主', '3', '05-13', 'http://f2.kkmh.com/image/170512/5gajbqjsm.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('267', '第21话 教主不能喜欢我！', '3', '05-06', 'http://f2.kkmh.com/image/170505/pe8z70qz4.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('268', '第20话 教主喜欢的竟然是她', '3', '04-29', 'http://f2.kkmh.com/image/170428/rfkb2gxm1.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('269', '第19话 为什么他不喜欢我呢', '3', '04-22', 'http://f2.kkmh.com/image/170422/8r3bemwym.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('270', '第18话 又被教主罚了', '3', '04-15', 'http://f2.kkmh.com/image/170414/jc1evmxtl.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('271', '第17话 被暗杀也太无所谓了吧！', '3', '04-08', 'http://f2.kkmh.com/image/170407/wrk2inx4m.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('272', '第16话 教主喜欢的人出现了', '3', '04-04', 'http://f2.kkmh.com/image/170401/f0gfmkqop.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('273', '第15话 我把教主让给你', '3', '04-04', 'http://f2.kkmh.com/image/170401/aq4b6w6d1.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('274', '第14话 白虎为什么追随教主', '3', '04-03', 'http://f2.kkmh.com/image/170401/zirfyncwn.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('275', '第13话 四大护法白虎', '3', '04-03', 'http://f2.kkmh.com/image/170401/h4ridycx9.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('276', '第12话 教主，阿宝看腻了', '3', '04-02', 'http://f2.kkmh.com/image/170401/34nw03nll.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('277', '第11话 小肚鸡肠', '3', '04-02', 'http://f2.kkmh.com/image/170401/qehajmxaw.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('278', '第10话 教主还像个孩子', '3', '04-02', 'http://f2.kkmh.com/image/170401/7z6q3do4e.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('279', '第9话 教主让我休息吧！', '3', '04-02', 'http://f2.kkmh.com/image/170401/oawxyquoc.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('280', '第8话 教主你也太懒了吧！', '3', '04-02', 'http://f2.kkmh.com/image/170401/m19zben1g.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('281', '第7话 求教主放过！', '3', '04-02', 'http://f2.kkmh.com/image/170401/48v4xjx2l.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('282', '第6话 有什么比伺候本教主更重要', '3', '04-02', 'http://f2.kkmh.com/image/170405/d4wqf4b3f.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('283', '第5话 我要逃离此教！', '3', '04-02', 'http://f2.kkmh.com/image/170405/czwj9shnw.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('284', '第4话 四大护法', '3', '04-02', 'http://f2.kkmh.com/image/170405/vntikwtl9.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('285', '第3话 教主不会安慰人', '3', '04-02', 'http://f2.kkmh.com/image/170401/p08vh58ev.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('286', '第2话 教主我好累！', '3', '04-02', 'http://f2.kkmh.com/image/170401/3vi6anzr8.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('287', '第1话 最懒教主与最萌丫头', '3', '04-02', 'http://f2.kkmh.com/image/170401/83ogj6vtf.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('288', '序章 本教主还没玩够你呢', '3', '04-01', 'http://f2.kkmh.com/image/170401/ehiv919bw.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('289', '最终话 我从没讨厌过你', '4', '11-28', 'http://f2.kkmh.com/image/170216/opk7kv2di.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('290', '第15话 那家伙怎么来这了', '4', '11-07', 'http://f2.kkmh.com/image/151106/vadpyeq2z.jpg-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('291', '第14话 邱秋，我喜欢你！', '4', '10-17', 'http://f2.kkmh.com/image/151017/ijz2p890f.jpg-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('292', '第13话 你跟我又没有关系', '4', '09-26', 'http://f2.kkmh.com/image/150925/y057ml5nj.jpg-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('293', '第12话 他居然在红灯区？！', '4', '09-10', 'http://f2.kkmh.com/image/170216/3ris5o689.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('294', '第11话 被知道你就死定了', '4', '08-13', 'http://f2.kkmh.com/image/170216/opijkbwea.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('295', '第10话 发生了重大事故！', '4', '07-23', 'http://f2.kkmh.com/image/170216/nkevk3sbi.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('296', '第9话 送你！告白纸花', '4', '07-09', 'http://f2.kkmh.com/image/150709/kfa5tuipa.jpg-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('297', '第8话 我们家的邱秋？', '4', '06-25', 'http://f2.kkmh.com/image/150625/dkioab0ib.jpg-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('298', '第7话 恩怨，一笔勾销吧', '4', '06-11', 'http://f2.kkmh.com/image/150610/u9axapp8f.jpg-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('299', '第6话 在我家就给我老实点', '4', '05-07', 'http://f2.kkmh.com/image/170216/4rbofg176.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('300', '第5话 男子汉的尊严', '4', '04-23', 'http://f2.kkmh.com/image/150423/ynfuci4gq.jpg-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('301', '第4话 令人琢磨不透的邱秋', '4', '04-09', 'http://f2.kkmh.com/image/150408/tb5gkbawt.jpg-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('302', '第3话 不小心闯祸了', '4', '03-26', 'http://f2.kkmh.com/image/150325/szam7iwgf.jpg-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('303', '第2话 我的“女”同桌进了男厕所？', '4', '03-19', 'http://f2.kkmh.com/image/150318/u1nqiq8dl.jpg-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('304', '第1话 同桌', '4', '03-12', 'http://f2.kkmh.com/image/150312/svf0oudtx.jpg-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('321', '完结篇 命运的那个人', '5', '12-31', 'http://f2.kkmh.com/image/181231/aZg6hLVFY.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('322', '第142话 离别是为了再次相会', '5', '12-17', 'http://f2.kkmh.com/image/181217/9uWuqLoSO.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('323', '第141话 希望', '5', '12-10', 'http://f2.kkmh.com/image/181210/YsUwEag4n.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('324', '第140话 放不下', '5', '12-03', 'http://f2.kkmh.com/image/181203/owdt7KAga.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('325', '第139话 一个人的音乐会', '5', '11-26', 'http://f2.kkmh.com/image/181126/H5tOApNZr.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('326', '第138话 结束与开始', '5', '11-19', 'http://f2.kkmh.com/image/181119/xVf1Ypmxq.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('327', '第137话 你所不知道的事', '5', '11-12', 'http://f2.kkmh.com/image/181112/LpCX3r3Uk.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('328', '第136话 你被辞退了', '5', '10-29', 'http://f2.kkmh.com/image/181029/tfGRRnn9E.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('329', '第135话 告别', '5', '10-22', 'http://f2.kkmh.com/image/181022/tBluN944z.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('330', '第134话 你是我的女友', '5', '10-15', 'http://f2.kkmh.com/image/181015/ND8FIa0R1.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('331', '第133话 动摇的心', '5', '10-08', 'http://f2.kkmh.com/image/181008/GwHld8jzQ.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('332', '第132话 林凡加油！！！', '5', '10-01', 'http://f2.kkmh.com/image/180930/CQGCD0k1I.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('333', '第131话 最后一战', '5', '09-24', 'http://f2.kkmh.com/image/180924/HdYvmjypA.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('334', '第130话 引以为豪的自信', '5', '09-17', 'http://f2.kkmh.com/image/180917/o3tYDZn0Q.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('335', '第129话 淘气鬼', '5', '09-03', 'http://f2.kkmh.com/image/180903/5xZFAbgwq.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('336', '第128话 生日快乐', '5', '08-27', 'http://f2.kkmh.com/image/180827/mxDI5f6f2.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('337', '第127话 会让你心满意足', '5', '08-20', 'http://f2.kkmh.com/image/180820/HHBBgB6Dg.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('338', '第126话 我们的目的', '5', '08-13', 'http://f2.kkmh.com/image/180813/CeTdnF0t2.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('339', '第125话 聚餐', '5', '08-06', 'http://f2.kkmh.com/image/180806/bnyyTL8J4.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('340', '第124话 决战', '5', '07-30', 'http://f2.kkmh.com/image/180730/sJnwDFatj.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('341', '第123话 焦急', '5', '07-23', 'http://f2.kkmh.com/image/180723/hrZmEeTAu.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('342', '第122话 比赛开始！', '5', '07-16', 'http://f2.kkmh.com/image/180716/G2REAweJI.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('343', '第121话 我是你的谁', '5', '07-09', 'http://f2.kkmh.com/image/180709/HNt3yHz0m.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('344', '第120话 寻找完美偶像（下）', '5', '07-02', 'http://f2.kkmh.com/image/180702/evCiZTMXd.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('345', '第119话 寻找完美偶像（上）', '5', '06-25', 'http://f2.kkmh.com/image/180625/B1pkmvzSN.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('346', '第118话 新的开始', '5', '06-18', 'http://f2.kkmh.com/image/180618/VStWG4Ovc.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('347', '第117话 终结这一切', '5', '06-11', 'http://f2.kkmh.com/image/180611/FQcYFYHfD.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('348', '第116话 最后的凶手', '5', '06-04', 'http://f2.kkmh.com/image/180604/lh6DHDGwL.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('349', '第115话 救赎', '5', '05-28', 'http://f2.kkmh.com/image/180528/JjLHCLanZ.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('350', '第114话 真相', '5', '05-21', 'http://f2.kkmh.com/image/180521/SmLe8GVYC.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('351', '第113话 圈套', '5', '05-14', 'http://f2.kkmh.com/image/180514/6a1SCVyoO.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('352', '第112话 挣扎', '5', '05-07', 'http://f2.kkmh.com/image/180506/RapYLTiOp.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('353', '第111话 葬礼', '5', '05-01', 'http://f2.kkmh.com/image/180501/FGKCjPh4P.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('354', '第110话 死讯', '5', '04-30', 'http://f2.kkmh.com/image/180430/insMfzaLu.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('355', '第109话 最后的选择', '5', '04-23', 'http://f2.kkmh.com/image/180422/IHCUjEGsW.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('356', '第108话 疯狂爱上一个人', '5', '04-16', 'http://f2.kkmh.com/image/180415/G2GXeuAbg.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('357', '第107话 最忠实的粉丝', '5', '04-09', 'http://f2.kkmh.com/image/180409/Hr6S3E45D.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('358', '第106话 坦白', '5', '03-26', 'http://f2.kkmh.com/image/180325/wj1JmBi9X.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('359', '第105话 梦中的你', '5', '03-19', 'http://f2.kkmh.com/image/180319/kseusBXLz.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('360', '《零分偶像2》预售开始', '5', '03-18', 'http://f2.kkmh.com/image/180316/fpU0EDJlk.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('361', '第104话 危险沙漠', '5', '03-12', 'http://f2.kkmh.com/image/180311/juCOgyQz9.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('362', '第103话 沙漠之旅', '5', '03-05', 'http://f2.kkmh.com/image/180305/XT0v2koNn.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('363', '第102话 “情敌”再见？', '5', '02-26', 'http://f2.kkmh.com/image/180226/bx4MkVYex.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('364', '第101话 你的真实身份？', '5', '02-19', 'http://f2.kkmh.com/image/180219/TkjzntVPB.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('365', '第100话 最重要的是你', '5', '02-12', 'http://f2.kkmh.com/image/180211/1RCjX3ke0.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('366', '第99话 你和他有99%相似度', '5', '02-05', 'http://f2.kkmh.com/image/180205/3Tdk7BSWn.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('367', '第98话 “醋王”出现？', '5', '01-29', 'http://f2.kkmh.com/image/180128/XsZ9bI8I3.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('368', '第97话 比赛开始！', '5', '01-22', 'http://f2.kkmh.com/image/180122/tP0AH7b4T.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('369', '第96话 悸动', '5', '01-15', 'http://f2.kkmh.com/image/180115/5yt7e40vt.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('370', '第95话 Zero出现', '5', '01-08', 'http://f2.kkmh.com/image/180108/FAzsBtMKP.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('371', '第94话 依然想他&狮子攻势', '5', '01-01', 'http://f2.kkmh.com/image/180101/xz89edcxa.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('372', '第93话 狮子的要求', '5', '12-25', 'http://f2.kkmh.com/image/171225/u3yp2yev8.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('373', '第92话 新的开始', '5', '12-18', 'http://f2.kkmh.com/image/171218/s94yvsp0f.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('374', '第91话 分手', '5', '12-11', 'http://f2.kkmh.com/image/171211/242gtxum8.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('375', '第90话 你的目光', '5', '12-05', 'http://f2.kkmh.com/image/171205/77vtslvua.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('376', '第89话（下）伤口', '5', '11-28', 'http://f2.kkmh.com/image/171128/6NgJiJAI6.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('377', '第89话（中） 共餐', '5', '11-27', 'http://f2.kkmh.com/image/171127/0CEzUgRgL.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('378', '第89话（上） 成熟的他', '5', '11-13', 'http://f2.kkmh.com/image/171113/uo0e1py7a.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('379', '第88话 我要靠自己', '5', '11-06', 'http://f2.kkmh.com/image/171105/s1v9rpllm.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('380', '喜欢你喜欢的', '5', '11-04', 'http://f2.kkmh.com/image/171103/tyKTapR1a.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('381', '第87话 我给你快乐', '5', '10-30', 'http://f2.kkmh.com/image/171030/dga53gfsq.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('382', '第86话 你怎么回来了', '5', '10-23', 'http://f2.kkmh.com/image/171023/pqtkrcv4w.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('383', '第85话 现在她', '5', '10-16', 'http://f2.kkmh.com/image/171015/p1dbyyidz.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('384', '第84话 挑衅', '5', '10-09', 'http://f2.kkmh.com/image/171009/ma96rqyus.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('385', '第83话 爆发', '5', '10-02', 'http://f2.kkmh.com/image/171001/okhlwtdjx.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('386', '第82话 哪个更难过', '5', '09-18', 'http://f2.kkmh.com/image/170918/obr71pi5y.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('387', '第81话（下）初入豪宅', '5', '09-04', 'http://f2.kkmh.com/image/170904/raf9t78o0.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('388', '零分偶像X荣耀', '5', '08-29', 'http://f2.kkmh.com/image/170828/UXuIDNtml.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('389', '第81话（上）等你来', '5', '08-21', 'http://f2.kkmh.com/image/170821/qzjebqyoz.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('390', '第80话 奇怪的女生', '5', '08-14', 'http://f2.kkmh.com/image/170814/s2ftginkx.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('391', '第79话 给我滚下车', '5', '08-07', 'http://f2.kkmh.com/image/170807/8z56qspg7.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('392', '第78话 最幸福的时刻', '5', '07-31', 'http://f2.kkmh.com/image/170731/06l0ijkng.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('393', '第77话 退出演艺圈', '5', '07-24', 'http://f2.kkmh.com/image/170723/sqpou4p6e.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('394', '第76话（下）你属于我', '5', '06-02', 'http://f2.kkmh.com/image/170601/129uxp01x.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('395', '第76话（上） 你这个骗子！', '5', '05-29', 'http://f2.kkmh.com/image/170528/j3oyvvqcg.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('396', '福利来袭！', '5', '05-19', 'http://f2.kkmh.com/image/170518/8bmhmyl8e.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('397', '第75话 角逐—冠军之夜！', '5', '05-15', 'http://f2.kkmh.com/image/170514/ki0qtl4y0.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('398', '第74话 你很可爱', '5', '05-08', 'http://f2.kkmh.com/image/170508/wvbmlrb4x.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('399', '第73话 竟然向我表白了！？', '5', '05-01', 'http://f2.kkmh.com/image/170430/waum6xv32.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('400', '第72话 蜕变', '5', '04-24', 'http://f2.kkmh.com/image/170423/u5lbtqod1.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('401', '第71话 巨星出道史', '5', '04-10', 'http://f2.kkmh.com/image/170409/nl3n7zw9o.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('402', '第70话 跟我回家', '5', '04-03', 'http://f2.kkmh.com/image/170402/z2ll3h8eq.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('403', '第69话 你和凌风母亲很像', '5', '03-20', 'http://f2.kkmh.com/image/170320/ixu3bauf7.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('404', '第68话 心动', '5', '03-13', 'http://f2.kkmh.com/image/180816/YJ6udBwYm.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('405', '第67话 决裂', '5', '03-06', 'http://f2.kkmh.com/image/170306/9t12nwisv.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('406', '第66话 为你退圈', '5', '02-27', 'http://f2.kkmh.com/image/170227/dvdxqotu4.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('407', '第65话 我怎么会丢下你', '5', '02-20', 'http://f2.kkmh.com/image/170220/czgwp1pre.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('408', '第64话 就在今晚', '5', '02-06', 'http://f2.kkmh.com/image/180816/dQwG9x9dm.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('409', '第63话 胆小鬼', '5', '01-16', 'http://f2.kkmh.com/image/170116/ustzo2wte.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('410', '第62话 酒后', '5', '01-10', 'http://f2.kkmh.com/image/180816/qPhAq537D.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('411', '第61话 金凌风还是个……！', '5', '01-02', 'http://f2.kkmh.com/image/170102/jrwi0zdwm.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('412', '第60话 破冰共演！', '5', '12-27', 'http://f2.kkmh.com/image/161227/32fyvuvh4.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('413', '第59话（下） 给你幸福', '5', '12-19', 'http://f2.kkmh.com/image/161219/xvx34i0u4.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('414', '第59话（上） 公布一切', '5', '12-12', 'http://f2.kkmh.com/image/161211/frj1db8yi.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('415', '第58话 代替你男友', '5', '12-05', 'http://f2.kkmh.com/image/161205/m8974rcws.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('416', '第57话 那就不要见面了', '5', '11-28', 'http://f2.kkmh.com/image/161127/jah8b13rz.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('417', '第56话 来不了了！？', '5', '11-21', 'http://f2.kkmh.com/image/161121/0llcy6fi6.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('418', '第55话 原来你是这种girl', '5', '11-14', 'http://f2.kkmh.com/image/161114/xnur27fdv.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('419', '第54话 凌风惊现公司', '5', '11-07', 'http://f2.kkmh.com/image/161107/6advan2p0.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('420', '第53话 谈判', '5', '10-31', 'http://f2.kkmh.com/image/161031/x4c8l8j2e.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('421', '第52话 对不起', '5', '10-25', 'http://f2.kkmh.com/image/161025/vq22o3qle.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('422', '第51话 道歉', '5', '10-18', 'http://f2.kkmh.com/image/180816/NsHwkipEo.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('423', '金凌风要被玩坏了！', '5', '10-15', 'http://f2.kkmh.com/image/161014/eo5y5p2yq.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('424', '第50话 抄袭事件', '5', '10-12', 'http://f2.kkmh.com/image/161011/9l73ntlr8.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('425', '特别番外篇', '5', '10-03', 'http://f2.kkmh.com/image/161002/43g3ks5hm.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('426', '第49话 来我家', '5', '09-26', 'http://f2.kkmh.com/image/160923/k4mgdi9ir.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('427', '第48话 摘下面具', '5', '09-19', 'http://f2.kkmh.com/image/160918/tiajh0ezl.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('428', '竟然带着这个来了！', '5', '09-16', 'http://f2.kkmh.com/image/160916/x5at3rnlm.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('429', '第47话 无法离开他', '5', '09-12', 'http://f2.kkmh.com/image/160912/7k3kiv7nt.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('430', '第46话 不要再抗拒了', '5', '09-05', 'http://f2.kkmh.com/image/160905/8psv2tsrh.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('431', '第45话 金凌风强势宣告主权', '5', '08-29', 'http://f2.kkmh.com/image/160828/gn1ps2pw8.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('432', '一个通知', '5', '08-22', 'http://f2.kkmh.com/image/160822/3dhv66xr2.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('433', '第44话 林凡脱胎换骨', '5', '08-15', 'http://f2.kkmh.com/image/160814/2sbuneelx.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('434', '第43话 成为狮子舞伴？', '5', '08-01', 'http://f2.kkmh.com/image/160801/ge81rrcby.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('435', '第42话 林凡竟躺在……', '5', '07-18', 'http://f2.kkmh.com/image/160718/dtuk5ntx1.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('436', '第41话 与狮子独处遭调戏！？', '5', '07-11', 'http://f2.kkmh.com/image/160711/sgrejwt89.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('437', '第40话 错误的地方', '5', '07-04', 'http://f2.kkmh.com/image/160704/o16w1amb8.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('438', '第39话 金零分快来救媳妇儿！', '5', '06-27', 'http://f2.kkmh.com/image/160627/lrm7hu21h.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('439', '第38话 明天来上班', '5', '06-20', 'http://f2.kkmh.com/image/160620/4b0d57i7f.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('440', '第37话 凌风危险！', '5', '06-13', 'http://f2.kkmh.com/image/160613/pmcpo3otd.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('441', '第36话 你只是一个粉丝而已', '5', '06-06', 'http://f2.kkmh.com/image/160606/zp4yublse.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('442', '第35话 金凌风重返校园！？', '5', '05-30', 'http://f2.kkmh.com/image/160530/2spsz0sbt.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('443', '第34话 娱乐圈高颜值CP出场！', '5', '05-23', 'http://f2.kkmh.com/image/160523/bfibd5c20.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('444', '第33话 我妈妈是怎么疯的', '5', '05-16', 'http://f2.kkmh.com/image/160516/xc0gr049e.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('445', '第32话（下） 带你去见我妈妈', '5', '05-02', 'http://f2.kkmh.com/image/160502/1jsht87sy.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('446', '第32话（上） 学长的愿望', '5', '04-25', 'http://f2.kkmh.com/image/160425/4km216xy6.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('447', '第31话 该原谅吗？', '5', '04-18', 'http://f2.kkmh.com/image/160418/hpiq8wgeu.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('448', '第30话（下）金凌风复出！？', '5', '04-04', 'http://f2.kkmh.com/image/160404/wv8owdtnr.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('449', '第30话（上）金凌风抛弃林凡！？', '5', '03-28', 'http://f2.kkmh.com/image/160327/v8hgodsgk.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('450', '第29话 金凌风永久退圈！？', '5', '03-21', 'http://f2.kkmh.com/image/160321/7devt9exf.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('451', '第28话 谁要你买的内衣啊！', '5', '03-07', 'http://f2.kkmh.com/image/160307/d6tyf45ux.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('452', '第27话 请和我交往！', '5', '02-29', 'http://f2.kkmh.com/image/160229/2igfs12fp.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('453', '第26话 放手（下）', '5', '02-22', 'http://f2.kkmh.com/image/160221/8i6egm1np.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('454', '第26话 放手（上）', '5', '02-16', 'http://f2.kkmh.com/image/160215/tfm4l50hw.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('455', '第25话 去美国？', '5', '02-09', 'http://f2.kkmh.com/image/160209/dtr9h5r2x.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('456', '第24话 恐惧的事', '5', '02-01', 'http://f2.kkmh.com/image/160128/4y6flzk6x.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('457', '24话预告', '5', '01-28', 'http://f2.kkmh.com/image/160128/3hng0yknt.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('458', '第23话 心里的伤', '5', '01-22', 'http://f2.kkmh.com/image/160122/hf7bbuvr6.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('459', '第22话 霖学长的过去', '5', '01-04', 'http://f2.kkmh.com/image/160104/w746ibieb.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('460', '第21话 表白！？', '5', '12-28', 'http://f2.kkmh.com/image/180816/ib21XcBiu.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('461', '第20话 金凌风，你变得好遥远', '5', '12-21', 'http://f2.kkmh.com/image/151221/r7to149nz.jpg-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('462', '第19话', '5', '12-14', 'http://f2.kkmh.com/image/151214/vwdywuvjk.jpg-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('463', '第18话 偶像复出！', '5', '12-07', 'http://f2.kkmh.com/image/151207/0t7gtivpo.jpg-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('464', '第17话', '5', '11-23', 'http://f2.kkmh.com/image/151124/8hzcv639i.jpg-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('465', '第16话', '5', '11-16', 'http://f2.kkmh.com/image/151116/za5lw95ix.jpg-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('466', '第15话', '5', '11-09', 'http://f2.kkmh.com/image/151109/4srtzz4u1.jpg-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('467', '第14话', '5', '11-02', 'http://f2.kkmh.com/image/151102/pcta09m91.jpg-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('468', '第13话', '5', '10-28', 'http://f2.kkmh.com/image/151028/qo8z1wvl2.jpg-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('469', '第12话', '5', '10-18', 'http://f2.kkmh.com/image/151019/xfsciytsa.jpg-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('470', '第11话', '5', '10-11', 'http://f2.kkmh.com/image/151011/ktb9bvg3v.jpg-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('471', '第10话', '5', '09-28', 'http://f2.kkmh.com/image/150928/dwtzonh98.jpg-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('472', '第9话', '5', '09-21', 'http://f2.kkmh.com/image/180816/2MSqpYNh5.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('473', '第8话', '5', '09-14', 'http://f2.kkmh.com/image/180816/pZOpyPnu8.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('474', '第7话', '5', '09-07', 'http://f2.kkmh.com/image/150907/2blla9bcb.jpg-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('475', '谢谢你们！', '5', '09-03', 'http://f2.kkmh.com/image/151006/n1oblicjk.jpg-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('476', '番外', '5', '08-30', 'http://f2.kkmh.com/image/150830/fpbkx0mkk.jpg-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('477', '第6话', '5', '08-23', 'http://f2.kkmh.com/image/150823/cq0vpo3so.jpg-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('478', '第5话', '5', '08-10', 'http://f2.kkmh.com/image/150810/3pycqjrk2.jpg-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('479', '第4话', '5', '08-03', 'http://f2.kkmh.com/image/180816/QNfi6Rk0L.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('480', '第3话', '5', '07-26', 'http://f2.kkmh.com/image/150726/sg1m2duq3.jpg-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('481', '第2话', '5', '07-20', 'http://f2.kkmh.com/image/180816/DYQBt4Gbg.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('482', '第1话 初遇', '5', '07-12', 'http://f2.kkmh.com/image/150712/fsrdat3oj.jpg-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('483', '第20话 神秘的声音', '6', '10-13', 'http://f2.kkmh.com/image/191009/Zgvavmw7V.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('484', '第19话 晕倒', '6', '09-29', 'http://f2.kkmh.com/image/190927/Gjf7lIHbz.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('485', '第18话 女巫', '6', '09-01', 'http://f2.kkmh.com/image/190831/O24NUEQrP.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('486', '第17话 挽留', '6', '08-25', 'http://f2.kkmh.com/image/190824/HwU1E72JF.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('487', '第16话 拥抱', '6', '08-18', 'http://f2.kkmh.com/image/190817/DOCiNBiwO.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('488', '第15话 密室', '6', '08-11', 'http://f2.kkmh.com/image/190810/oLI4xPU86.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('489', '第14话自由的选择', '6', '08-04', 'http://f2.kkmh.com/image/190803/49Kl16lKg.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('490', '第13话 嘱咐', '6', '07-28', 'http://f2.kkmh.com/image/190728/It8by81Hx.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('491', '第12话 替代品', '6', '07-21', 'http://f2.kkmh.com/image/190720/pL510Qthz.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('492', '第11话 报复', '6', '07-14', 'http://f2.kkmh.com/image/190714/LOzGGmcRi.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('493', '第10话 恶意', '6', '07-07', 'http://f2.kkmh.com/image/190707/5MLVbyLCS.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('494', '第9话 情敌', '6', '06-30', 'http://f2.kkmh.com/image/190630/4nvboxF70.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('495', '《捡到只小狐狸4》单行本预售啦', '6', '06-28', 'http://f2.kkmh.com/image/190627/Wyv4YMspw.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('496', '第8话 塔楼困兽', '6', '06-23', 'http://f2.kkmh.com/image/190623/7YFFklTuo.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('497', '第7话 神秘塔楼', '6', '06-16', 'http://f2.kkmh.com/image/190616/O8db98INr.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('498', '第6话 以身相许？', '6', '06-09', 'http://f2.kkmh.com/image/190609/VjjGl3uEe.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('499', '第5话 跳窗', '6', '06-02', 'http://f2.kkmh.com/image/190602/IfsWqBGfD.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('500', '《捡到只小狐狸3》单行本预售啦', '6', '05-28', 'http://f2.kkmh.com/image/190527/L5xcVNB1N.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('501', '第4话 夜访‘娇妻’', '6', '05-26', 'http://f2.kkmh.com/image/190525/L5hXoo7uG.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('502', '第三季 第3话 地牢', '6', '05-19', 'http://f2.kkmh.com/image/190519/M2DfEQOvs.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('503', '第三季 第2话 戳破', '6', '05-12', 'http://f2.kkmh.com/image/190512/bTHicdop6.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('504', '第三季 第1话 古堡之森', '6', '05-04', 'http://f2.kkmh.com/image/190501/nMdV0D7xx.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('505', '第三季 剧情序章', '6', '05-03', 'http://f2.kkmh.com/image/190502/idYZFT9Rl.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('506', '第三季关键人物介绍！', '6', '05-01', 'http://f2.kkmh.com/image/190501/3iqeQmfoo.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('507', '番外 法王的克星', '6', '03-24', 'http://f2.kkmh.com/image/190323/eWK2oexcP.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('508', '番外 浪漫婚礼', '6', '03-17', 'http://f2.kkmh.com/image/190316/xIyzLXdRU.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('509', '番外 巨型女友的好处', '6', '03-10', 'http://f2.kkmh.com/image/190309/SgTgTh0i9.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('510', '番外 月牙惊现本体！', '6', '03-03', 'http://f2.kkmh.com/image/190303/93m50vjhj.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('511', '番外 丈母娘同学？', '6', '02-24', 'http://f2.kkmh.com/image/190224/FAroUpsjv.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('512', '完结篇 新生', '6', '02-17', 'http://f2.kkmh.com/image/190217/YDxFt2rGV.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('513', '第69话 月牙回归！', '6', '02-10', 'http://f2.kkmh.com/image/190210/88LdwAygR.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('514', '第68话灭邪', '6', '02-03', 'http://f2.kkmh.com/image/190203/zjYvnXY3C.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('515', '第67话 新族长', '6', '01-27', 'http://f2.kkmh.com/image/190126/Qv4hzZh7Z.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('516', '第66话 离别', '6', '01-20', 'http://f2.kkmh.com/image/190119/fxO4b3i60.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('517', '第65话 永远在一起', '6', '01-13', 'http://f2.kkmh.com/image/190111/4wusQ1jDO.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('518', '第64话 不能没有你', '6', '01-06', 'http://f2.kkmh.com/image/190105/Yt4jQcUV1.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('519', '第63话 不想让你受伤', '6', '12-30', 'http://f2.kkmh.com/image/181230/3lfnqXsTq.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('520', '第62话 放你走', '6', '12-23', 'http://f2.kkmh.com/image/181222/qPJFO5gCG.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('521', '第61话 刺杀', '6', '12-16', 'http://f2.kkmh.com/image/181215/2LsGqWvNh.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('522', '第60话 爱你的心', '6', '12-09', 'http://f2.kkmh.com/image/181209/C2qIjBjxO.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('523', '第59话 爱妻', '6', '12-02', 'http://f2.kkmh.com/image/181202/pjlVEFPT5.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('524', '第58话 转危为安', '6', '11-25', 'http://f2.kkmh.com/image/181124/5MqVAuju7.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('525', '第57话 药', '6', '11-18', 'http://f2.kkmh.com/image/181117/JpsoibqNo.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('526', '第56话 封印', '6', '11-11', 'http://f2.kkmh.com/image/181111/kHqdsA9FO.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('527', '第55话 投毒的原因', '6', '11-04', 'http://f2.kkmh.com/image/181103/ElzcpbOTV.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('528', '第54话 我们的故事', '6', '10-28', 'http://f2.kkmh.com/image/181028/PLH8XeHPE.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('529', '第53话 恩人', '6', '10-21', 'http://f2.kkmh.com/image/181019/r2KrYT0Ju.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('530', '第52话 消除记忆', '6', '10-14', 'http://f2.kkmh.com/image/181012/Jdw7G46zx.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('531', '第51话 一样的胎记', '6', '10-07', 'http://f2.kkmh.com/image/181006/gpWnmSrxa.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('532', '第50话 小七！？', '6', '09-30', 'http://f2.kkmh.com/image/180928/a2mYVjYQB.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('533', '第49话 黎明', '6', '09-23', 'http://f2.kkmh.com/image/180923/hCeMIaU9Z.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('534', '第48话 了结', '6', '09-16', 'http://f2.kkmh.com/image/180916/xhL43kcWU.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('535', '第47话 真身', '6', '09-09', 'http://f2.kkmh.com/image/180907/IiZWKLt8X.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('536', '第46话 陷阱', '6', '09-02', 'http://f2.kkmh.com/image/180831/Cgtvnwf6M.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('537', '第45话 都过去了', '6', '08-26', 'http://f2.kkmh.com/image/180826/GQ4HGZDO7.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('538', '第44话 不再懦弱', '6', '08-19', 'http://f2.kkmh.com/image/180819/o05qLLMMk.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('539', '第43话 嫉恨', '6', '08-12', 'http://f2.kkmh.com/image/180812/kQ6igMYhK.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('540', '第42话 生日会风波', '6', '08-05', 'http://f2.kkmh.com/image/180805/QEKZMmzPX.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('541', '第41话 我错了', '6', '07-29', 'http://f2.kkmh.com/image/180729/GI1CnLA0g.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('542', '第40话 晕倒', '6', '07-28', 'http://f2.kkmh.com/image/180727/54pJ5G6yi.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('543', '第39话 忍住', '6', '07-22', 'http://f2.kkmh.com/image/180721/miubXFNTF.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('544', '第38话 残念', '6', '07-15', 'http://f2.kkmh.com/image/180715/tSmEIUXnR.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('545', '第37话 噩梦', '6', '07-08', 'http://f2.kkmh.com/image/180707/bDuXGg56r.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('546', '第36话 你不是她！', '6', '07-01', 'http://f2.kkmh.com/image/180701/x5mfP0p2x.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('547', '第35话 不可以！', '6', '06-24', 'http://f2.kkmh.com/image/180624/xlfvM8LKX.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('548', '第34话 狐狸都是一个脾气', '6', '06-17', 'http://f2.kkmh.com/image/180617/5vEAr8XUU.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('549', '第33话 新的开始', '6', '06-10', 'http://f2.kkmh.com/image/180610/gRxR7ipy5.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('550', '第32话 妻管严', '6', '06-03', 'http://f2.kkmh.com/image/180602/WP1KXowTr.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('551', '第31话 害人之心', '6', '05-27', 'http://f2.kkmh.com/image/180527/3uz1xOggi.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('552', '第30话 是她抓住了我的手', '6', '05-20', 'http://f2.kkmh.com/image/180520/nm2KYYIb5.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('553', '第29话 他会来吗？', '6', '05-13', 'http://f2.kkmh.com/image/180512/jeBut7l93.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('554', '第28话 少女大变身', '6', '05-06', 'http://f2.kkmh.com/image/180505/pRn6nKTVd.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('555', '第27话 她的事我要亲口听她说', '6', '04-29', 'http://f2.kkmh.com/image/180428/AaemmvyUN.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('556', '第26话 只相信你', '6', '04-22', 'http://f2.kkmh.com/image/180421/v6C6JkAI5.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('557', '第25话 医务室里的秘密', '6', '04-15', 'http://f2.kkmh.com/image/180415/GKIEFoNDA.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('558', '第24话 被人算计', '6', '04-08', 'http://f2.kkmh.com/image/180407/uscwCctVI.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('559', '第23话 嫉妒', '6', '04-01', 'http://f2.kkmh.com/image/180401/bT24UdNtm.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('560', '第22话 梦魇', '6', '03-25', 'http://f2.kkmh.com/image/180325/ENaSDwJg1.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('561', '第21话 在乎你', '6', '03-18', 'http://f2.kkmh.com/image/180317/jjrFZ5ZQm.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('562', '第20话 招惹', '6', '03-11', 'http://f2.kkmh.com/image/180310/SylepL5Sx.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('563', '第19话 跟踪', '6', '03-04', 'http://f2.kkmh.com/image/180303/VX73nxRvz.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('564', '第18话 骚乱', '6', '02-25', 'http://f2.kkmh.com/image/180224/fMXGh5EXI.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('565', '第17话 谢谢你们', '6', '02-18', 'http://f2.kkmh.com/image/180218/tVV0QHOHB.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('566', '第16话 马上就能见到他了', '6', '02-11', 'http://f2.kkmh.com/image/180211/5ccb2p98g.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('567', '第15话 要不要帮你补课', '6', '02-04', 'http://f2.kkmh.com/image/180204/ItxqNbFFx.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('568', '第14话 你的胆子不小啊', '6', '01-28', 'http://f2.kkmh.com/image/180128/hKe1RJr4Y.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('569', '第13话 你是不是恋爱啦？', '6', '01-21', 'http://f2.kkmh.com/image/180120/hE8E3AZvb.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('570', '第12话 争风吃醋？', '6', '01-15', 'http://f2.kkmh.com/image/180114/xdO3STb16.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('571', '第11话 澄清事实', '6', '01-08', 'http://f2.kkmh.com/image/180107/mb3R6HgZp.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('572', '第10话 网络暴力', '6', '01-01', 'http://f2.kkmh.com/image/180101/iHLkbQVUy.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('573', '第9话 大变身！', '6', '12-25', 'http://f2.kkmh.com/image/171225/bZJsWdIil.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('574', '第8话 睡衣大作战', '6', '12-18', 'http://f2.kkmh.com/image/171217/ivK1vLZac.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('575', '第7话 贤妻良母', '6', '12-11', 'http://f2.kkmh.com/image/171210/8WFpC5m53.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('576', '第6话 独占宣言', '6', '12-04', 'http://f2.kkmh.com/image/171203/nR7G3a6Ws.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('577', '第5话 良好的关系', '6', '11-27', 'http://f2.kkmh.com/image/171127/BR5NqFtTr.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('578', '第4话 女孩和男孩的选择', '6', '11-20', 'http://f2.kkmh.com/image/171120/tyoqp1br0.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('579', '第3话 两小无猜', '6', '11-13', 'http://f2.kkmh.com/image/171113/vx508l1fw.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('580', '第2话 因缘际会', '6', '11-06', 'http://f2.kkmh.com/image/171106/b9pies3v0.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('581', '第1话 命中克星', '6', '10-28', 'http://f2.kkmh.com/image/171028/6ilmmwcj3.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('582', '序章：狗粮情侣接班人，甜到窒息！', '6', '10-27', 'http://f2.kkmh.com/image/171028/gl65k8tdb.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('583', '新篇章关键人物揭晓！', '6', '10-22', 'http://f2.kkmh.com/image/171026/rd9b1ii2o.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('584', '番外4：狗粮夫妻二人组', '6', '09-25', 'http://f2.kkmh.com/image/170925/79vtojuwd.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('585', '番外3 比九尾还厉害的人', '6', '09-18', 'http://f2.kkmh.com/image/170918/rxjmnj50y.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('586', '番外2 小九神秘恋人大调查', '6', '09-11', 'http://f2.kkmh.com/image/170911/7418n38h7.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('587', '番外：最宠爱宠物的人', '6', '09-04', 'http://f2.kkmh.com/image/170904/uc8et1td6.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('588', '第77话 二人世界', '6', '08-28', 'http://f2.kkmh.com/image/170828/93z28m9dy.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('589', '第76话 化形后的尴尬', '6', '08-21', 'http://f2.kkmh.com/image/170821/3bifkud7f.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('590', '第75话 天赋这个东西', '6', '08-14', 'http://f2.kkmh.com/image/170814/xfgsidi4c.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('591', '第74话 求助', '6', '08-07', 'http://f2.kkmh.com/image/170807/95e7y0j4k.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('592', '第73话 回家', '6', '07-24', 'http://f2.kkmh.com/image/170723/eg4ww83xl.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('593', '第72话 抉择', '6', '07-17', 'http://f2.kkmh.com/image/170716/k60pdq0d8.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('594', '第71话 兄弟之情', '6', '07-10', 'http://f2.kkmh.com/image/170710/ja9c69dsz.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('595', '第70话 回忆的碎片', '6', '06-26', 'http://f2.kkmh.com/image/170626/3l2e3f0h2.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('596', '第69话 让我抱抱你', '6', '06-19', 'http://f2.kkmh.com/image/170619/7j95uiiv1.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('597', '第68话 残酷的真相', '6', '06-12', 'http://f2.kkmh.com/image/170612/5q21cxwu6.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('598', '第67话 不听话？', '6', '06-05', 'http://f2.kkmh.com/image/170604/6cruhy7vf.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('599', '第66话 一定要救她！', '6', '05-29', 'http://f2.kkmh.com/image/170528/3ldfbe1o7.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('600', '第65话 回天乏术？', '6', '05-22', 'http://f2.kkmh.com/image/170522/4thyu6amu.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('601', '第64话 最后的诀别', '6', '05-15', 'http://f2.kkmh.com/image/170514/ltdklcupa.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('602', '第63话 我不会放过你！', '6', '05-08', 'http://f2.kkmh.com/image/170508/bpqdguuey.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('603', '第62话 舞台被做了手脚！', '6', '05-01', 'http://f2.kkmh.com/image/170501/jpdq80mcg.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('604', '第61话 凶手不是他', '6', '04-24', 'http://f2.kkmh.com/image/170424/e0nau3owi.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('605', '第60话 动手', '6', '04-17', 'http://f2.kkmh.com/image/170417/g397m53gi.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('606', '第59话 求婚计划', '6', '04-10', 'http://f2.kkmh.com/image/170410/9mny0zkgj.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('607', '第58话 他竟然这样对你！？', '6', '04-03', 'http://f2.kkmh.com/image/170402/ffqltfcx1.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('608', '第57话 逐出家门', '6', '03-27', 'http://f2.kkmh.com/image/170326/otf2zxtku.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('609', '第56话 更亲密的事', '6', '03-20', 'http://f2.kkmh.com/image/170320/qsok6tece.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('610', '第55话 我们都得认命', '6', '03-13', 'http://f2.kkmh.com/image/170312/e4oiatnsp.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('611', '第54话 我们没有退路了', '6', '02-27', 'http://f2.kkmh.com/image/170227/iznbpef5x.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('612', '第53话 终于等到这一天', '6', '02-20', 'http://f2.kkmh.com/image/170220/rfgwfrwl7.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('613', '第52话 求婚', '6', '02-13', 'http://f2.kkmh.com/image/170213/7ln4c2hwm.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('614', '第51话 头条新闻', '6', '02-08', 'http://f2.kkmh.com/image/170207/p3e3j7jow.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('615', '第50话 奇怪的感觉', '6', '01-30', 'http://f2.kkmh.com/image/170130/6wiuk5wo1.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('616', '第49话 我会对你负责', '6', '01-23', 'http://f2.kkmh.com/image/170123/a5h9b2rb2.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('617', '第48话 爷爷的法术害的！', '6', '01-16', 'http://f2.kkmh.com/image/170116/qp3wc3b6h.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('618', '第47话 原来爷爷是这种人！', '6', '01-09', 'http://f2.kkmh.com/image/170109/upi56mhqx.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('619', '第46话 形式不妙！', '6', '01-02', 'http://f2.kkmh.com/image/170101/fxipd8zf0.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('620', '第45话 跟我回家', '6', '12-26', 'http://f2.kkmh.com/image/161225/x20cm6ip8.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('621', '第44话 他们不是好妖！', '6', '12-19', 'http://f2.kkmh.com/image/161218/w55sa5d62.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('622', '第43话 我们的秘密', '6', '12-12', 'http://f2.kkmh.com/image/161211/of52xamkp.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('623', '第42话 悲伤之歌', '6', '12-05', 'http://f2.kkmh.com/image/161204/s8lpggrl4.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('624', '第41话 别再和他来往了', '6', '11-21', 'http://f2.kkmh.com/image/161121/vp2tlz65n.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('625', '第40话 二哥进城', '6', '11-14', 'http://f2.kkmh.com/image/161114/v2v1dkfqf.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('626', '第39话 是你的狐狸精', '6', '11-07', 'http://f2.kkmh.com/image/161107/7qtg7ve68.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('627', '第38话 愤怒的四哥', '6', '10-31', 'http://f2.kkmh.com/image/161030/esdkzc8mz.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('628', '第37话 天游被捕', '6', '10-24', 'http://f2.kkmh.com/image/161024/2r8skjinz.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('629', '第36话 黑化的小九', '6', '10-17', 'http://f2.kkmh.com/image/161016/c7iartm6d.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('630', '第35话 不安的感觉', '6', '10-10', 'http://f2.kkmh.com/image/161009/bs5sb1ijn.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('631', '第34话 顿悟！', '6', '10-03', 'http://f2.kkmh.com/image/161003/6qq432ox0.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('632', '第33话 甜蜜', '6', '09-26', 'http://f2.kkmh.com/image/160925/q6ptujc4s.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('633', '第32话 她变美了', '6', '09-19', 'http://f2.kkmh.com/image/160918/3e1y4jbwb.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('634', '第31话 惊喜', '6', '09-12', 'http://f2.kkmh.com/image/160912/px1vunixy.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('635', '第30话 不是我换的', '6', '09-05', 'http://f2.kkmh.com/image/160905/nomkpxbs9.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('636', '第29话 机会来了', '6', '08-29', 'http://f2.kkmh.com/image/160828/rmscqklhp.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('637', '第28话 暗恋我？', '6', '08-22', 'http://f2.kkmh.com/image/160821/w2spydho2.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('638', '第27话 对不起', '6', '08-15', 'http://f2.kkmh.com/image/160814/14k8spmq9.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('639', '第26话 你离开这里吧', '6', '08-08', 'http://f2.kkmh.com/image/160807/q43fsndkq.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('640', '第25话 明天一定要让她走！', '6', '08-01', 'http://f2.kkmh.com/image/160731/f4gbon4t4.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('641', '第24话 她是小九吗？', '6', '07-25', 'http://f2.kkmh.com/image/160725/npotip5gs.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('642', '第23话 天游，我回来了', '6', '07-18', 'http://f2.kkmh.com/image/160717/9y8qj9qf4.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('643', '第22话 终于又重逢了', '6', '07-11', 'http://f2.kkmh.com/image/160710/colivtaen.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('644', '第21话 希望不再离开你', '6', '07-04', 'http://f2.kkmh.com/image/160703/67o5vxqml.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('645', '第20话 我想变成女孩', '6', '06-20', 'http://f2.kkmh.com/image/160619/b3lleazxj.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('646', '第19话 她现在一定很难过', '6', '06-13', 'http://f2.kkmh.com/image/160612/nb9xf76oa.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('647', '第18话 小九离开了', '6', '06-06', 'http://f2.kkmh.com/image/160605/nwerleilm.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('648', '第17话 小九的真面目被发现了', '6', '05-30', 'http://f2.kkmh.com/image/160529/l5u9bkchb.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('649', '第16话 小九是妖怪？', '6', '05-23', 'http://f2.kkmh.com/image/160523/cfvj8nt1y.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('650', '第15话 小九不敢一个人……', '6', '05-16', 'http://f2.kkmh.com/image/160515/ljhlwzsh1.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('651', '第14话 小九的样子变了……', '6', '05-09', 'http://f2.kkmh.com/image/160508/2wyu2h1mm.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('652', '第13话 山里来的哥哥', '6', '05-02', 'http://f2.kkmh.com/image/160501/vtken0ab6.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('653', '第12话 掉到老虎窝里了！', '6', '04-25', 'http://f2.kkmh.com/image/160424/nmfaf9wmx.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('654', '第11话 最喜欢跟小孩一起出去玩～', '6', '04-18', 'http://f2.kkmh.com/image/160417/4jthblcw6.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('655', '第10话 终于适应了学校生活', '6', '04-11', 'http://f2.kkmh.com/image/160411/ykfgh8l6p.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('656', '第9话 小孩真是太难教了！', '6', '04-04', 'http://f2.kkmh.com/image/160401/c0uwdwnpe.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('657', '第8话 对不起，没有感受你的心情', '6', '03-30', 'http://f2.kkmh.com/image/160329/se0dim93c.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('658', '第7话 对不起让你一个人', '6', '03-21', 'http://f2.kkmh.com/image/160320/192g73enf.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('659', '第6话 吃货是最好对付的', '6', '03-14', 'http://f2.kkmh.com/image/160313/4rvwcunpl.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('660', '第5话 小狐狸形象大改造！', '6', '03-07', 'http://f2.kkmh.com/image/160307/5fjx63wxd.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('661', '第4话 受不了你脏兮兮的样子了！', '6', '02-22', 'http://f2.kkmh.com/image/160222/110i7iuaj.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('662', '第3话 我来抚养他吧！', '6', '02-15', 'http://f2.kkmh.com/image/160215/dd97ol18j.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('663', '第1＋2话 捡到一只很萌的狐狸？', '6', '02-08', 'http://f2.kkmh.com/image/160207/ge2aky4uj.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('664', '序章 捡到只小狐狸', '6', '09-04', 'http://f2.kkmh.com/image/190903/A5NZWqfrW.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('665', '第42话 最后一程', '7', '03-24', 'http://f2.kkmh.com/image/170324/6gtpq2jz5.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('666', '第41话 我们就到这', '7', '03-17', 'http://f2.kkmh.com/image/170317/ywtqy4a6n.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('667', '第40话 夺位', '7', '02-24', 'http://f2.kkmh.com/image/170223/n2r4chka4.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('668', '第39话 她原来早就死了', '7', '02-17', 'http://f2.kkmh.com/image/170217/f8izwxddh.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('669', '第38话 死期', '7', '02-10', 'http://f2.kkmh.com/image/170209/ndy657wb1.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('670', '第37话 阴谋浮现', '7', '02-03', 'http://f2.kkmh.com/image/170202/nkuikt9yr.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('671', '第36话 就此别过', '7', '01-27', 'http://f2.kkmh.com/image/170124/vd9rblec0.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('672', '第35话 情话只在梦中说', '7', '01-20', 'http://f2.kkmh.com/image/170118/5dhvuqqg0.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('673', '第34话 闯牢者，杀无赦', '7', '01-13', 'http://f2.kkmh.com/image/170111/h0frg60b8.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('674', '第33话 我来了', '7', '01-06', 'http://f2.kkmh.com/image/170105/zuceovpiq.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('675', '第32话 让你生不如死！', '7', '12-30', 'http://f2.kkmh.com/image/161229/qx2idy0wn.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('676', '第31话 他需要你', '7', '12-23', 'http://f2.kkmh.com/image/161222/2asp12b8a.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('677', '第30话 我会在你身后', '7', '12-16', 'http://f2.kkmh.com/image/161215/vrgegaq54.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('678', '第29话 等你做鬼再说吧！', '7', '12-09', 'http://f2.kkmh.com/image/161208/uklyb1hxy.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('679', '第28话 好好待她', '7', '12-02', 'http://f2.kkmh.com/image/161201/bd0pgut0r.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('680', '第27话 大仇未报不谈爱', '7', '11-25', 'http://f2.kkmh.com/image/161124/m6jlzwxry.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('681', '第26话 童年', '7', '11-18', 'http://f2.kkmh.com/image/161117/829r1t2c7.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('682', '第25话 他母亲还活着！？', '7', '11-11', 'http://f2.kkmh.com/image/161110/ofvi2gc8b.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('683', '第24话 相信我', '7', '11-04', 'http://f2.kkmh.com/image/161103/7td4t40ep.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('684', '第23话 怕我控制不住', '7', '10-28', 'http://f2.kkmh.com/image/161027/8fiqema90.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('685', '第22话 重伤', '7', '10-21', 'http://f2.kkmh.com/image/161018/whpr38bhj.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('686', '第21话 坠崖', '7', '10-14', 'http://f2.kkmh.com/image/161011/ka6z9r8ra.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('687', '第20话 猎场遇刺', '7', '10-07', 'http://f2.kkmh.com/image/161006/8dcjzmf5v.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('688', '第19话 做戏', '7', '09-30', 'http://f2.kkmh.com/image/160929/w6wa332k2.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('689', '第18话 为何一直隐瞒身份', '7', '09-23', 'http://f2.kkmh.com/image/160922/qkp2cviet.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('690', '第17话 身份败露', '7', '09-16', 'http://f2.kkmh.com/image/160912/dadd2xf3o.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('691', '第16话 送药', '7', '09-09', 'http://f2.kkmh.com/image/160905/ykdmtkj6v1.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('692', '第15话 神秘人', '7', '09-02', 'http://f2.kkmh.com/image/160901/vlulk4cf7.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('693', '第14话 时飞渊挟持望心！？', '7', '08-26', 'http://f2.kkmh.com/image/160825/h1losjuza.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('694', '第13话 我还能护你多久', '7', '08-19', 'http://f2.kkmh.com/image/160819/56gzz0u16.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('695', '第12话 不会让人伤害你', '7', '08-12', 'http://f2.kkmh.com/image/160811/c211livf8.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('696', '第11话 不管谁要害你，我都会保护你', '7', '08-05', 'http://f2.kkmh.com/image/160804/waaqcvlxg.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('697', '第10话 酒醉后竟然当众行房', '7', '07-29', 'http://f2.kkmh.com/image/160728/tdj9r276a.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('698', '第9话 故技重演', '7', '07-22', 'http://f2.kkmh.com/image/160721/5y27q2fqs.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('699', '第8话 原来这是你的意中人', '7', '07-15', 'http://f2.kkmh.com/image/160714/p5szqdofy.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('700', '第7话 皇后遇害？！', '7', '07-08', 'http://f2.kkmh.com/image/160707/0ctv6kj9x.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('701', '第6话 昔日仇人勾结武林盟主', '7', '07-01', 'http://f2.kkmh.com/image/160622/5l27suo8c.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('702', '第5话 为救她，身中奇毒', '7', '06-24', 'http://f2.kkmh.com/image/160622/ia564wgln.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('703', '第4话 历史重演，报复成功？', '7', '06-17', 'http://f2.kkmh.com/image/160617/nltx0sx39.webp-fe.w360.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('704', '第3话 不堪折磨', '7', '06-10', 'http://f2.kkmh.com/image/160610/a0miwntdk.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('705', '第2话 我本江心向明月', '7', '06-03', 'http://f2.kkmh.com/image/160602/4rbn31lmd.webp-fe.w180.webp.m.i1', '0', null, '0', '');
INSERT INTO `chaptor` VALUES ('706', '第1话 宫中是非', '7', '05-28', 'http://f2.kkmh.com/image/160527/cwhif1z7l.webp-fe.w180.webp.m.i1', '0', null, '0', '');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_time` varchar(255) DEFAULT NULL COMMENT '评论时间',
  `comment_content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `chaptor_id` int(11) DEFAULT NULL COMMENT '章节id',
  `replay` int(11) DEFAULT '0' COMMENT '回复给谁的人的id',
  `zan` int(255) DEFAULT '0' COMMENT '点赞数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '2019-07-11 12:27:26', '我第一次看到的时候以为是冰红茶hhh', '11', '287', '0', '0');
INSERT INTO `comment` VALUES ('2', '2019-07-09 09:58:27', '哈哈，男主恐怕以为这是酒，笑死了', '11', '287', '0', '1');
INSERT INTO `comment` VALUES ('3', '2019-07-08 21:47:26', '酷姐加油！爱你', '11', '287', '0', '0');
INSERT INTO `comment` VALUES ('4', '2019-07-08 21:16:57', '男主肯定认为这酒是茶?', '11', '287', '0', '0');
INSERT INTO `comment` VALUES ('5', '2019-07-08 20:31:20', '自以为是的女人', '11', '287', '0', '0');
INSERT INTO `comment` VALUES ('6', '2019-07-08 07:28:44', '居然说我留言频繁，你才是话唠咚漫', '11', '287', '0', '1');
INSERT INTO `comment` VALUES ('7', '2019-07-07 19:14:25', '我一直以为，长岛冰茶是茶。???', '11', '287', '0', '16');
INSERT INTO `comment` VALUES ('8', '2019-07-07 11:10:58', '男主应该是不知道吧', '3', '287', '0', '2');
INSERT INTO `comment` VALUES ('9', '2019-07-06 23:38:38', '长岛冰茶不是茶，我爱你也不是你爱我', '3', '287', '0', '4');
INSERT INTO `comment` VALUES ('10', '2019-07-06 20:18:13', '头发好奇怪', '11', '287', '0', '9');
INSERT INTO `comment` VALUES ('11', '2019-07-06 20:10:52', '嗯', '11', '287', '3', '0');
INSERT INTO `comment` VALUES ('12', '2019-07-06 19:03:25', '所以…每个人头上都有圈是什么意思…', '3', '287', '0', '0');
INSERT INTO `comment` VALUES ('13', '2019-07-06 08:13:51', '原来长岛冰茶是酒啊我还以为是茶呢', '11', '287', '0', '0');
INSERT INTO `comment` VALUES ('14', '2019-07-05 22:19:52', '手机掉下来砸到脸了！酷姐我为你 还在', '11', '287', '0', '0');
INSERT INTO `comment` VALUES ('15', '2019-07-05 22:15:42', '酷姐加油！支持你～大家有支持你', '3', '287', '0', '0');
INSERT INTO `comment` VALUES ('17', '2019-10-31 21:51:01', '快点更新', '11', '224', '0', '0');
INSERT INTO `comment` VALUES ('18', '2019-10-31 21:52:20', '123', '11', '225', '0', '0');
INSERT INTO `comment` VALUES ('20', '2019-11-01 21:36:30', '1234', '11', '287', '3', '0');
INSERT INTO `comment` VALUES ('21', '2019-11-02 18:10:24', '完结，撒花', '11', '219', '0', '20');
INSERT INTO `comment` VALUES ('22', '2019-11-02 18:10:52', '高兴', '11', '219', '21', '0');
INSERT INTO `comment` VALUES ('23', '2019-11-02 18:25:16', '很好', '11', '219', '21', '0');
INSERT INTO `comment` VALUES ('24', '2019-11-04 20:52:39', '11111', '11', '222', '0', '0');
INSERT INTO `comment` VALUES ('32', '2019-11-04 21:22:16', '更新，更新', '11', '222', '0', '0');
INSERT INTO `comment` VALUES ('33', '2019-11-04 21:22:48', '我有的是钱', '11', '222', '0', '0');
INSERT INTO `comment` VALUES ('35', '2019-11-04 21:28:11', '第一', '11', '222', '0', '0');
INSERT INTO `comment` VALUES ('36', '2019-12-30 16:44:22', '已经看了好几遍了，太搞笑了', '11', '288', '0', '0');

-- ----------------------------
-- Table structure for pay_record
-- ----------------------------
DROP TABLE IF EXISTS `pay_record`;
CREATE TABLE `pay_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oder_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '订单编号',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `pay_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '支付时间',
  `pay_money` double DEFAULT NULL COMMENT '支付金额',
  `dong_num` int(11) DEFAULT NULL COMMENT '所获得的咚币数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pay_record
-- ----------------------------
INSERT INTO `pay_record` VALUES ('1', 'e4a7a0812bb1', '2', '2019-11-11 14:48:21', '15', '1500');

-- ----------------------------
-- Table structure for section
-- ----------------------------
DROP TABLE IF EXISTS `section`;
CREATE TABLE `section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chaptor_id` int(11) DEFAULT NULL,
  `section_url` varchar(255) DEFAULT 'https://static3w.kuaikanmanhua.com/static-kkfront-pc/image/web_comic_default.c8b8029.jpg',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=608 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of section
-- ----------------------------
INSERT INTO `section` VALUES ('1', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/1.png?Expires=1571314750&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=LaijViYdjdPeOEWNoPzrf0LIgJY%3D');
INSERT INTO `section` VALUES ('2', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/2.png?Expires=1571314750&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=ZPIQXm3RrgIlywKriqUsReUxuFA%3D');
INSERT INTO `section` VALUES ('3', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/3.png?Expires=1571314750&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=DvHAqVdbMUkCOKUWBRlSl9sCLvo%3D');
INSERT INTO `section` VALUES ('4', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/4.png?Expires=1571314750&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=1nt7VJUb%2FEBMJxo%2BE3oPm5imFkg%3D');
INSERT INTO `section` VALUES ('5', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/5.png?Expires=1571314751&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=YzkVRdVeGs90QPV1qHLxh8p0ys0%3D');
INSERT INTO `section` VALUES ('6', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/6.png?Expires=1571314752&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=AgZ3zpv7Fbp7yUUAGcd9Vcofn8Y%3D');
INSERT INTO `section` VALUES ('7', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/7.png?Expires=1571314752&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=wiVO06hH8%2Bvn6oOFPZq3fn%2BOEkY%3D');
INSERT INTO `section` VALUES ('8', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/8.png?Expires=1571314752&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=WKK7zFSwGIpE83B6SSCTV228f%2FE%3D');
INSERT INTO `section` VALUES ('9', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/9.png?Expires=1571314752&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=eesoCCstlf17xLaKu6Sj6RVhD18%3D');
INSERT INTO `section` VALUES ('10', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/10.png?Expires=1571314752&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=sfO%2F5wjt7quO8XitSaG0pBjUCIY%3D');
INSERT INTO `section` VALUES ('11', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/11.png?Expires=1571314752&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=GNJ%2BUGgQw0v1fxVVHD58q7%2B2jBk%3D');
INSERT INTO `section` VALUES ('12', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/12.png?Expires=1571314752&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=NdsVf3CLFsW%2FycL%2BQoGdX2iQPHo%3D');
INSERT INTO `section` VALUES ('13', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/13.png?Expires=1571314753&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=%2FDaKeL9q026VSz5TgXrWqX4Jhvw%3D');
INSERT INTO `section` VALUES ('14', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/14.png?Expires=1571314753&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=25wgie1Xz7BAde2kyl0EInR7B0Q%3D');
INSERT INTO `section` VALUES ('15', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/15.png?Expires=1571314753&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=u2TO9HS%2Fvbcn52sdmtS1oiM1Tg8%3D');
INSERT INTO `section` VALUES ('16', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/16.png?Expires=1571314753&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=4IytbsADS2XUIF9TRTqF%2FFcAOJU%3D');
INSERT INTO `section` VALUES ('17', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/17.png?Expires=1571314755&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=jsdRCb37dXWEHhRPZD6qtGXVcxk%3D');
INSERT INTO `section` VALUES ('18', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/18.png?Expires=1571314755&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=2IbJWtsozW%2FpfI3gfoWZOT9pjYA%3D');
INSERT INTO `section` VALUES ('19', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/19.png?Expires=1571314755&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=JXsKYR0VJ2WxWIHVKrehD71zQsg%3D');
INSERT INTO `section` VALUES ('20', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/20.png?Expires=1571314755&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=8RcTWkVJucUOkfzqwWlB7W6tah4%3D');
INSERT INTO `section` VALUES ('21', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/21.png?Expires=1571314755&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=3w3TePuUhNdVnWI2JNglMi2gvMo%3D');
INSERT INTO `section` VALUES ('22', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/22.png?Expires=1571314756&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Rutv44XbAizjLs1iq37OxdPPLAM%3D');
INSERT INTO `section` VALUES ('23', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/23.png?Expires=1571314756&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=swYOugawa9vjA9kiwfjW8SUNJEw%3D');
INSERT INTO `section` VALUES ('24', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/24.png?Expires=1571314756&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=bpBexshnaPKeCxX%2F%2B1L39a%2Fz89A%3D');
INSERT INTO `section` VALUES ('25', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/25.png?Expires=1571314756&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=7le5sSKWA3w5%2FnyeYkzex6wKVpQ%3D');
INSERT INTO `section` VALUES ('26', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/26.png?Expires=1571314757&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=%2FpzFtQdqYwpqcBdN8Ilh6WxrmtA%3D');
INSERT INTO `section` VALUES ('27', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/27.png?Expires=1571314757&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=dS9j7qsuUjj%2BSiLApr0%2FIoNNWCM%3D');
INSERT INTO `section` VALUES ('28', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/28.png?Expires=1571314757&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=4bgHiMW7Kv4An3geZOxLslPCmXg%3D');
INSERT INTO `section` VALUES ('29', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/29.png?Expires=1571314757&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=IlayVjrnDnYL%2Bxz3Tp7LUmNNy2c%3D');
INSERT INTO `section` VALUES ('30', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/30.png?Expires=1571314757&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=q41%2F9mX%2FKLOv97c0%2FH%2BXFcf37aQ%3D');
INSERT INTO `section` VALUES ('31', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/31.png?Expires=1571314757&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=3td0JN5lkPi0cICAUIhad5Za1CE%3D');
INSERT INTO `section` VALUES ('32', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/32.png?Expires=1571314758&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=xih%2FfvWqFjM3B9jWRHYsNkRPppE%3D');
INSERT INTO `section` VALUES ('33', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/33.png?Expires=1571314758&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=xtPW0icUc5LCDIhMxaaF%2BMBOliQ%3D');
INSERT INTO `section` VALUES ('34', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/34.png?Expires=1571314758&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=h%2FKn3F%2BJesIqel9rBf0OdvzAP9M%3D');
INSERT INTO `section` VALUES ('35', '218', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor1/35.png?Expires=1571314758&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=TQH67SrJAFAdiwqFlY3HPqIY%2Bwc%3D');
INSERT INTO `section` VALUES ('36', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/1.png?Expires=1571315020&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=t2ey0WQ2jNqXzIUtfaraTthspZA%3D');
INSERT INTO `section` VALUES ('37', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/2.png?Expires=1571315020&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=7PNRZBnCWndPfS%2FFTmUvQoquOt0%3D');
INSERT INTO `section` VALUES ('38', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/3.png?Expires=1571315020&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=q12%2BXhQjWtO2qwe2uJGLVt6nfSg%3D');
INSERT INTO `section` VALUES ('39', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/4.png?Expires=1571315020&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=wtmsetaKS5wKoAF%2Bk6YbrGGda2k%3D');
INSERT INTO `section` VALUES ('40', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/5.png?Expires=1571315021&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=BCw40CAcY973adX943gkXg0yT90%3D');
INSERT INTO `section` VALUES ('41', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/6.png?Expires=1571315021&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=037w07tHX7Yz%2FEvGhYKgjGoZAoM%3D');
INSERT INTO `section` VALUES ('42', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/7.png?Expires=1571315021&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=CNqiWZhbK5eL53bmk46GKTZmbhg%3D');
INSERT INTO `section` VALUES ('43', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/8.png?Expires=1571315021&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Wyjlnhyj0mP9kV%2FsUcQRfsu0T3Y%3D');
INSERT INTO `section` VALUES ('44', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/9.png?Expires=1571315023&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=0AIoG47wxk5Vf6kNi5ItiZfqots%3D');
INSERT INTO `section` VALUES ('45', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/10.png?Expires=1571315023&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=%2Fjrw4RSdofMfTMBVBfumCg1ek%2FE%3D');
INSERT INTO `section` VALUES ('46', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/11.png?Expires=1571315023&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=g0Ex58Ky1D2vbmeDofecHg5Iwo8%3D');
INSERT INTO `section` VALUES ('47', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/12.png?Expires=1571315024&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=qDEeIRbeBj96xSVaDzVrYkSCuLw%3D');
INSERT INTO `section` VALUES ('48', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/13.png?Expires=1571315024&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Astfql6CL2yJm83uoYEFuFotxks%3D');
INSERT INTO `section` VALUES ('49', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/14.png?Expires=1571315024&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=XoQBtC91gP4kLsi9gEECntOamWs%3D');
INSERT INTO `section` VALUES ('50', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/15.png?Expires=1571315024&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=lRMWFcxCwuIMW6jd7uy3EFbznJw%3D');
INSERT INTO `section` VALUES ('51', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/16.png?Expires=1571315024&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=B8dErtA7IPDkee6m%2FyTnzKjDnNs%3D');
INSERT INTO `section` VALUES ('52', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/17.png?Expires=1571315024&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=fSfyMUG%2Bk7dcx9%2BNKAhs6wylk04%3D');
INSERT INTO `section` VALUES ('53', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/18.png?Expires=1571315024&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=sso2aGqSrfbUMn7B0j8Q6evF3Ts%3D');
INSERT INTO `section` VALUES ('54', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/19.png?Expires=1571315025&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=DEMOlZyyg0emlLqAvj%2Fkfc0mWYY%3D');
INSERT INTO `section` VALUES ('55', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/20.png?Expires=1571315025&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=iYxJ1DO2RjwvMcifKJIGPI7Pejk%3D');
INSERT INTO `section` VALUES ('56', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/21.png?Expires=1571315025&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=GPPgln0m5D0nVHZKmite%2F4Ve%2Fn0%3D');
INSERT INTO `section` VALUES ('57', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/22.png?Expires=1571315026&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=P6uK3KR3%2FbyGZ968d6i3LV2vZjY%3D');
INSERT INTO `section` VALUES ('58', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/23.png?Expires=1571315026&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=7MfBauR083u5v2vYDm9obk5o5aY%3D');
INSERT INTO `section` VALUES ('59', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/24.png?Expires=1571315026&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=ACC5ytd9flpcDGTwUZCt5Ct4gaA%3D');
INSERT INTO `section` VALUES ('60', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/25.png?Expires=1571315026&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=65ym065CVnncuWpnpeVI%2Fqo1GZE%3D');
INSERT INTO `section` VALUES ('61', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/26.png?Expires=1571315026&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Dc0wkA70qkhh5oQOaplVTALJtfk%3D');
INSERT INTO `section` VALUES ('62', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/27.png?Expires=1571315026&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=VbOfoPfyaLIzXId4KqDsj7RjYZ4%3D');
INSERT INTO `section` VALUES ('63', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/28.png?Expires=1571315026&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=SMlLMsg99G30p6CCevTSPfBtqOY%3D');
INSERT INTO `section` VALUES ('64', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/29.png?Expires=1571315026&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=7JzxhuhlsV4IV6qFwWtvEVAZR5I%3D');
INSERT INTO `section` VALUES ('65', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/30.png?Expires=1571315026&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=qDixy1yLnSLxHzJRa6trwQKoD5k%3D');
INSERT INTO `section` VALUES ('66', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/31.png?Expires=1571315027&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=k6H3tOyp9kPvcZ862Ah%2Bct5GT2M%3D');
INSERT INTO `section` VALUES ('67', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/32.png?Expires=1571315027&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=UPLf1rik57qYxfsnbbvMdzLWGnA%3D');
INSERT INTO `section` VALUES ('68', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/33.png?Expires=1571315027&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=aApk54NCu95XnkN0f16AYf099iU%3D');
INSERT INTO `section` VALUES ('69', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/34.png?Expires=1571315027&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=IgAXX0h6s1h2V4z%2BmimSswAU7lE%3D');
INSERT INTO `section` VALUES ('70', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/35.png?Expires=1571315028&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=SzWMC0rzOoEQsc333K8QgtUGHJw%3D');
INSERT INTO `section` VALUES ('71', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/36.png?Expires=1571315028&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=dnh%2F%2BQgfMWia0aI79hQmIaDOdRo%3D');
INSERT INTO `section` VALUES ('72', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/37.png?Expires=1571315028&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Ee1dAMVnikI%2BfbApJ%2BySRZ3B18Q%3D');
INSERT INTO `section` VALUES ('73', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/38.png?Expires=1571315028&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=F4125OqHVjbKV%2BNnpwI8o%2BZET6Q%3D');
INSERT INTO `section` VALUES ('74', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/39.png?Expires=1571315029&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Wa%2F628oaF7B4z5hPE1Gwe%2Bh9p%2Bw%3D');
INSERT INTO `section` VALUES ('75', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/40.png?Expires=1571315029&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=B3XILFrFULcSKqkZZ0U8zqpbQ4g%3D');
INSERT INTO `section` VALUES ('76', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/41.png?Expires=1571315029&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=8Qd%2Fc44wmRovVGaIXSNDLpp2QVQ%3D');
INSERT INTO `section` VALUES ('77', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/42.png?Expires=1571315029&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=O62WzSQXy%2BHOJ5PMJVOMif3vCpE%3D');
INSERT INTO `section` VALUES ('78', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/43.png?Expires=1571315030&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=U4rgAANgf4GTCQEN6lPogjlZMcI%3D');
INSERT INTO `section` VALUES ('79', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/44.png?Expires=1571315030&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=qaonvAKwgpOYeZ9DUmM2LGaw51k%3D');
INSERT INTO `section` VALUES ('80', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/45.png?Expires=1571315030&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=bNbtq7vCLRbC4RG3Xhh7nSYATDI%3D');
INSERT INTO `section` VALUES ('81', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/46.png?Expires=1571315030&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=hQDYzpOibmN0XU%2BDdBA6UuqANuU%3D');
INSERT INTO `section` VALUES ('82', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/47.png?Expires=1571315030&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=gu%2BDACEBRharJuFVOThOAfRweis%3D');
INSERT INTO `section` VALUES ('83', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/48.png?Expires=1571315030&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=IokaQUWvNcZeTrhI2xz4CZFIYl4%3D');
INSERT INTO `section` VALUES ('84', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/49.png?Expires=1571315031&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=rTIMbtqm9m5DUyF%2F5VHpgyEiL%2Fk%3D');
INSERT INTO `section` VALUES ('85', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/50.png?Expires=1571315031&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=mtuakdG%2F4OgRuCVXxixqWrhNCFI%3D');
INSERT INTO `section` VALUES ('86', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/51.png?Expires=1571315031&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=FQHvYzC3k5v1oiTKnsjI%2Fqp2TyY%3D');
INSERT INTO `section` VALUES ('87', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/52.png?Expires=1571315031&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=HhFs2GcSJ3e2edAJOdKXbnaaq7Q%3D');
INSERT INTO `section` VALUES ('88', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/53.png?Expires=1571315031&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=9MZfmfsoPIB3VS8sSqrQruaUgJI%3D');
INSERT INTO `section` VALUES ('89', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/54.png?Expires=1571315032&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=2ZLHNhZPw1g0xvpNuT2YkJkhztI%3D');
INSERT INTO `section` VALUES ('90', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/55.png?Expires=1571315032&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=tYRN0RJpqGDjBXnSF5Vz96ode%2FY%3D');
INSERT INTO `section` VALUES ('91', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/56.png?Expires=1571315032&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=ajx%2BhQVW%2FCCrb8DRgIwykQLgMbo%3D');
INSERT INTO `section` VALUES ('92', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/57.png?Expires=1571315032&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=1uoQOj85Wja1hOHrWyOCzEq1tKc%3D');
INSERT INTO `section` VALUES ('93', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/58.png?Expires=1571315032&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=e2tyYiKT8x7S53uw1wta0uI5k3M%3D');
INSERT INTO `section` VALUES ('94', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/59.png?Expires=1571315033&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=lOSDFR24jYIEH1IHeaE0%2B5KxVaU%3D');
INSERT INTO `section` VALUES ('95', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/60.png?Expires=1571315033&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=2%2BPIZHxIVjJFL6XyIx7TI1rERzY%3D');
INSERT INTO `section` VALUES ('96', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/61.png?Expires=1571315033&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=iKN9dwEbJVXFPuEw2%2Fuk4v4gHtM%3D');
INSERT INTO `section` VALUES ('97', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/62.png?Expires=1571315034&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=UZIl%2FhjEdDgSuLBB2lu6n5MZiZE%3D');
INSERT INTO `section` VALUES ('98', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/63.png?Expires=1571315034&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=ysGWwRH2iZYRt4ymCATuNx1h88E%3D');
INSERT INTO `section` VALUES ('99', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/64.png?Expires=1571315034&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=yMHB2wiLHlFI2C%2F9O3%2F9iU%2BZPJ8%3D');
INSERT INTO `section` VALUES ('100', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/65.png?Expires=1571315034&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=uYV%2F1mEN9VNDmOqGcjS1b6L7YD4%3D');
INSERT INTO `section` VALUES ('101', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/66.png?Expires=1571315034&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=kYeFeLaBCYtXZ2B%2BLsQK2HCJENE%3D');
INSERT INTO `section` VALUES ('102', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/67.png?Expires=1571315034&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=%2FWqhRGlPhD8hinJNUcpqxVtPjNo%3D');
INSERT INTO `section` VALUES ('103', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/68.png?Expires=1571315034&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=ut3ir%2F45P2%2B%2BhUtMIdYRQp%2Bdyvk%3D');
INSERT INTO `section` VALUES ('104', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/69.png?Expires=1571315035&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=LNbEnwq7O4XellU8XLLVzfHf8MY%3D');
INSERT INTO `section` VALUES ('105', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/70.png?Expires=1571315035&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=mtnrNGCJ3fqCgVMZyhJJTUDmoQI%3D');
INSERT INTO `section` VALUES ('106', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/71.png?Expires=1571315035&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=IgQ%2BOqmWjVolriaG%2FohZvOibQ34%3D');
INSERT INTO `section` VALUES ('107', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/72.png?Expires=1571315035&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=i3d9BF1syS%2FHgXT1pr6wLu8CpWk%3D');
INSERT INTO `section` VALUES ('108', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/73.png?Expires=1571315035&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Y%2FD8f1ehYzsNprY%2Fp4%2B9kCl52E0%3D');
INSERT INTO `section` VALUES ('109', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/74.png?Expires=1571315035&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=CTq7buECNZ%2BgJmh8bmpMkAN5qyc%3D');
INSERT INTO `section` VALUES ('110', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/75.png?Expires=1571315036&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=hzpFE%2BY0yzI1qgmtpFXfcxEunOM%3D');
INSERT INTO `section` VALUES ('111', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/76.png?Expires=1571315036&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=AWV7zHcX44bCliQ7OAveaX%2BLXsk%3D');
INSERT INTO `section` VALUES ('112', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/77.png?Expires=1571315037&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Qh8QuckOR8%2F0Z4Rm4y1CXqh%2BhCo%3D');
INSERT INTO `section` VALUES ('113', '217', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor2/78.png?Expires=1571315037&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=zPGsQVr35Zf6h6AdA6%2FMR%2FP1EhA%3D');
INSERT INTO `section` VALUES ('114', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/1.png?Expires=1571316516&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=rUcTDfpwFtL2dDW9BCCZv3rnr3E%3D');
INSERT INTO `section` VALUES ('115', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/2.png?Expires=1571316517&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=viBP9TMk77l66UEWjwgxzv6MLy8%3D');
INSERT INTO `section` VALUES ('116', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/3.png?Expires=1571316517&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=dFo7E%2FVaCJ1jk%2BAkBkRS4BFNBas%3D');
INSERT INTO `section` VALUES ('117', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/4.png?Expires=1571316517&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=DxCqtgRlXwEYo1CCH%2BoEyW6ota4%3D');
INSERT INTO `section` VALUES ('118', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/5.png?Expires=1571316517&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=mFdHh%2BdB%2F2Jy91WTFLzsP5Ozzxs%3D');
INSERT INTO `section` VALUES ('119', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/6.png?Expires=1571316517&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=46yz0oq18mBeg4UxVl7Biw1aQ1E%3D');
INSERT INTO `section` VALUES ('120', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/7.png?Expires=1571316517&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=BHSFUm9gCoohiODAKnj5qYdN1ws%3D');
INSERT INTO `section` VALUES ('121', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/8.png?Expires=1571316517&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=5pla3EpTIV9hchP4MN5VYry9%2Bio%3D');
INSERT INTO `section` VALUES ('122', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/9.png?Expires=1571316517&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=WOMvRMqu3N53%2B479j1WU7Ww1Z5g%3D');
INSERT INTO `section` VALUES ('123', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/10.png?Expires=1571316517&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=hNh%2BBBuxkvPYatmTyGltFnQz7XU%3D');
INSERT INTO `section` VALUES ('124', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/11.png?Expires=1571316517&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=CX%2FaRgO2Hbd2jaVeEqN1KI2UQlc%3D');
INSERT INTO `section` VALUES ('125', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/12.png?Expires=1571316518&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Ri1XcQqF0QSNVT5SJ15cIMoSlC8%3D');
INSERT INTO `section` VALUES ('126', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/13.png?Expires=1571316518&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=vkobnbe72UwkdNvQWMUtlU7kkZs%3D');
INSERT INTO `section` VALUES ('127', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/14.png?Expires=1571316518&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=rsBMKABp7t0rf5W6rH48A5MPGs4%3D');
INSERT INTO `section` VALUES ('128', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/15.png?Expires=1571316518&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=pS%2F3R70URWFuViJlBNdbTuOxcBY%3D');
INSERT INTO `section` VALUES ('129', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/16.png?Expires=1571316518&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=KaH0RxfpVPQIraqhiKSIFkcVkhI%3D');
INSERT INTO `section` VALUES ('130', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/17.png?Expires=1571316518&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=87Cg%2F1T6Xb%2BzQkdDmPGHLjepXbU%3D');
INSERT INTO `section` VALUES ('131', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/18.png?Expires=1571316520&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=lrrabk5skabd4ZdwFq4isDP5I7c%3D');
INSERT INTO `section` VALUES ('132', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/19.png?Expires=1571316520&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=lDagYiSRmfjqw0QpRXr%2FA7gGsLk%3D');
INSERT INTO `section` VALUES ('133', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/20.png?Expires=1571316520&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=rmJnrQ%2FuM2ZChg2NWpW7d2VtbGo%3D');
INSERT INTO `section` VALUES ('134', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/21.png?Expires=1571316520&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=qkJq%2FMpDnlTHRxyfJ4VFrp6qz8U%3D');
INSERT INTO `section` VALUES ('135', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/22.png?Expires=1571316520&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=PZRDvSXFutzC8B5HxGcPV2yDJeY%3D');
INSERT INTO `section` VALUES ('136', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/23.png?Expires=1571316520&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=VlmdmtT3seYxLwUp3EOsL41ZD%2Fg%3D');
INSERT INTO `section` VALUES ('137', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/24.png?Expires=1571316520&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=TLvksbgmMecn5V3YZ3hE3cwMImY%3D');
INSERT INTO `section` VALUES ('138', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/25.png?Expires=1571316520&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=a2%2BShJHov6ZiuRAaY9YqPXB45is%3D');
INSERT INTO `section` VALUES ('139', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/26.png?Expires=1571316520&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=GcSDd4FpKWcRcdTuHaPxQj9%2FMmM%3D');
INSERT INTO `section` VALUES ('140', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/27.png?Expires=1571316520&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=HGBgavjngpVpl1gDak7%2BWCpmtlM%3D');
INSERT INTO `section` VALUES ('141', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/28.png?Expires=1571316522&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=UgYKobXKHhhAbsuehzYGgr9jqL0%3D');
INSERT INTO `section` VALUES ('142', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/29.png?Expires=1571316522&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=IFQs37Gao8yNBZOAh%2FVhOKTp%2BZ8%3D');
INSERT INTO `section` VALUES ('143', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/30.png?Expires=1571316522&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=E5646gk%2BNZg59iNo13sLBMGARkM%3D');
INSERT INTO `section` VALUES ('144', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/31.png?Expires=1571316522&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=3IRoz2Xhixxpakj%2BIitduh38pRY%3D');
INSERT INTO `section` VALUES ('145', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/32.png?Expires=1571316522&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=YY2dXmLnt56SJ0Qmf7mFgLyGDro%3D');
INSERT INTO `section` VALUES ('146', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/33.png?Expires=1571316522&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=j8ySC%2FOqixY4f0%2FNJENAvioXEPE%3D');
INSERT INTO `section` VALUES ('147', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/34.png?Expires=1571316522&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=1Np%2BigDwm1M10QXmrn29LxWphj4%3D');
INSERT INTO `section` VALUES ('148', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/35.png?Expires=1571316522&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=%2Bt%2BYoH485PN9EKUvHeopt0h5AHo%3D');
INSERT INTO `section` VALUES ('149', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/36.png?Expires=1571316523&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=769GdhZ8%2Fzy9vM9bzP3oFU06pY4%3D');
INSERT INTO `section` VALUES ('150', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/37.png?Expires=1571316523&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=HBLjLxDtbcNJAWujE2eLC4FcIp4%3D');
INSERT INTO `section` VALUES ('151', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/38.png?Expires=1571316523&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=3W3ZcA5WbjYb4lAoBue9gZamEmU%3D');
INSERT INTO `section` VALUES ('152', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/39.png?Expires=1571316523&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=367vyP1NpP4V0Qunei%2F2xjsSQKY%3D');
INSERT INTO `section` VALUES ('153', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/40.png?Expires=1571316523&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Hi%2BI1tVfjOgbbRT3xEpSKlFgnUA%3D');
INSERT INTO `section` VALUES ('154', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/41.png?Expires=1571316524&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=5o5qM1scJafot3r1FuME9ke4NUM%3D');
INSERT INTO `section` VALUES ('155', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/42.png?Expires=1571316524&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=JudRTP1SPW%2FLpt9XplObQVOu3bw%3D');
INSERT INTO `section` VALUES ('156', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/43.png?Expires=1571316524&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=E63gFS9ml9RA9P41zHPVPS59Z8k%3D');
INSERT INTO `section` VALUES ('157', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/44.png?Expires=1571316524&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=BwFynz1WRgnpdhetQx0TBoqxvfk%3D');
INSERT INTO `section` VALUES ('158', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/45.png?Expires=1571316525&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=BIaQy%2Bdxdr4xc0tMXEXopT%2BXzIg%3D');
INSERT INTO `section` VALUES ('159', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/46.png?Expires=1571316525&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=bU80r7h3KDLqyUJKvGrSAcSsFZg%3D');
INSERT INTO `section` VALUES ('160', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/47.png?Expires=1571316525&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=6Ybzp4VPlKzhRSmhh29AsxBzdzY%3D');
INSERT INTO `section` VALUES ('161', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/48.png?Expires=1571316525&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=9PfQmmeHxX%2FM2lMRHRYzG2lvgqI%3D');
INSERT INTO `section` VALUES ('162', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/49.png?Expires=1571316525&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=e2VdZ4M3LJB2%2B914wmIvI3U%2BztI%3D');
INSERT INTO `section` VALUES ('163', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/50.png?Expires=1571316525&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=YpUna%2FTtGMLmXndA3vsGDYpTDYU%3D');
INSERT INTO `section` VALUES ('164', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/51.png?Expires=1571316525&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=zjk27G9qFMenQL0Dv2Xslxl3%2F1s%3D');
INSERT INTO `section` VALUES ('165', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/52.png?Expires=1571316526&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=hOBDexre4rWFBKg10L9UDrM8Iik%3D');
INSERT INTO `section` VALUES ('166', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/53.png?Expires=1571316526&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=FwfM0EF%2BIXRusO2NKBXpBlZeT%2Bc%3D');
INSERT INTO `section` VALUES ('167', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/54.png?Expires=1571316526&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=JcnQ80%2BkggZ6ZYm%2BA9IAt8r4NF4%3D');
INSERT INTO `section` VALUES ('168', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/55.png?Expires=1571316526&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=w%2B%2F09UE%2F3%2FJnpHefQPmAtEg3n%2B0%3D');
INSERT INTO `section` VALUES ('169', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/56.png?Expires=1571316526&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=NpCrw6FTCiAK9RQ%2FZmNSe9ICZLc%3D');
INSERT INTO `section` VALUES ('170', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/57.png?Expires=1571316527&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=%2BRbhcdp0GLdw6IHHHUeYEtfWIbQ%3D');
INSERT INTO `section` VALUES ('171', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/58.png?Expires=1571316527&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=17xVQlnnG8WHm5n9CPCys7K2M%2FI%3D');
INSERT INTO `section` VALUES ('172', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/59.png?Expires=1571316527&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=ILl%2FJHlqeuiKB2KenWL66yKcFjM%3D');
INSERT INTO `section` VALUES ('173', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/60.png?Expires=1571316527&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=F8E%2FhVXYsHiEBnOv2MjpJZUmwmE%3D');
INSERT INTO `section` VALUES ('174', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/61.png?Expires=1571316527&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=ZuefPkyEoyN3841eAavUeAxnXYY%3D');
INSERT INTO `section` VALUES ('175', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/62.png?Expires=1571316527&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Lr9IHGN7%2BXZnIP8YUF0699VBwdo%3D');
INSERT INTO `section` VALUES ('176', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/63.png?Expires=1571316527&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=kSS5QMswoJAjijEGrPldK56UpUY%3D');
INSERT INTO `section` VALUES ('177', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/64.png?Expires=1571316528&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=R78RU6xDlJj%2F5gRau656D9Ww7eI%3D');
INSERT INTO `section` VALUES ('178', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/65.png?Expires=1571316528&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=xAGBj1HFTggoJC01xk%2F0z6YzwdA%3D');
INSERT INTO `section` VALUES ('179', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/66.png?Expires=1571316528&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Tg5x32iRcqLsYEQHPPcKVZc98C0%3D');
INSERT INTO `section` VALUES ('180', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/67.png?Expires=1571316528&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=OhtTJJ5iBfb8pWjEI5TFrl%2Fh3lw%3D');
INSERT INTO `section` VALUES ('181', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/68.png?Expires=1571316528&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=B10S0HkVh0hkFt7VjRleOfFcb2s%3D');
INSERT INTO `section` VALUES ('182', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/69.png?Expires=1571316528&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=5FqoemUfJy4envJva6lN%2Fw1jcX0%3D');
INSERT INTO `section` VALUES ('183', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/70.png?Expires=1571316529&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=%2FgL2tHECRUAwuj%2F%2B4iqIeFhZy60%3D');
INSERT INTO `section` VALUES ('184', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/71.png?Expires=1571316529&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=wkvoPkSxGqC19ySfk17uJ%2F0H9AQ%3D');
INSERT INTO `section` VALUES ('185', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/72.png?Expires=1571316529&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=WCeNYc78kV6egnP6fnpJl5CtvDY%3D');
INSERT INTO `section` VALUES ('186', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/73.png?Expires=1571316530&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=cD%2BEkgyDrQYtwBmRMdQmpp0urmE%3D');
INSERT INTO `section` VALUES ('187', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/74.png?Expires=1571316531&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=4SiyZMJQOz89jM%2FH3M2oFnFDbOI%3D');
INSERT INTO `section` VALUES ('188', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/75.png?Expires=1571316531&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=NOI4Sb5E9fKEM%2FATVfEtdQexuSA%3D');
INSERT INTO `section` VALUES ('189', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/76.png?Expires=1571316531&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=hajn5f5kOaX7SVEo%2F5%2BrLo0rR6s%3D');
INSERT INTO `section` VALUES ('190', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/77.png?Expires=1571316531&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=CbDAklgpn1ow7YVNHq%2FrDehLq3A%3D');
INSERT INTO `section` VALUES ('191', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/78.png?Expires=1571316531&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Bxr3%2BTxluA5bW7Z%2BbXAXY5KeuVE%3D');
INSERT INTO `section` VALUES ('192', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/79.png?Expires=1571316531&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=ztiHPDuSVyiRRP6fBnQ3fXzZbGI%3D');
INSERT INTO `section` VALUES ('193', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/80.png?Expires=1571316531&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=c3xLi9Ik13gK0Xw5uByXRyAuDEM%3D');
INSERT INTO `section` VALUES ('194', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/81.png?Expires=1571316531&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=mBou%2B6kiNbGugi4lHGp8pKEptWk%3D');
INSERT INTO `section` VALUES ('195', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/82.png?Expires=1571316531&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=83oz06rB37KZE28rN2wZeZem2A8%3D');
INSERT INTO `section` VALUES ('196', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/83.png?Expires=1571316531&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=3%2BpweckaV3y2HNuaU5MOJ3XIBZ0%3D');
INSERT INTO `section` VALUES ('197', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/84.png?Expires=1571316533&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=2eX0EOjf9%2F1atPDTeQFA23MvDLU%3D');
INSERT INTO `section` VALUES ('198', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/85.png?Expires=1571316533&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=ySP9sDQM3hVAm%2FvDHGY7NY06U0k%3D');
INSERT INTO `section` VALUES ('199', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/86.png?Expires=1571316533&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=XbtEn3hb5W0A%2BNvE5SGnzJfcsd4%3D');
INSERT INTO `section` VALUES ('200', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/87.png?Expires=1571316533&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=jXEpPV9hHnmWx5tPi6uvOsI7yT4%3D');
INSERT INTO `section` VALUES ('201', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/88.png?Expires=1571316533&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=q0SgsLUomL9CU1ZKESPVTkk3T0M%3D');
INSERT INTO `section` VALUES ('202', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/89.png?Expires=1571316533&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=tVMjdZLNcpgmOIk6%2BrP8OLpwRGI%3D');
INSERT INTO `section` VALUES ('203', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/90.png?Expires=1571316533&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=YxoZgw7Dp8z2C89QFyX8kbCUn%2Bs%3D');
INSERT INTO `section` VALUES ('204', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/91.png?Expires=1571316533&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=zVXHFthFvgyfFaJUMWo%2B%2FLzO0gQ%3D');
INSERT INTO `section` VALUES ('205', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/92.png?Expires=1571316533&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=sjTgdysne3F%2FwEwkNxcVenIf%2FUo%3D');
INSERT INTO `section` VALUES ('206', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/93.png?Expires=1571316534&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=nz1qiTO%2BXIcAoAcmZbm6iRze5RU%3D');
INSERT INTO `section` VALUES ('207', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/94.png?Expires=1571316534&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=02%2Fdiv3TR%2BGyXJpSudrTBcL%2F49c%3D');
INSERT INTO `section` VALUES ('208', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/95.png?Expires=1571316534&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=vv2w%2FES1%2BD%2BlLJddhpA6%2FcG%2F78k%3D');
INSERT INTO `section` VALUES ('209', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/96.png?Expires=1571316534&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=0iKNfULJXgJohL2Nrczn2A7AlgI%3D');
INSERT INTO `section` VALUES ('210', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/97.png?Expires=1571316535&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=3qk8g1L%2FMg07Lp0AGsWCWbVtNG0%3D');
INSERT INTO `section` VALUES ('211', '216', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor3/98.png?Expires=1571316535&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=HnVl15ahU1hEunm0eha3kNah%2BCc%3D');
INSERT INTO `section` VALUES ('212', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/1.png?Expires=1571316839&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=ZNkn2ERQuodkVdGABANm3X2pZ2s%3D');
INSERT INTO `section` VALUES ('213', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/2.png?Expires=1571316840&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=X0%2BifCS6605KgpGGknvrgnYvLGQ%3D');
INSERT INTO `section` VALUES ('214', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/3.png?Expires=1571316840&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=QAS21M1d6jxZdRsCFcrAwv%2B5%2BkU%3D');
INSERT INTO `section` VALUES ('215', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/4.png?Expires=1571316840&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=2J%2FrFB%2F2P0S5ZDmTj2J8Yo64BQ0%3D');
INSERT INTO `section` VALUES ('216', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/5.png?Expires=1571316840&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=jA3zGy7W%2Fp4NJV1F8KKWIcYOIEQ%3D');
INSERT INTO `section` VALUES ('217', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/6.png?Expires=1571316840&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=nIgUXIvsIctes8Qf36ty0XvPsJM%3D');
INSERT INTO `section` VALUES ('218', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/7.png?Expires=1571316840&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=GKm3adnDtJ%2FqJTBeg99vbijb%2BL4%3D');
INSERT INTO `section` VALUES ('219', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/8.png?Expires=1571316841&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=pjaQE06wRW%2ByZWgGS0ceQHDWy3s%3D');
INSERT INTO `section` VALUES ('220', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/9.png?Expires=1571316841&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=OZWmaTeBD1n2I3bBQ%2FXJxiIroEQ%3D');
INSERT INTO `section` VALUES ('221', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/10.png?Expires=1571316841&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=edYvaNcFkyFetIhbEe6Ro6k8mrM%3D');
INSERT INTO `section` VALUES ('222', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/11.png?Expires=1571316841&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=SqsMZCFIul1EHwtUDXCiECtmcPg%3D');
INSERT INTO `section` VALUES ('223', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/12.png?Expires=1571316841&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=oZg0hidhPOxIjuclKDNerx7AT0c%3D');
INSERT INTO `section` VALUES ('224', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/13.png?Expires=1571316842&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=IRVtR6hxK93fuACTj5KRtt9wkg4%3D');
INSERT INTO `section` VALUES ('225', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/14.png?Expires=1571316842&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=bvDvE%2BWFR6wAqH0nXjcFRm8Ux6E%3D');
INSERT INTO `section` VALUES ('226', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/15.png?Expires=1571316842&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=xVNGPkuP%2BppNHwaHh3nLbzk7Xro%3D');
INSERT INTO `section` VALUES ('227', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/16.png?Expires=1571316842&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=jADmNuBjkJ7asrusle8e7Nwu8pM%3D');
INSERT INTO `section` VALUES ('228', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/17.png?Expires=1571316843&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=atYDDNjd3YQuLeNeZzp5sfrcBus%3D');
INSERT INTO `section` VALUES ('229', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/18.png?Expires=1571316843&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=125ha6eDTk9ArnYaQ3thypqj3%2BQ%3D');
INSERT INTO `section` VALUES ('230', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/19.png?Expires=1571316843&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=JfiAoEk21Tyv3oTGcqsHv%2FIHsZo%3D');
INSERT INTO `section` VALUES ('231', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/20.png?Expires=1571316843&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=uxEog08QAkHWOLcwAlket%2FiJbN8%3D');
INSERT INTO `section` VALUES ('232', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/21.png?Expires=1571316843&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=8J4Ott3vMS0nKS0HHogXOcut4P8%3D');
INSERT INTO `section` VALUES ('233', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/22.png?Expires=1571316843&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=%2B2A4f7aG7qrg230q3wr29N8kfv8%3D');
INSERT INTO `section` VALUES ('234', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/23.png?Expires=1571316844&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=8FDelpkKizLyzVxDuc8FZ%2ByI9I0%3D');
INSERT INTO `section` VALUES ('235', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/24.png?Expires=1571316845&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=WXhuBN3V8qeJudsKJKNWpirII9I%3D');
INSERT INTO `section` VALUES ('236', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/25.png?Expires=1571316845&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=2470QXhaV27AKr9DHDsrs6MfzkY%3D');
INSERT INTO `section` VALUES ('237', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/26.png?Expires=1571316845&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=sql%2B9S6oXmv6urD%2BRAB0d9L8J3I%3D');
INSERT INTO `section` VALUES ('238', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/27.png?Expires=1571316845&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=P38BO9MM2YTF3URkhyaSRoL1aVQ%3D');
INSERT INTO `section` VALUES ('239', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/28.png?Expires=1571316845&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=JXueWLrmcRiR6UW%2BxDModBghnW8%3D');
INSERT INTO `section` VALUES ('240', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/29.png?Expires=1571316845&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=XvS%2F8J%2BKsttSJQaTHge7%2FQt%2F8RQ%3D');
INSERT INTO `section` VALUES ('241', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/30.png?Expires=1571316846&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=FBa2vEcGMQjzheQ1g3TOh8mKaCg%3D');
INSERT INTO `section` VALUES ('242', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/31.png?Expires=1571316846&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=vjuJrOVwhwvSnFCe%2BZ55FTdZWAg%3D');
INSERT INTO `section` VALUES ('243', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/32.png?Expires=1571316846&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=DeHRPbfPUj5MwJiqQGjJNKLu0do%3D');
INSERT INTO `section` VALUES ('244', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/33.png?Expires=1571316846&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=F7F4najjjcJ6zLw60aR16Fio05Q%3D');
INSERT INTO `section` VALUES ('245', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/34.png?Expires=1571316847&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=cagr%2F%2BECp7RvbEvFSK4pH5nHArQ%3D');
INSERT INTO `section` VALUES ('246', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/35.png?Expires=1571316847&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=BgRmW51b7sKwxOhhjJ%2BUxjPn%2FjM%3D');
INSERT INTO `section` VALUES ('247', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/36.png?Expires=1571316847&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=sgCyTv8HFIEAzmkHEORO96k4Phk%3D');
INSERT INTO `section` VALUES ('248', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/37.png?Expires=1571316847&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=lkmycb9B1BR1wiVutpXLBbUsoJ8%3D');
INSERT INTO `section` VALUES ('249', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/38.png?Expires=1571316848&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Qcx23csOuXy8jE%2F%2B4pOg4DI15g0%3D');
INSERT INTO `section` VALUES ('250', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/39.png?Expires=1571316848&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=7Q%2Fd7EB4OefnG0BUSBUMvTafcj8%3D');
INSERT INTO `section` VALUES ('251', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/40.png?Expires=1571316848&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=moQsY8kM41rSJNvPDzuDOCP%2Frjo%3D');
INSERT INTO `section` VALUES ('252', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/41.png?Expires=1571316848&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=wDRn07jgHCQbShN7K4evB0ZRFT4%3D');
INSERT INTO `section` VALUES ('253', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/42.png?Expires=1571316848&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=B3HgFjldZTelQV16vEiG0RQc8lc%3D');
INSERT INTO `section` VALUES ('254', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/43.png?Expires=1571316849&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=yLeGAEdviXL0kRwJKG3aEGzT2Yc%3D');
INSERT INTO `section` VALUES ('255', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/44.png?Expires=1571316849&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=5lP8BvKRvaDtjZuWTK6yO8s%2Fbug%3D');
INSERT INTO `section` VALUES ('256', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/45.png?Expires=1571316849&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=1U95oeb6uhPGVh6w6RovaI0fV1s%3D');
INSERT INTO `section` VALUES ('257', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/46.png?Expires=1571316849&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=RIwFpOtQYFyno%2FGu%2FmmB16NdAgQ%3D');
INSERT INTO `section` VALUES ('258', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/47.png?Expires=1571316849&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=WwXTbtHjwdOnsfWBsLM0FRZjLSA%3D');
INSERT INTO `section` VALUES ('259', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/48.png?Expires=1571316849&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=2eCyO%2BnaThygIJzL9sgJxqb0jxs%3D');
INSERT INTO `section` VALUES ('260', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/49.png?Expires=1571316849&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=ipLC%2BWuRIoh5JJ8WZ8YRXT6yVOM%3D');
INSERT INTO `section` VALUES ('261', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/50.png?Expires=1571316850&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=S4%2BZF4CLz2WFv%2FtbGie4vMnuZ2Q%3D');
INSERT INTO `section` VALUES ('262', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/51.png?Expires=1571316850&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=iuAcEN0oAo5IgUTHNobGaON0PWk%3D');
INSERT INTO `section` VALUES ('263', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/52.png?Expires=1571316850&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=LzwtrWMEsnKuBvBGxUKYj%2FTX3pA%3D');
INSERT INTO `section` VALUES ('264', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/53.png?Expires=1571316851&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=2CmYLJFEtbNGGnt%2BHKjcwtS4%2FfY%3D');
INSERT INTO `section` VALUES ('265', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/54.png?Expires=1571316851&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=RL0R1KjVlIzcjeT1HGCEJUF9wIw%3D');
INSERT INTO `section` VALUES ('266', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/55.png?Expires=1571316851&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Mni73OuGjMmtUO0uRC6mbMyICV8%3D');
INSERT INTO `section` VALUES ('267', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/56.png?Expires=1571316851&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=oL%2FI6mzXWAIFD%2F6RMshHChxmLio%3D');
INSERT INTO `section` VALUES ('268', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/57.png?Expires=1571316851&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=ZE9eaoJNcHkdVcdl83hviGa9bJ4%3D');
INSERT INTO `section` VALUES ('269', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/58.png?Expires=1571316851&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=xbSeNQjqmOHFg0GDSfuHB8qekoI%3D');
INSERT INTO `section` VALUES ('270', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/59.png?Expires=1571316851&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=CM1OvlCcvokVo5CdzwCk7h1ujGk%3D');
INSERT INTO `section` VALUES ('271', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/60.png?Expires=1571316852&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=3WijjwjlPFvRZ%2BhO3k3qDmGOtzs%3D');
INSERT INTO `section` VALUES ('272', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/61.png?Expires=1571316852&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=v2oRNVdhSFm5jXGLygYgChKeunk%3D');
INSERT INTO `section` VALUES ('273', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/62.png?Expires=1571316852&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=TYRqHzYggurTHSnB8npK0pBaSto%3D');
INSERT INTO `section` VALUES ('274', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/63.png?Expires=1571316852&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=ggAYY8BAGJHVML%2FoPhuJJhBnXZE%3D');
INSERT INTO `section` VALUES ('275', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/64.png?Expires=1571316852&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=mip3ZsUhn6uSkBdVQiqXQZbnx54%3D');
INSERT INTO `section` VALUES ('276', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/65.png?Expires=1571316853&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Mr%2Fa0Af4wKMIFnpxjPcw9lITU9Q%3D');
INSERT INTO `section` VALUES ('277', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/66.png?Expires=1571316853&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=0yKyouw46KJhxNAn%2BuXD%2FCWNw3E%3D');
INSERT INTO `section` VALUES ('278', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/67.png?Expires=1571316853&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=%2FPTww8h8FzfCYnj6hQEztMGYZ%2B4%3D');
INSERT INTO `section` VALUES ('279', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/68.png?Expires=1571316853&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=OLth29%2FwHD3CDa1oA9s%2FMl6zkfI%3D');
INSERT INTO `section` VALUES ('280', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/69.png?Expires=1571316853&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=kAPXg4V6tazOmUk%2BVPlkooZt4s0%3D');
INSERT INTO `section` VALUES ('281', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/70.png?Expires=1571316854&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=yU0rjA8OUaYsfX58A0%2Fa04t0URo%3D');
INSERT INTO `section` VALUES ('282', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/71.png?Expires=1571316854&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=zt2Z8WrpEgSDaM3VFRUstgizq0g%3D');
INSERT INTO `section` VALUES ('283', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/72.png?Expires=1571316854&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=zdQN%2FKllz9pWk2qUWiBZdWix6Uo%3D');
INSERT INTO `section` VALUES ('284', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/73.png?Expires=1571316854&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=rM9BqURa%2B2aq9b%2FPKJIR2FXPO30%3D');
INSERT INTO `section` VALUES ('285', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/74.png?Expires=1571316854&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=b2yqFxQ7%2FkFC47hFfkVswz77PPw%3D');
INSERT INTO `section` VALUES ('286', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/75.png?Expires=1571316854&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=4D8vczad3XUjSJrq0fBcQBKbIbw%3D');
INSERT INTO `section` VALUES ('289', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/78.png?Expires=1571316855&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=j1qpCQcUE7r8NEGv9iWnIEZ0ymM%3D');
INSERT INTO `section` VALUES ('290', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/79.png?Expires=1571316855&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=6uinZLxxdPXk%2FtIdfVHnUMznZOE%3D');
INSERT INTO `section` VALUES ('291', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/80.png?Expires=1571316855&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=IVEuC8pJZgqXS5zD%2FeAWN%2BRisk8%3D');
INSERT INTO `section` VALUES ('292', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/81.png?Expires=1571316855&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=wgrcb3T0aB8rdYCR30GYqhKY2Xs%3D');
INSERT INTO `section` VALUES ('293', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/82.png?Expires=1571316856&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=dVGXd5tdLDJmBhOi5rvzJV%2B29r4%3D');
INSERT INTO `section` VALUES ('294', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/83.png?Expires=1571316856&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=7Esm%2B0mfuegO77gof%2B3x4T4U0m8%3D');
INSERT INTO `section` VALUES ('295', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/84.png?Expires=1571316856&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=jFnp9CzFwa1%2BwZAB3uejv%2BdUP9o%3D');
INSERT INTO `section` VALUES ('296', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/85.png?Expires=1571316856&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=MjkQnodvdZVX%2Fo9bYrETXRbi9Js%3D');
INSERT INTO `section` VALUES ('297', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/86.png?Expires=1571316856&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=rDTf6jbEZt6GA%2FgxBZBB2ppIzRw%3D');
INSERT INTO `section` VALUES ('298', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/87.png?Expires=1571316856&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=FapmOTWkrpOy5qvHBvLNBN5lhcU%3D');
INSERT INTO `section` VALUES ('299', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/88.png?Expires=1571316856&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=3rub862Vfbdk9uOa753BzfOPMTs%3D');
INSERT INTO `section` VALUES ('300', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/89.png?Expires=1571316856&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=USwxyqOLzuxi9OIxk7bl0SvALjw%3D');
INSERT INTO `section` VALUES ('301', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/90.png?Expires=1571316857&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=YN%2BRN0GygkOc7RgwIiPf2wNn7rY%3D');
INSERT INTO `section` VALUES ('302', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/91.png?Expires=1571316857&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=C596rzvM1PxvAReSmC3qPEAvKI8%3D');
INSERT INTO `section` VALUES ('303', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/92.png?Expires=1571316857&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=HXnYksMxGmkfJk3gxPx69FH7%2Ff0%3D');
INSERT INTO `section` VALUES ('304', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/93.png?Expires=1571316857&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=lS%2FGNfY3vocEvZ4p20VOjLGcXY4%3D');
INSERT INTO `section` VALUES ('305', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/94.png?Expires=1571316857&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=5BAnXHkslJb7U64b%2FljsI%2Budeq4%3D');
INSERT INTO `section` VALUES ('306', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/95.png?Expires=1571316858&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=f2PX6pZ8%2BwOy8piwiOzGLfULh4A%3D');
INSERT INTO `section` VALUES ('307', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/96.png?Expires=1571316858&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=0fioKmM3rTeoQY3HXfDU2t3inF8%3D');
INSERT INTO `section` VALUES ('308', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/97.png?Expires=1571316858&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=K2W4cqJUIam4JhKqrS7HArz43ec%3D');
INSERT INTO `section` VALUES ('309', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/98.png?Expires=1571316859&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=vcqmQIbfMo%2Fh8KdBRhla5FgbffI%3D');
INSERT INTO `section` VALUES ('310', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/99.png?Expires=1571316859&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Ke5lxw7rxfFkT9pziaHU2d6CWU8%3D');
INSERT INTO `section` VALUES ('311', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/100.png?Expires=1571316859&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=pqRyHDxD8XEhlj9fYCg0a7aFXSQ%3D');
INSERT INTO `section` VALUES ('312', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/101.png?Expires=1571316859&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=FcGY8WvUhYwYRiEjCu8ZZ7qNJww%3D');
INSERT INTO `section` VALUES ('313', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/102.png?Expires=1571316859&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=mJDcFxC7i9bNm8J3Tl%2B2%2B1EJSlw%3D');
INSERT INTO `section` VALUES ('314', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/103.png?Expires=1571316859&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=WRbKN4H8iZGHG%2B7ONgfkdXOBOk0%3D');
INSERT INTO `section` VALUES ('315', '215', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E5%90%8D%E8%8A%B1%E6%9C%89%E8%8D%89/chaptor4/104.png?Expires=1571316859&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Br4TCoMd0F3I4BbVhqJHFGDexd4%3D');
INSERT INTO `section` VALUES ('459', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/1.png?Expires=1886678998&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=nmTVBNbBakQAy8OSjX4NfX3w4%2BA%3D');
INSERT INTO `section` VALUES ('460', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/2.png?Expires=1886678999&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=0LPLXsNZe%2FqqHUomcwXnxDKHzYM%3D');
INSERT INTO `section` VALUES ('461', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/3.png?Expires=1886678999&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=PvBk2%2BVS2N8PHVoilkzRfrIWYIE%3D');
INSERT INTO `section` VALUES ('462', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/4.png?Expires=1886678999&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=%2BFGxZPsvJ8Khv%2BLps42ySLdQ32g%3D');
INSERT INTO `section` VALUES ('463', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/5.png?Expires=1886678999&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=%2BOmgh4e7Vzr3IxugEEQSP3T%2Bsu8%3D');
INSERT INTO `section` VALUES ('464', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/6.png?Expires=1886678999&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=MTL%2B1Q0NHWEMIvgJL4Zwhk91AJw%3D');
INSERT INTO `section` VALUES ('465', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/7.png?Expires=1886678999&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=lfpnx86C9TW%2BlnTp9msJ%2BhiIO3Y%3D');
INSERT INTO `section` VALUES ('466', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/8.png?Expires=1886678999&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=jxFLxDogb2Az65ey4Diai5BSS68%3D');
INSERT INTO `section` VALUES ('467', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/9.png?Expires=1886679000&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=1sUppYvbOAFc6l4PTpAycJs%2B4FY%3D');
INSERT INTO `section` VALUES ('468', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/10.png?Expires=1886679000&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=fGuLgZUObp8D5Ga1k475tW8jo1A%3D');
INSERT INTO `section` VALUES ('469', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/11.png?Expires=1886679000&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Crc4IkkjPi10hHbOyfbx6INlq5k%3D');
INSERT INTO `section` VALUES ('470', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/12.png?Expires=1886679000&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=%2BEIxUiZMeCP5Yhg%2FrjcNJUW8FrQ%3D');
INSERT INTO `section` VALUES ('471', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/13.png?Expires=1886679000&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=xHUATfjX3vtwtIEQZgH1Buadltg%3D');
INSERT INTO `section` VALUES ('472', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/14.png?Expires=1886679000&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=q4tuZ7XVg7FBA6fVLVrpOi8BZTg%3D');
INSERT INTO `section` VALUES ('473', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/15.png?Expires=1886679000&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=5hYJMGjoju73TP66RbeYzY%2BSOdo%3D');
INSERT INTO `section` VALUES ('474', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/16.png?Expires=1886679000&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=lc8F506u4kgFIoFNrL1kKCgXZNo%3D');
INSERT INTO `section` VALUES ('475', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/17.png?Expires=1886679000&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Q0dx9w04DRQQOWZtb7FOCJzWIHs%3D');
INSERT INTO `section` VALUES ('476', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/18.png?Expires=1886679000&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=nmsQbr%2FnrXEVYxzB752Ndb3k0xM%3D');
INSERT INTO `section` VALUES ('477', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/19.png?Expires=1886679000&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=svJZw4wzs%2FzCX9P5ULT8zayNefY%3D');
INSERT INTO `section` VALUES ('478', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/20.png?Expires=1886679000&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=LdCrC96L%2Fk1Xc9%2F6p80UViAI9JE%3D');
INSERT INTO `section` VALUES ('479', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/1.png?Expires=1886679141&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=LwOT8KPMYGvTusregd9hc1MOago%3D');
INSERT INTO `section` VALUES ('480', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/2.png?Expires=1886679142&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=dl3ZWzAxDDkGKFw0QlBe81aQ%2BuU%3D');
INSERT INTO `section` VALUES ('481', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/3.png?Expires=1886679142&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=783Y732V0ZLexVA8MkWP32J95y4%3D');
INSERT INTO `section` VALUES ('482', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/4.png?Expires=1886679142&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=KgNiEfsoSgGl8QBl7LImKEi56nA%3D');
INSERT INTO `section` VALUES ('483', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/5.png?Expires=1886679142&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=uVkUBeV2MJ69khoRsqp7JHm0GAM%3D');
INSERT INTO `section` VALUES ('484', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/6.png?Expires=1886679142&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=W%2B9ADNj00%2Bj0u1DXCcCUJPiOokU%3D');
INSERT INTO `section` VALUES ('485', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/7.png?Expires=1886679142&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=f8CljJKchjtpIV8wYyPt2YBn9Us%3D');
INSERT INTO `section` VALUES ('486', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/8.png?Expires=1886679142&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=hC%2BTxY6FR1n2NBlIzt86FFdK6Ew%3D');
INSERT INTO `section` VALUES ('487', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/9.png?Expires=1886679142&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=DzbQ3yRRpgtqqCBZTwbkr0X7UJE%3D');
INSERT INTO `section` VALUES ('488', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/10.png?Expires=1886679142&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=vEM9q3B35xmqKcNrkh2FxLR9RPs%3D');
INSERT INTO `section` VALUES ('489', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/11.png?Expires=1886679142&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=L41V1E5eOZvkKlD5Kwwb7MtDhig%3D');
INSERT INTO `section` VALUES ('490', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/12.png?Expires=1886679142&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=GIN8BnXODDqpETY4xTUC6%2BPKiGg%3D');
INSERT INTO `section` VALUES ('491', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/13.png?Expires=1886679142&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=kiV69Lgey5tLXA%2BctS1atAEf6Js%3D');
INSERT INTO `section` VALUES ('492', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/14.png?Expires=1886679142&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=vY6s5KgBG%2BgUpOn1g%2BAFW2O6lfE%3D');
INSERT INTO `section` VALUES ('493', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/15.png?Expires=1886679143&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=MSHDQNyCgJg4Ev7Pza%2Fot5Km%2B9g%3D');
INSERT INTO `section` VALUES ('494', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/16.png?Expires=1886679143&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Oo1PS%2BSPrKyRe8ObJISX9OYC52Y%3D');
INSERT INTO `section` VALUES ('495', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/17.png?Expires=1886679143&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=%2BV0lZnVkhQvSBwtw1jbwzsakZyo%3D');
INSERT INTO `section` VALUES ('496', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/18.png?Expires=1886679143&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=rcD7ciwt4RAEy%2BqfxcdQiiR3Omg%3D');
INSERT INTO `section` VALUES ('497', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/19.png?Expires=1886679143&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=c4UPbVGe13WkV9nVzLyz%2BycJ5ws%3D');
INSERT INTO `section` VALUES ('498', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/20.png?Expires=1886679143&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=04r1cCXm4ZtER33ZNwF76%2BVdhIM%3D');
INSERT INTO `section` VALUES ('499', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/1.png?Expires=1886679345&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=HkatYe%2FbDmPW4GiCdG4%2Bcb508Tw%3D');
INSERT INTO `section` VALUES ('500', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/2.png?Expires=1886679346&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=mh9QPyge90n1qoom8QG4ajIqolo%3D');
INSERT INTO `section` VALUES ('501', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/3.png?Expires=1886679346&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=cqtkVscgOVU%2FPN8ezjNGTphMkZk%3D');
INSERT INTO `section` VALUES ('502', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/4.png?Expires=1886679346&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=xuyrew4WxgFrCR%2BNR9vtiEx1DAM%3D');
INSERT INTO `section` VALUES ('503', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/5.png?Expires=1886679346&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Jvy2F%2BJtdPy6zQk9Jsi6riUX20w%3D');
INSERT INTO `section` VALUES ('504', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/6.png?Expires=1886679346&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=rj%2BGmD0Pho6zFQ7Mvbsc%2FsOl0p0%3D');
INSERT INTO `section` VALUES ('505', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/7.png?Expires=1886679346&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=SEXKGuOIC9CJwEmgYXryA4ZMNfU%3D');
INSERT INTO `section` VALUES ('506', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/8.png?Expires=1886679348&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=yUGabIZaZwAxGnSafOv%2BqPfIqqA%3D');
INSERT INTO `section` VALUES ('507', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/9.png?Expires=1886679348&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=3%2F6rmolloBwZhlNy7Ov%2BkWGr6rc%3D');
INSERT INTO `section` VALUES ('508', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/10.png?Expires=1886679348&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=PWefytfDUvVjmfKJMBUT5ORPyFU%3D');
INSERT INTO `section` VALUES ('509', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/11.png?Expires=1886679348&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=BnXwf1d7Pry6BfCVAyWDann1HGs%3D');
INSERT INTO `section` VALUES ('510', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/12.png?Expires=1886679348&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=s2EAWafsFzrJm1R1K8juwVfyBNU%3D');
INSERT INTO `section` VALUES ('511', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/13.png?Expires=1886679349&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=HyQLEYanWYG%2BApZVB9Z3v0CC5rQ%3D');
INSERT INTO `section` VALUES ('512', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/14.png?Expires=1886679349&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=VrjzdI66WyDzEkEIPXHnaoT9ywg%3D');
INSERT INTO `section` VALUES ('513', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/15.png?Expires=1886679349&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=iILEutRzf4LcAGrTNq6y1dDkUxc%3D');
INSERT INTO `section` VALUES ('514', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/16.png?Expires=1886679349&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=H7ILIELuYYNv93Et6Z9xthvkOOk%3D');
INSERT INTO `section` VALUES ('515', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/17.png?Expires=1886679349&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=gFWa3EEwStvomDis0v2slVTRglI%3D');
INSERT INTO `section` VALUES ('516', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/18.png?Expires=1886679349&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=HY5Zze%2B5iwWBm%2BeaNs3auJZb%2BXI%3D');
INSERT INTO `section` VALUES ('517', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/19.png?Expires=1886679350&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=MyTzhXwl2%2BAHacSHEqywoMWX6F0%3D');
INSERT INTO `section` VALUES ('518', '284', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor4/20.png?Expires=1886679350&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=vOWUAV03SZz0tT%2BxLaROVqCTBEM%3D');
INSERT INTO `section` VALUES ('519', '285', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor3/1.png?Expires=4724919686&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=OUYHrp5yxgD4h77RHczKqE2UJfI%3D');
INSERT INTO `section` VALUES ('520', '285', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor3/2.png?Expires=4724919687&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Ea99Y8ymskMzYn3L4Zm%2BYS0Jd%2Bs%3D');
INSERT INTO `section` VALUES ('521', '285', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor3/3.png?Expires=4724919687&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=p%2BeD4%2F9sPbgDfQuq59c87mkQiUQ%3D');
INSERT INTO `section` VALUES ('522', '285', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor3/4.png?Expires=4724919687&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=GrDKUavD09cVlNYnrepcji7cvSY%3D');
INSERT INTO `section` VALUES ('523', '285', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor3/5.png?Expires=4724919687&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=vLDHWJN16KHz5Q2AJ%2B%2Bog%2BYZUs8%3D');
INSERT INTO `section` VALUES ('524', '285', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor3/6.png?Expires=4724919687&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=QGf%2BLUKSO%2F7eNu8fSir7LZdZd5I%3D');
INSERT INTO `section` VALUES ('525', '285', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor3/7.png?Expires=4724919687&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=JQX3E%2B%2BD1MoN0UNNXZOBDrbs2DE%3D');
INSERT INTO `section` VALUES ('526', '285', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor3/8.png?Expires=4724919687&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=SkZFFibwtICJ8IAbPhR84jamqvo%3D');
INSERT INTO `section` VALUES ('527', '285', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor3/9.png?Expires=4724919687&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=TecSQJif4ZESYCZind%2BNl66XJ1Q%3D');
INSERT INTO `section` VALUES ('528', '285', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor3/10.png?Expires=4724919688&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=ehZmr11YSyZ%2FG3DENabwRRT7IO8%3D');
INSERT INTO `section` VALUES ('529', '285', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor3/11.png?Expires=4724919688&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=%2BSDI6p9RVox1aCieWRlmaw1UsHk%3D');
INSERT INTO `section` VALUES ('530', '285', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor3/12.png?Expires=4724919688&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=p79LmmHF48BLILVFBm%2BCfOFzakk%3D');
INSERT INTO `section` VALUES ('531', '285', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor3/13.png?Expires=4724919688&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=AjFPXxnbdy%2FDtqTCOmidDlPoKm4%3D');
INSERT INTO `section` VALUES ('532', '285', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor3/14.png?Expires=4724919689&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=MIxhec%2Fne8qoWYDnU4hpeTCrl6c%3D');
INSERT INTO `section` VALUES ('533', '285', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor3/15.png?Expires=4724919689&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=KtAGmXFzYu86VrTOhmaTmXadovo%3D');
INSERT INTO `section` VALUES ('534', '285', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor3/16.png?Expires=4724919689&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=NrtemqW9PFcg6f%2BVWIgF3vSUTaM%3D');
INSERT INTO `section` VALUES ('535', '285', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor3/17.png?Expires=4724919689&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Tb1Td3crUEKK7nOjcgeK3rnOMa8%3D');
INSERT INTO `section` VALUES ('536', '286', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor2/1.png?Expires=4724919852&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=lNw8UO492yUINQ%2FODXeRPrFyj9U%3D');
INSERT INTO `section` VALUES ('537', '286', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor2/2.png?Expires=4724919853&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=1em%2BtIZ%2BQxdTpmPM%2BO7O6WJq%2FYg%3D');
INSERT INTO `section` VALUES ('538', '286', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor2/3.png?Expires=4724919853&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=tnjnWAUEMKsmYrYxxN51nGrLiYY%3D');
INSERT INTO `section` VALUES ('539', '286', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor2/4.png?Expires=4724919853&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=i%2FRvprVLAOHMmpmw4bdlS%2F%2FR9Hk%3D');
INSERT INTO `section` VALUES ('540', '286', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor2/5.png?Expires=4724919853&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Hmd1%2FS9TvrhITkDfml3cTLd65ko%3D');
INSERT INTO `section` VALUES ('541', '286', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor2/6.png?Expires=4724919853&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=dG55a9idVw0f6HbKLYybccTheJM%3D');
INSERT INTO `section` VALUES ('542', '286', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor2/7.png?Expires=4724919853&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=%2Fx3fVIHI43xv0bL8otWdJRgPLXM%3D');
INSERT INTO `section` VALUES ('543', '286', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor2/8.png?Expires=4724919854&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=dHNwOImwNEx8BsoBl%2B6%2Bk2JtBlo%3D');
INSERT INTO `section` VALUES ('544', '286', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor2/9.png?Expires=4724919854&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=44MhJAYQvGzXH3xRj5m2RQUOks0%3D');
INSERT INTO `section` VALUES ('545', '286', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor2/10.png?Expires=4724919855&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=M5iFoEyA%2Fw%2BKZJ8wki%2FmekVxqvs%3D');
INSERT INTO `section` VALUES ('546', '286', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor2/11.png?Expires=4724919855&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=30YDeN3ZJI8HCY53w30vONLog24%3D');
INSERT INTO `section` VALUES ('547', '286', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor2/12.png?Expires=4724919855&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=VlaS%2FJlm7Vs6BlYlwv4lPe%2BXDZI%3D');
INSERT INTO `section` VALUES ('548', '286', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor2/13.png?Expires=4724919855&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=rADme00ftrjzUd%2BMhqoMuE8GdsM%3D');
INSERT INTO `section` VALUES ('549', '286', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor2/14.png?Expires=4724919856&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=3Krvxti%2FkW%2BTI1tVp0HPxTWjYyA%3D');
INSERT INTO `section` VALUES ('550', '286', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor2/15.png?Expires=4724919856&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=cbZmNiwNhoyl9bAt9eUOSJgNNT0%3D');
INSERT INTO `section` VALUES ('551', '286', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor2/16.png?Expires=4724919856&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=w8NPLBu7skPWMDiUGHJlL%2Bf7tNw%3D');
INSERT INTO `section` VALUES ('552', '287', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor1/1.png?Expires=4724920231&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=SDcKlEv14j95RCCg87tABgL9CnM%3D');
INSERT INTO `section` VALUES ('553', '287', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor1/2.png?Expires=4724920231&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=HthT4Pi%2BT1nZIm25FyHE1BeIsxs%3D');
INSERT INTO `section` VALUES ('554', '287', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor1/3.png?Expires=4724920231&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=8SNnxV3oZoFnw%2BYBMlh1wnFPyFM%3D');
INSERT INTO `section` VALUES ('555', '287', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor1/4.png?Expires=4724920231&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=yXN1MaPyMyZKup67nNb%2B8uRkACI%3D');
INSERT INTO `section` VALUES ('556', '287', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor1/5.png?Expires=4724920231&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=iRRDyba62dMCQimhixwUQdQOEzc%3D');
INSERT INTO `section` VALUES ('557', '287', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor1/6.png?Expires=4724920231&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=ke1YT5KSupFhnHqHaQOp8s2a3wA%3D');
INSERT INTO `section` VALUES ('558', '287', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor1/7.png?Expires=4724920232&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=KjJ85cnKvbrsHd3v2i6u0lWLVYw%3D');
INSERT INTO `section` VALUES ('559', '287', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor1/8.png?Expires=4724920232&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=W19Jqs0YbCqtskFbK4XD6s8937o%3D');
INSERT INTO `section` VALUES ('560', '287', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor1/9.png?Expires=4724920232&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=GmrbHYCXD5pLtq0AMbU64TLYODI%3D');
INSERT INTO `section` VALUES ('561', '287', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor1/10.png?Expires=4724920232&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=XUbzEviy9489UYrrHvmsaiYbONY%3D');
INSERT INTO `section` VALUES ('562', '287', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor1/11.png?Expires=4724920233&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=lqtUSM2dYHhxD1LNbemFftbFbtM%3D');
INSERT INTO `section` VALUES ('563', '287', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor1/12.png?Expires=4724920233&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=vsJPOWA54OwnN%2FpXT0JM5iiI2Ao%3D');
INSERT INTO `section` VALUES ('564', '287', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor1/13.png?Expires=4724920233&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=MQV5xsJWPHsL2QyeFWZb7Cux9%2FI%3D');
INSERT INTO `section` VALUES ('565', '287', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor1/14.png?Expires=4724920234&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=dB73OnErLbrD0fLnV%2FWNgkx80LY%3D');
INSERT INTO `section` VALUES ('566', '287', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor1/15.png?Expires=4724920234&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=aq4pDZn0JhKJwO95A5KLW2DkUTw%3D');
INSERT INTO `section` VALUES ('567', '287', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor1/16.png?Expires=4724920234&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=SxRwopYI1xs2nfPlu0IObmJ1A%2FA%3D');
INSERT INTO `section` VALUES ('568', '287', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor1/17.png?Expires=4724920234&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=tLkuQHpX57P9v3JFYLnRZSAL%2Buw%3D');
INSERT INTO `section` VALUES ('569', '287', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor1/18.png?Expires=4724920234&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=qHGfxC1FxhXj0SAeNkjkMOknVPw%3D');
INSERT INTO `section` VALUES ('570', '287', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor1/19.png?Expires=4724920234&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=4OvVXEzy8oMdJTJQQOSzfHaTheg%3D');
INSERT INTO `section` VALUES ('571', '287', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor1/20.png?Expires=4724920234&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=7COSm%2FAY%2Fy2kR%2FOX3jSWhQ7qjds%3D');
INSERT INTO `section` VALUES ('572', '287', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor1/21.png?Expires=4724920234&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=rdwvtsfmfdoC%2BcyPtFIfuQODo4o%3D');
INSERT INTO `section` VALUES ('573', '287', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor1/22.png?Expires=4724920235&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=8IbJ1%2B7%2BdnNFOgzQ0W3jMtqqXuo%3D');
INSERT INTO `section` VALUES ('574', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/1.png?Expires=4724920302&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=ovMgLwPdTvNMpG5Y2%2FVqZCWzWqA%3D');
INSERT INTO `section` VALUES ('575', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/2.png?Expires=4724920302&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=0UHKz4rCRcqUQ%2F9DHZBuYs2sKJk%3D');
INSERT INTO `section` VALUES ('576', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/3.png?Expires=4724920302&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=qPoT5SoxDJVOx9csLffTnBitSYE%3D');
INSERT INTO `section` VALUES ('577', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/4.png?Expires=4724920303&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=dcz5cmK43OWv8ckR5b%2FQZLtDAfs%3D');
INSERT INTO `section` VALUES ('578', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/5.png?Expires=4724920303&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=xM2zNn0%2FPmTZrVHACV8XyBhewLw%3D');
INSERT INTO `section` VALUES ('579', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/6.png?Expires=4724920303&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=j5uGnKvKA4X%2F5V41cc%2FRN%2B8SCpk%3D');
INSERT INTO `section` VALUES ('580', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/7.png?Expires=4724920303&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=xwFMBa0xQ7cdH6Jp5Xe8WTHQ3bE%3D');
INSERT INTO `section` VALUES ('581', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/8.png?Expires=4724920303&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=xQUwvbLgGSvz%2BZJCBC24TDC3iJo%3D');
INSERT INTO `section` VALUES ('582', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/9.png?Expires=4724920303&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=xz9xrJkYleaQK4aHmE90gzOV6A0%3D');
INSERT INTO `section` VALUES ('583', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/10.png?Expires=4724920304&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=0vhQX9HfOF130pb14Kbm%2BmTOFwY%3D');
INSERT INTO `section` VALUES ('584', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/11.png?Expires=4724920304&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=3SLnqZ%2F%2FKbROSY5xk86URzILBYY%3D');
INSERT INTO `section` VALUES ('585', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/12.png?Expires=4724920304&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=U4aklcVDqoqrAV8TwJ0yr2fIkUM%3D');
INSERT INTO `section` VALUES ('586', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/13.png?Expires=4724920304&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=hu31ycfJiN%2BzhQ41finLVT5%2F1KM%3D');
INSERT INTO `section` VALUES ('587', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/14.png?Expires=4724920304&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=d6x4kIV62yVRaSTLjZRvyriEoj0%3D');
INSERT INTO `section` VALUES ('588', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/15.png?Expires=4724920304&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=cAXBOze4hIDV2hfggX9TGKayjDk%3D');
INSERT INTO `section` VALUES ('589', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/16.png?Expires=4724920305&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=aHw0B9V8ngYodxBAxcpZOMQbi4s%3D');
INSERT INTO `section` VALUES ('590', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/17.png?Expires=4724920305&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=X5u%2F1fIM1yZWOZ%2FX7SsIBkBTAFE%3D');
INSERT INTO `section` VALUES ('591', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/18.png?Expires=4724920305&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=QCE76%2FyhFAzaxJi7r40MWAp7xWg%3D');
INSERT INTO `section` VALUES ('592', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/19.png?Expires=4724920305&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=GP3yqDTjw3rPu%2FsyeaY6WZ0WSu0%3D');
INSERT INTO `section` VALUES ('593', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/20.png?Expires=4724920305&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=z2ALGop2uNJLCA7yUo9HVSDxN6g%3D');
INSERT INTO `section` VALUES ('594', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/21.png?Expires=4724920306&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=hbRXmbBJjYeRcojatikU%2BE3LGM8%3D');
INSERT INTO `section` VALUES ('595', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/22.png?Expires=4724920306&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Oi1%2F0a%2FG4zX8aMJNHVFUKXSPJ9w%3D');
INSERT INTO `section` VALUES ('596', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/23.png?Expires=4724920306&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=HfVdn99svWt1RVgDmI72Dame2fQ%3D');
INSERT INTO `section` VALUES ('597', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/24.png?Expires=4724920307&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=82CIwCRsLURdiYUKkjMRyJLQxyo%3D');
INSERT INTO `section` VALUES ('598', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/25.png?Expires=4724920307&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=7OxIYtZEJJHwr0LpLfc7iFa0%2Fio%3D');
INSERT INTO `section` VALUES ('599', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/26.png?Expires=4724920307&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=LcymNDSpn3s56kK1iF7d8NDdQSI%3D');
INSERT INTO `section` VALUES ('600', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/27.png?Expires=4724920307&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=6%2F5MdKsBXeBx6JnshRIprKru59g%3D');
INSERT INTO `section` VALUES ('601', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/28.png?Expires=4724920307&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=OubqSqxXJO%2Ffq5gRDvTEob%2FupJw%3D');
INSERT INTO `section` VALUES ('602', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/29.png?Expires=4724920308&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=AYWrCNpXDhAT8jjx1NCo9V0TzaA%3D');
INSERT INTO `section` VALUES ('603', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/30.png?Expires=4724920308&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=N3DpMVfo3NpkyW6ESD%2FwYeGaiH8%3D');
INSERT INTO `section` VALUES ('604', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/31.png?Expires=4724920308&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=mFjrszADohJMpNdDLFhHiZiJn7A%3D');
INSERT INTO `section` VALUES ('605', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/32.png?Expires=4724920308&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=5XwwtdLtTZZ1v08RHTJzzZruBW0%3D');
INSERT INTO `section` VALUES ('606', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/33.png?Expires=4724920308&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=FDvzkyehmczDzFutESPMcFEj8Qw%3D');
INSERT INTO `section` VALUES ('607', '288', 'http://qgh123456.oss-cn-beijing.aliyuncs.com/%E6%95%99%E4%B8%BB%EF%BC%8C%E6%B3%A8%E6%84%8F%E5%90%8D%E5%A3%B0%21/chaptor/34.png?Expires=4724920308&OSSAccessKeyId=LTAI4Fv9XxMZEVf8piMD9cA4&Signature=Z9K%2BTyjcfp9XqzhAXmmstnlwzb4%3D');

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ss_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of status
-- ----------------------------

-- ----------------------------
-- Table structure for thumb_up
-- ----------------------------
DROP TABLE IF EXISTS `thumb_up`;
CREATE TABLE `thumb_up` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ct_id` int(11) DEFAULT NULL COMMENT '漫画id',
  `tu_num` int(11) DEFAULT NULL COMMENT '点赞数量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ct_id` (`ct_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of thumb_up
-- ----------------------------
INSERT INTO `thumb_up` VALUES ('1', '1', '967318');
INSERT INTO `thumb_up` VALUES ('2', '2', '828025');
INSERT INTO `thumb_up` VALUES ('3', '3', '5974364');
INSERT INTO `thumb_up` VALUES ('4', '4', '2444255');
INSERT INTO `thumb_up` VALUES ('5', '5', '6666352');
INSERT INTO `thumb_up` VALUES ('6', '6', '894267');
INSERT INTO `thumb_up` VALUES ('7', '7', '3501146');
INSERT INTO `thumb_up` VALUES ('8', '8', '2503754');
INSERT INTO `thumb_up` VALUES ('9', '9', '270996');
INSERT INTO `thumb_up` VALUES ('10', '10', '4143953');
INSERT INTO `thumb_up` VALUES ('11', '11', '6040122');
INSERT INTO `thumb_up` VALUES ('12', '12', '4945017');
INSERT INTO `thumb_up` VALUES ('13', '13', '795234');
INSERT INTO `thumb_up` VALUES ('14', '14', '70048');
INSERT INTO `thumb_up` VALUES ('15', '15', '3370235');
INSERT INTO `thumb_up` VALUES ('16', '16', '7530578');
INSERT INTO `thumb_up` VALUES ('17', '17', '10117987');
INSERT INTO `thumb_up` VALUES ('18', '18', '1191828');
INSERT INTO `thumb_up` VALUES ('19', '19', '6382354');
INSERT INTO `thumb_up` VALUES ('20', '20', '33605858');
INSERT INTO `thumb_up` VALUES ('21', '21', '7419313');
INSERT INTO `thumb_up` VALUES ('22', '22', '1370721');
INSERT INTO `thumb_up` VALUES ('23', '23', '3029224');
INSERT INTO `thumb_up` VALUES ('24', '24', '864963');
INSERT INTO `thumb_up` VALUES ('25', '25', '2643938');
INSERT INTO `thumb_up` VALUES ('26', '26', '7128');
INSERT INTO `thumb_up` VALUES ('27', '27', '1803472');
INSERT INTO `thumb_up` VALUES ('28', '28', '37274138');
INSERT INTO `thumb_up` VALUES ('29', '29', '14983793');
INSERT INTO `thumb_up` VALUES ('30', '30', '4370036');
INSERT INTO `thumb_up` VALUES ('31', '31', '1615823');
INSERT INTO `thumb_up` VALUES ('32', '32', '768834');
INSERT INTO `thumb_up` VALUES ('33', '33', '3398098');
INSERT INTO `thumb_up` VALUES ('34', '34', '1791372');
INSERT INTO `thumb_up` VALUES ('35', '35', '465729');
INSERT INTO `thumb_up` VALUES ('36', '36', '8605553');
INSERT INTO `thumb_up` VALUES ('37', '37', '62758531');
INSERT INTO `thumb_up` VALUES ('38', '38', '3404005');
INSERT INTO `thumb_up` VALUES ('39', '39', '6790091');
INSERT INTO `thumb_up` VALUES ('40', '40', '7718183');
INSERT INTO `thumb_up` VALUES ('41', '41', '1478290');
INSERT INTO `thumb_up` VALUES ('42', '42', '2120855');
INSERT INTO `thumb_up` VALUES ('43', '43', '2560800');
INSERT INTO `thumb_up` VALUES ('44', '44', '93423');
INSERT INTO `thumb_up` VALUES ('45', '45', '7530578');
INSERT INTO `thumb_up` VALUES ('46', '46', '2742564');
INSERT INTO `thumb_up` VALUES ('47', '47', '2630870');
INSERT INTO `thumb_up` VALUES ('48', '48', '4543132');
INSERT INTO `thumb_up` VALUES ('49', '49', '2135771');
INSERT INTO `thumb_up` VALUES ('50', '50', '5086235');
INSERT INTO `thumb_up` VALUES ('51', '51', '18981919');
INSERT INTO `thumb_up` VALUES ('52', '52', '1540605');
INSERT INTO `thumb_up` VALUES ('53', '53', '2891526');
INSERT INTO `thumb_up` VALUES ('54', '54', '123541');
INSERT INTO `thumb_up` VALUES ('55', '55', '10446557');
INSERT INTO `thumb_up` VALUES ('56', '56', '227711');
INSERT INTO `thumb_up` VALUES ('57', '57', '686851');
INSERT INTO `thumb_up` VALUES ('58', '58', '931293');
INSERT INTO `thumb_up` VALUES ('59', '59', '296923');
INSERT INTO `thumb_up` VALUES ('60', '60', '3248421');
INSERT INTO `thumb_up` VALUES ('61', '61', '780384');
INSERT INTO `thumb_up` VALUES ('62', '62', '2634720');
INSERT INTO `thumb_up` VALUES ('63', '63', '6442381');
INSERT INTO `thumb_up` VALUES ('64', '66', '227711');
INSERT INTO `thumb_up` VALUES ('65', '68', '39567');
INSERT INTO `thumb_up` VALUES ('66', '69', '17809');
INSERT INTO `thumb_up` VALUES ('67', '70', '70048');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `status` smallint(6) DEFAULT '0' COMMENT '状态',
  `identity` smallint(6) DEFAULT '0' COMMENT '身份',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='身份';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('3', '1223101871@qq.com', 'z+hJU3+mR6Tufsq2PB5MdcwZSf4wYWM4Y2I0NjMx', '0', '1', '1999-01-30', 'f');
INSERT INTO `user` VALUES ('6', '1184208770@qq.com', '8IFHQZ4tpxdL++uFOSYtRaJqAdc3MGY1MjVkYzFl', '1', '0', '1997-12-21', 'f');
INSERT INTO `user` VALUES ('11', '2542953433@qq.com', 'CNo/yb9jmxrsN2LdRAaKpq6gM4U0NDIzMzcxZmNl', '1', '1', '1997-09-08', 'f');

-- ----------------------------
-- Table structure for wallet
-- ----------------------------
DROP TABLE IF EXISTS `wallet`;
CREATE TABLE `wallet` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `dong_num` int(11) DEFAULT '0' COMMENT '用户咚币数量',
  `pay_chaptor_all_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '所有付费章节的id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of wallet
-- ----------------------------
INSERT INTO `wallet` VALUES ('1', '2', '1440', '220,221,');

-- ----------------------------
-- Table structure for week
-- ----------------------------
DROP TABLE IF EXISTS `week`;
CREATE TABLE `week` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wk_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of week
-- ----------------------------
INSERT INTO `week` VALUES ('1', '周一');
INSERT INTO `week` VALUES ('2', '周二');
INSERT INTO `week` VALUES ('3', '周三');
INSERT INTO `week` VALUES ('4', '周四');
INSERT INTO `week` VALUES ('5', '周五');
INSERT INTO `week` VALUES ('6', '周六');
INSERT INTO `week` VALUES ('7', '周日');
