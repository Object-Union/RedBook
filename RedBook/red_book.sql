/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 5.7.19 : Database - red_book
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`red_book` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `red_book`;

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` text COLLATE utf8mb4_unicode_ci,
  `likes` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `article` */

insert  into `article`(`id`,`title`,`context`,`likes`,`user_id`) values 
(1,'闺蜜说下楼做核酸一眼就看到我……','真的笑死，闺蜜说下楼做核酸大老远就看到一个人的后脑门在发光，还拍了张照片给我看\r\n\r\n有一说一，头发真的还挺顺挺亮的，看来这段时间认认真真的护发是没有白费功夫的嘻嘻\r\n\r\n我之前比较喜欢染头发，最近才染了黑茶色准备好好护理一下，从网上看了好多护理方法，自己就整理了整理，方法我给放在第三张图了，差不多护理了一个多月还是挺有效果的，感觉可以写出来分享一下，头发比较干或者受损严重的都可以试试这个方法，用到的都是家里都会有的护理产品，贝缇雅美护发精油我是跟着博主入的，这个里面的优质基油比较多，所以洗完头发最后涂的时候一定要少量多次的去涂，这样就比较好吸收，而且抹完头发的光泽感也会比较好，感觉秋冬入这个滋润感还是蛮高的，姐妹们可以试试我的方法哦\r\n\r\n#护发精油',46,2),
(2,'呆在杭州12年的旅游总结','在杭州待了12年的我和我的杭州土著朋友们的良心推荐。\r\n\r\n不要问什么季节最合适，真的，一年四季风光不同，感受不同，但一样都很美！\r\n\r\n:round_pushpin:船游西湖\r\n\r\n游西湖，选择手摇船，有两种，手划船可坐4人150元/h，摇橹船可坐6人180元 /h，建议选2个小时，船师傅大部分都是当地人，一边在西湖美景里摇曳，一边听西湖的故事，岸上热闹的游客与你无关。\r\n\r\n:round_pushpin:车行杨公堤\r\n\r\n杨公堤上有好几做桥，那一上一下的感觉，如同坐过山车，快来和朋友一起wu～出来\r\n\r\n:pushpin:小贴士：快开到桥之前和前面的车拉开一段距离，然后快速开上去下来。\r\n\r\n:round_pushpin:徒步新西湖\r\n\r\n从茅家埠，到三台山，再至浴鹄湾，这一带是杭州市民真正的西湖秘境，人少景幽，也被成为新西湖。\r\n\r\n:pushpin:小贴士：建议备点口粮，一路没有什么店铺，很清净。\r\n\r\n:round_pushpin:徒步九溪十八涧\r\n\r\n和朋友每年都会去徒步的地方，溪水潺潺，山丘起伏，两边是郁郁葱葱的古树和龙井茶树，有一种远离城市的隐世感。\r\n\r\n:pushpin:小贴士：可以和云栖竹径，十里琅珰串连起来，还有备点口粮。\r\n\r\n:round_pushpin:水上巴士1号线\r\n\r\n乘坐运河水上巴士从武林广场到拱宸桥，延路经过大兜路历史街区，桥西直街历史街区，一路感受两岸运河人家，拱宸桥的四大博物馆也值得一去。\r\n\r\n:pushpin:小贴士：水上巴士只是公共交通，班次少，如果是节假日建议选择其他方式游玩运河。\r\n\r\n:round_pushpin:孤山\r\n\r\n“钱塘之胜在西湖，西湖之奇在孤山。”\r\n\r\n孤山文物荟萃，是西湖边集中而丰富的一块地方，自古以来文人墨客聚集。这里除了中山公园，西泠印社，浙江省博物馆，沿后山的石板路也非常值得一去。\r\n\r\n:round_pushpin:三天竺\r\n\r\n天竺路上的天竺三寺，自古香客就很多，因此天竺路是一条真正的上香古道。一路古色古香，曲径通幽。沿路除了三天竺三座寺庙，还有灵隐寺，韬光寺，杭州图书馆佛学院分馆及杭州佛学院。\r\n\r\n还有什么疑问，欢迎留言，看到第一时间回复。\r\n\r\n大家感兴趣的话，会出第二篇。\r\n\r\n#杭州旅行 #杭州 #杭州旅行攻略',103,3),
(3,'杭州｜为什么说杭州是网红不是江南呢？',':round_pushpin:浴鹄湾\r\n\r\n西湖不也全是人流攒动的地方。浴鹄湾、三台山都是本地人偏爱而游客少去的僻静之处。随意找一处亭子发呆，都是惬意。\r\n\r\n最近冲浪看见有人说杭州是网红不是江南。然而，网红和江南没有冲突。杭州千年之前就是网红。这么多诗流传下来则可见一斑。最后，只要杭州话在，杭州菜在，西湖在，文化在，杭州永远都是江南。\r\n\r\n这里是一颗桃:peach:的发现，\r\n\r\n期待跟你分享更多的发现。\r\n\r\n#杭州 #西湖 #旅行',257,4),
(4,'杭州｜你见过凌晨一点的灵隐寺吗？','在杭州的第12年，我居然才知道灵隐寺是可以夜游的。\r\n\r\n-\r\n\r\n每月初一和十五的前一天晚上，一直开到凌晨1:30。不得不感慨一句，杭州真是太卷了，连菩萨都要加班\r\n\r\n-\r\n\r\n我是晚上9点到的，只有零星两三个香客。而到了11点，人流明显增多了，大家都赶着上头香来了。\r\n\r\n-\r\n\r\n晚上只有大雄宝殿和天王殿是开放的，趁着人少赶紧祈福，菩萨是不是就能早点听到我的愿望\r\n\r\n-\r\n\r\n没有了白天熙熙攘攘的人群，夜晚的灵隐寺显得静谧而清幽。月光如水一般，温柔地洒在路上，竹影婆娑，暗影浮动，再过几日来，想必还能闻到风中的桂花香。\r\n\r\n-\r\n\r\n满地都是六便士，他却抬头看见了月亮\r\n\r\n-\r\n\r\n地点：杭州灵隐寺\r\n\r\n门票：30元，寺庙年卡免费\r\n\r\n开放时间：初一和十五前一晚，一直开到次日凌晨1:30\r\n\r\n提示：进门可以免费请三支香\r\n\r\n#笔记灵感 #灵隐寺 #灵隐寺祈福 #杭州旅行 #杭州寺庙 #小众旅行地 #十一旅行公告板 #十一旅行日记 #十一还能去哪儿',77,1),
(5,'接下来的杭州，答应我一定要去这13处看看','北山街——法国梧桐\r\n\r\n钱王祠——红墙光影 红枫\r\n\r\n西湖——残藕&鸳鸯\r\n\r\n九溪——枫叶&茶园\r\n\r\n植物园——植物的四季\r\n\r\n太子湾——小公园草木\r\n\r\n小河直街——古朴江南\r\n\r\n南宋御街——清末建筑\r\n\r\n梅里——柿子林\r\n\r\n满觉陇——桂花\r\n\r\n云栖竹径——红枫\r\n\r\n良渚——稻田\r\n\r\n大佛寺遗址——银杏 #笔记灵感   #周末去哪儿   #秋天来了   #杭州   #城市情报官   @户外薯  @薯队长  @摄影薯',23,5),
(6,'解锁秋季七彩绿道｜红色地肤草s弯惊艳到我了','秋天也许是一年四季里最浪漫的了，层林尽染，打翻大自然的调色盘:art:\r\n\r\n连日秋雨，，成都的天气渐渐转凉，秋景也陆续上线了，最让人心动的就是红色地肤草了吧。\r\n\r\n-\r\n\r\n:round_pushpin:导航：月亮湾大桥，地铁可以到三元站或者太平寺后再骑行过去。\r\n\r\n:ticket:门票：免费\r\n\r\n:camera:拍摄tips：\r\n\r\n:white_small_square:这里是天府绿道的一段，可以骑行，可以野餐。\r\n\r\n:white_small_square:这里的地肤草红得比较早，很多颜色已经很深了，虽然不是一大片，但沿着湖边还是特别出片。\r\n\r\n:white_small_square:湖两岸的地形是高低起伏的，地肤草层层叠叠，错落有致的排列，站在湖的一侧拍对面，地肤草郁郁葱葱，很美。\r\n\r\n:white_small_square:在小山坡最高处拍远处的S弯特别好看。\r\n\r\n:white_small_square:人在草丛中若隐若现，拍特写或者细节图也是很美。\r\n\r\n:warning:早上或者中午去吧，周末下午人有点儿多。我周六中午到的，几乎没人。\r\n\r\n:white_small_square:公园里还有一大片薰衣草和羽毛草，都很适合拍照。\r\n\r\n国庆假期近在眼前，大家赶紧冲冲冲！\r\n\r\n#绿道秋季调色盘 # #成都神仙公园 # #天府绿道攻略 #天府绿道 #笔记灵感 #成都周边游 #成都小众拍照打卡地 #公园拍照',67,6),
(7,'被美呆｜走进千岛湖《我和我的故乡》童话学校','挖到一个国庆人少景美的地方：\r\n\r\n千岛湖的富文乡中心小学，是电影《我和我的家乡》里面《Z后一课》的取景地，为贫困儿童提供教育建造的乡村学校。人少，不用排队，挑了几个点拍照分分钟出片！\r\n\r\n杭州出发3h，不过小学在山沟沟里，考验车技。要提前找好住宿，酒店的晚饭还八错，晚上记得抬头看看星空，用小苹果拍的星河像用pad画的画，农村里的慢节奏，舒缓了在城市里紧绷的神经。\r\n\r\n怎么预约进学校参观呢？小cx搜“印象富文”就行，门票便宜，周六晚上五点停止进学校，周日四点。\r\n\r\n国庆我是在下午四点多去的，还营业中，正好穿了粉粉的衣服，居然和小学的颜色有点衬。\r\n\r\n#杭州周边游 #千岛湖旅游 #富文乡中心小学 #千岛湖 #拍照攻略',92,7),
(8,'千岛湖｜Le serein日不落下午茶｜氛围感拍照','来千岛湖度假绝对不能错过的咖啡厅\r\n\r\n看落日的最佳地:heart:\r\n\r\n落日余晖、海边、夕阳、秋千\r\n\r\n拍照真的很出片\r\n\r\n可以溺在这一下午\r\n\r\n·\r\n\r\n点的套餐\r\n\r\n摆盘很精美 颜值在线\r\n\r\n有一说一吃的一般\r\n\r\n建议点饮料\r\n\r\n·\r\n\r\n气球是店里买的:balloon:\r\n\r\n下午过去看日落刚好\r\n\r\n早点去占位置\r\n\r\n·\r\n\r\n店名：Le serein日不落·下午茶\r\n\r\n打开导航 有指示牌\r\n\r\n#我拍到了橘子海 #我悟了 #日落',148,8),
(9,'杭州这两处古风银杏我不允许你不知道','秋天的步伐越来越近，路边的银杏已经开始渐渐变黄，杭州赏秋的地方很多，但是这两处古建与银杏同框的秘境，Jamie一定要安利给大家\r\n\r\n1⃣️钱王祠\r\n\r\n钱王祠在西湖边众多景点之中游客并不多，每年秋天，里面都会举办菊花展，而我更喜欢里面银杏和古建之间那种厚重的韵味\r\n\r\n金黄的银杏和红墙黑瓦，在阳光:sunny:的照射下，明黄的色调更加夺目；满是岁月痕迹的石雕栏杆和屋檐上的铃铛:bell:，越发显得厚重。\r\n\r\n钱王祠始建于北宋熙宁十年（公元1077年），是后人为纪念吴越国钱王功绩而建造的。900多年来，历经沧桑，几经毁建，所存八字墙是原建筑仅存遗迹。\r\n\r\n:ticket:门票：15元/人（持杭州公园IC卡免费）\r\n\r\n:round_pushpin:地址：上城区钱王祠路11号\r\n\r\n自驾:oncoming_automobile::accept:️直接至“钱王祠”，:u6709:️停车场:parking:，停车费10元/小时\r\n\r\n拍摄时间：2018.11.27\r\n\r\n拍摄设备：尼康d850+适马85/1.4\r\n\r\nsony a7rm3+适马24-70/2.8\r\n\r\n2⃣️杭州孔庙\r\n\r\n杭州孔庙比起钱王祠更为隐蔽，冷门到本地人都极少拜访！\r\n\r\n杭州孔庙（碑林），原为南宋临安府学所在地，始建于宋高宗绍兴元年（1131年）。此后府学除焚毁重建或规模增扩外，至光绪三十一年（1905年）废科举制度后，一直是杭州的官办学府。\r\n\r\n一到金秋时节，明清风格的屋檐，仿宋的门扇，:sunny:阳光下金灿灿的银杏与红墙黛瓦古建筑，有种身在故宫的感觉，随便哪个角落都非常有意境，也超适合拍摄古风人像。\r\n\r\n:ticket:门票:免费:free:0元\r\n\r\n:round_pushpin:地址：杭州市上城区府学巷8号，吴山广场附近\r\n\r\n:bell:开放时间:9:00-16:30,周一不开放\r\n\r\n:car:交通：:bus:公交到吴山广场，:metro:地铁到定安路，门口有停车场:parking:（不过现在不让停，可以停在附近路边停车位）\r\n\r\n拍摄时间：2021-11-30\r\n\r\n拍摄设备：sony a7rm3+70-200/2.8gm2\r\n\r\n#杭州旅游攻略\r\n\r\n#杭州小众景点 #杭州拍照打卡 #摄影 #小红书摄影学院 #摄影师 #杭州 #杭州拍照 #杭州旅行 #走走薯 @摄影薯 @生活薯 #薯条小助手\r\n',689,9),
(10,'听我说 秋天再来杭州','来过秋天的杭州才算来过真的杭州\r\n\r\n40度的夏天很快就要过去了\r\n\r\n等到秋风吹起\r\n\r\n桂花满城\r\n\r\n枫叶红如晚霞\r\n\r\n北山路的梧桐映着西湖落日\r\n\r\n焦糖色的水杉层林尽染\r\n\r\n和喜欢的人去坐1314巴士:bus:\r\n\r\n一起看秋天金黄的温柔\r\n\r\nHi～这里是Stitch\r\n\r\n分享四季的美好给你\r\n\r\n你一定要来杭州的秋天走一走\r\n\r\n微凉的秋风穿过风衣的衣角\r\n\r\n巷口飘着糖炒栗子的香味\r\n\r\n骑车去杨公堤逛一圈\r\n\r\n浪漫的太子湾 谧静的花港观鱼公园\r\n\r\n都是江南秋色里的温柔\r\n\r\n:camera:拍摄地点\r\n\r\n花港观鱼\r\n\r\n太子湾公园\r\n\r\n杨公堤\r\n\r\n孤山路-西湖\r\n\r\n六公园-西湖\r\n\r\n河坊街\r\n\r\n良渚遗址公园\r\n\r\n梅岭南路\r\n\r\n杭州旅行|杭州景点|杭州落日|夏日旅行\r\n\r\n小众景点|城市打卡|壁纸分享|秋冬旅行\r\n\r\n#杭州 #杭州拍照 #秋天 #秋冬穿搭 #焦糖色 #温柔 #落日 #壁纸 #我拍到的治愈画面 #神仙秋景去哪儿看 #秋景 #杭州秋景 #杭州秋色 #落日晚霞\r\n\r\n@Westlake西湖景区 @城市情报官 @走走薯',760,10);

/*Table structure for table `article_comment` */

DROP TABLE IF EXISTS `article_comment`;

CREATE TABLE `article_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `comment` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

/*Data for the table `article_comment` */

insert  into `article_comment`(`id`,`article_id`,`comment`,`user_id`,`date`) values 
(12,2,'真好看',1,'2022-10-11'),
(13,2,'风景不错啊！！',5,'2022-10-11'),
(14,2,'Nice！',6,'2022-10-11'),
(15,10,'爱杭州的秋天',8,'2022-10-11'),
(16,10,'太美喽',7,'2022-10-11'),
(17,4,'原来凌晨还能去的吗？？',9,'2022-10-11'),
(18,7,'我一定要去一趟！！',1,'2022-10-11'),
(19,8,'早知道我也去哪里拍照了',10,'2022-10-11'),
(20,6,'是个骑行的好地方啊',2,'2022-10-11'),
(21,5,'我想和你一起漫步',4,'2022-10-11'),
(22,9,'哈哈哈，我都知道',3,'2022-10-11'),
(23,3,'我现在也天天做核酸',2,'2022-10-11'),
(24,2,'我去过很多地方',10,'2022-10-11'),
(25,2,'新评论！',1,'2022-10-11'),
(26,2,'好啊好啊:camera:',1,'2022-10-11'),
(27,9,'GOOD:fallen_leaf:',1,'2022-10-11'),
(28,1,'我也要去做核酸',1,'2022-10-11'),
(29,9,'我也想去打卡:camera:',1,'2022-10-11'),
(30,1,'我是评论~',1,'2022-10-12'),
(31,2,'New!',1,'2022-10-12');

/*Table structure for table `article_picture` */

DROP TABLE IF EXISTS `article_picture`;

CREATE TABLE `article_picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `url` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

/*Data for the table `article_picture` */

insert  into `article_picture`(`id`,`article_id`,`url`) values 
(1,1,'https://objectunion.vip/avatar/1_1.png'),
(2,2,'https://objectunion.vip/avatar/2_1.png'),
(3,3,'https://objectunion.vip/avatar/3_1.png'),
(4,4,'https://objectunion.vip/avatar/4_1.png'),
(5,4,'https://objectunion.vip/avatar/4_2.png'),
(6,4,'https://objectunion.vip/avatar/4_3.png'),
(7,4,'https://objectunion.vip/avatar/4_4.png'),
(8,4,'https://objectunion.vip/avatar/4_5.png'),
(9,1,'https://objectunion.vip/avatar/1_2.png'),
(10,1,'https://objectunion.vip/avatar/1_3.png'),
(11,2,'https://objectunion.vip/avatar/2_2.png'),
(12,2,'https://objectunion.vip/avatar/2_3.png'),
(13,2,'https://objectunion.vip/avatar/2_4.png'),
(14,3,'https://objectunion.vip/avatar/3_2.png'),
(15,3,'https://objectunion.vip/avatar/3_3.png'),
(16,3,'https://objectunion.vip/avatar/3_4.png'),
(17,5,'https://objectunion.vip/avatar/5_1.png'),
(18,5,'https://objectunion.vip/avatar/5_2.png'),
(19,5,'https://objectunion.vip/avatar/5_3.png'),
(20,6,'https://objectunion.vip/avatar/6_1.png'),
(21,6,'https://objectunion.vip/avatar/6_2.png'),
(22,6,'https://objectunion.vip/avatar/6_3.png'),
(23,7,'https://objectunion.vip/avatar/7_1.png'),
(24,7,'https://objectunion.vip/avatar/7_2.png'),
(25,7,'https://objectunion.vip/avatar/7_3.png'),
(26,8,'https://objectunion.vip/avatar/8_1.png'),
(27,8,'https://objectunion.vip/avatar/8_2.png'),
(28,8,'https://objectunion.vip/avatar/8_3.png'),
(29,9,'https://objectunion.vip/avatar/9_1.png'),
(30,9,'https://objectunion.vip/avatar/9_2.png'),
(31,10,'https://objectunion.vip/avatar/10_1.png'),
(32,10,'https://objectunion.vip/avatar/10_2.png'),
(33,10,'https://objectunion.vip/avatar/10_3.png');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `avatar_url` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`avatar_url`) values 
(1,'AD-Min','https://objectunion.vip/avatar/1.png'),
(2,'热爱','https://objectunion.vip/avatar/2.png'),
(3,'一偶','https://objectunion.vip/avatar/3.png'),
(4,'Yike桃','https://objectunion.vip/avatar/4.png'),
(5,'天杨紫','https://objectunion.vip/avatar/5.png'),
(6,'艾小艾','https://objectunion.vip/avatar/6.png'),
(7,'爱看剧人','https://objectunion.vip/avatar/7.png'),
(8,'Kira发发','https://objectunion.vip/avatar/8.png'),
(9,'jamie-酱','https://objectunion.vip/avatar/9.png'),
(10,'Stitch','https://objectunion.vip/avatar/10.png');

/*Table structure for table `user_like` */

DROP TABLE IF EXISTS `user_like`;

CREATE TABLE `user_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

/*Data for the table `user_like` */

insert  into `user_like`(`id`,`user_id`,`article_id`) values 
(70,1,9),
(71,1,8),
(72,1,7),
(73,1,1),
(76,1,3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
