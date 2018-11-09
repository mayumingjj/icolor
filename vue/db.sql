SET NAMES UTF8;
DROP DATABASE IF EXISTS icolor;
CREATE DATABASE icolor CHARSET=UTF8;
USE icolor;
CREATE TABLE icolor_user(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(25),
    upwd VARCHAR(32),
    uphone INT(11)
);
INSERT INTO icolor_user VALUES(null,'tom',123456,13122583695);
INSERT INTO icolor_user VALUES(null,'bob',123456,18832869360);
INSERT INTO icolor_user VALUES(null,'jerry',123456,13755856658);
CREATE TABLE icolor_meitu(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50), 
    img_url VARCHAR(255),
    img_url1 VARCHAR(255),
    img_url2 VARCHAR(255),
    img_url3 VARCHAR(255),
    img_url4 VARCHAR(255)
);
INSERT INTO `icolor_meitu` (`id`, `title`, `img_url`, `img_url1`, `img_url2`, `img_url3`, `img_url4`) VALUES
(1, '精雕细琢的意大利家具', 'http://127.0.0.1:3000/img/meitu/meitu1.png', 'http://127.0.0.1:3000/img/meitu/meitu1-1.png', 'http://127.0.0.1:3000/img/meitu/meitu1-2.png', 'http://127.0.0.1:3000/img/meitu/meitu1-3.png', 'http://127.0.0.1:3000/img/meitu/meitu1-4.png'),
(2, '浓情意大利', 'http://127.0.0.1:3000/img/meitu/meitu2.png', 'http://127.0.0.1:3000/img/meitu/meitu2-2.png', 'http://127.0.0.1:3000/img/meitu/meitu2-3.png', 'http://127.0.0.1:3000/img/meitu/meitu2-1.png', 'http://127.0.0.1:3000/img/meitu/meitu2-4.png'),
(3, '纯意大利血统的餐厅家具', 'http://127.0.0.1:3000/img/meitu/meitu3.png', 'http://127.0.0.1:3000/img/meitu/meitu3-1.png', 'http://127.0.0.1:3000/img/meitu/meitu3-2.png', 'http://127.0.0.1:3000/img/meitu/meitu3-3.png', 'http://127.0.0.1:3000/img/meitu/meitu3-4.png'),
(4, '打开柜子，亦有乾坤', 'http://127.0.0.1:3000/img/meitu/meitu4.png', 'http://127.0.0.1:3000/img/meitu/meitu4-1.png', 'http://127.0.0.1:3000/img/meitu/meitu4-2.png', 'http://127.0.0.1:3000/img/meitu/meitu4-3.png', 'http://127.0.0.1:3000/img/meitu/meitu4-4.png'),
(5, '古典优雅的意大利风情', 'http://127.0.0.1:3000/img/meitu/meitu5.png', 'http://127.0.0.1:3000/img/meitu/meitu1-1.png', 'http://127.0.0.1:3000/img/meitu/meitu2-1.png', 'http://127.0.0.1:3000/img/meitu/meitu3-3.png', 'http://127.0.0.1:3000/img/meitu/meitu4-4.png'),
(6, '自然浪漫生活主义家', 'http://127.0.0.1:3000/img/meitu/meitu6.png', 'http://127.0.0.1:3000/img/meitu/meitu3-1.png', 'http://127.0.0.1:3000/img/meitu/meitu3-2.png', 'http://127.0.0.1:3000/img/meitu/meitu4-3.png', 'http://127.0.0.1:3000/img/meitu/meitu2-4.png'),
(7, '美学与功能性的结合', 'http://127.0.0.1:3000/img/meitu/meitu7.png', 'http://127.0.0.1:3000/img/meitu/meitu1-1.png', 'http://127.0.0.1:3000/img/meitu/meitu2-2.png', 'http://127.0.0.1:3000/img/meitu/meitu1-3.png', 'http://127.0.0.1:3000/img/meitu/meitu2-4.png'),
(8, '蓝色系元素厨房', 'http://127.0.0.1:3000/img/meitu/meitu8.png', 'http://127.0.0.1:3000/img/meitu/meitu3-1.png', 'http://127.0.0.1:3000/img/meitu/meitu3-2.png', 'http://127.0.0.1:3000/img/meitu/meitu4-3.png', 'http://127.0.0.1:3000/img/meitu/meitu4-4.png'),
(9, '自然主义的烘焙吃货', 'http://127.0.0.1:3000/img/meitu/meitu9.png', 'http://127.0.0.1:3000/img/meitu/meitu2-1.png', 'http://127.0.0.1:3000/img/meitu/meitu1-1.png', 'http://127.0.0.1:3000/img/meitu/meitu1-3.png', 'http://127.0.0.1:3000/img/meitu/meitu2-4.png'),
(10, '美式乡村风强收纳厨房空间', 'http://127.0.0.1:3000/img/meitu/meitu10.png', 'http://127.0.0.1:3000/img/meitu/meitu4-1.png', 'http://127.0.0.1:3000/img/meitu/meitu4-2.png', 'http://127.0.0.1:3000/img/meitu/meitu1-3.png', 'http://127.0.0.1:3000/img/meitu/meitu1-4.png'),
(11, '欢乐摇摇椅宝贝玩耍区', 'http://127.0.0.1:3000/img/meitu/meitu11.png', 'http://127.0.0.1:3000/img/meitu/meitu2-3.png', 'http://127.0.0.1:3000/img/meitu/meitu1-2.png', 'http://127.0.0.1:3000/img/meitu/meitu3-3.png', 'http://127.0.0.1:3000/img/meitu/meitu3-4.png'),
(12, '粉色空间宝宝书桌区域', 'http://127.0.0.1:3000/img/meitu/meitu12.png', 'http://127.0.0.1:3000/img/meitu/meitu1-1.png', 'http://127.0.0.1:3000/img/meitu/meitu2-2.png', 'http://127.0.0.1:3000/img/meitu/meitu2-4.png', 'http://127.0.0.1:3000/img/meitu/meitu4-4.png');

CREATE TABLE icolor_design(
    id INT PRIMARY KEY AUTO_INCREMENT,
    dname VARCHAR(50),
    position VARCHAR(50),
    touxiang VARCHAR(255),
    img_url VARCHAR(255),
    img_url1 VARCHAR(255),
    title1 VARCHAR(50),
    img_url2 VARCHAR(255),
    title2 VARCHAR(50),
    img_url3 VARCHAR(255),
    title3 VARCHAR(50),
    img_url4 VARCHAR(255),
    title4 VARCHAR(50),
    img_url5 VARCHAR(255),
    title5 VARCHAR(50),
    jobtime  INT(50),
    jy VARCHAR(255)
);
INSERT INTO icolor_design VALUES(null,'方磊','上海市','http://127.0.0.1:3000/img/design/touxiang/1.jpg','http://127.0.0.1:3000/img/design/1-1.jpg','http://127.0.0.1:3000/img/design/1-1.jpg','altavia office','http://127.0.0.1:3000/img/design/1-2.jpg','Mercato piccolo','http://127.0.0.1:3000/img/design/1-3.jpg','Cube 5设计','http://127.0.0.1:3000/img/design/1-4.jpg','Hengshan Cinema','http://127.0.0.1:3000/img/design/1-5.jpg','Unico interior','10','1996– 1999 山东建筑工程学院环境艺术系 近年来多次获得诸多室内设计大奖。擅长用混搭、冲突等美学手法开发空间的可能性，以表像和内在的矛盾统一来表现设计的本质。');
INSERT INTO icolor_design VALUES(null,'方钦正','上海市','http://127.0.0.1:3000/img/design/touxiang/2.jpg','http://127.0.0.1:3000/img/design/2-1.jpg','http://127.0.0.1:3000/img/design/2-1.jpg','静安府','http://127.0.0.1:3000/img/design/2-2.jpg','新浦江城十号院','http://127.0.0.1:3000/img/design/2-3.jpg','华润外滩九里','http://127.0.0.1:3000/img/design/2-4.jpg','路劲上海派','http://127.0.0.1:3000/img/design/2-5.jpg','南京嘉华嘉誉山样板间','12','出生于台湾，先在台湾取得材料工程学位后赴英国攻读建筑设计项目，毕业于英国曼彻斯特大学建筑系。 作为纳索的创意总监，方钦正的设计秉持功能主义。2010年，不到35岁便成为上海世博会中最年轻的国家馆主持建筑师，同年在上海完成的新衡山电影院建筑群体设计也是其倾力之作。近几年参与众多外滩保护建筑改造设计项目，包含外滩5号整体改造总负责、北京东路240号四明大楼室内设计，以及花间堂杭州西溪度假酒店总规划设计。');
INSERT INTO icolor_design VALUES(null,'赖旭东','重庆','http://127.0.0.1:3000/img/design/touxiang/3.jpg','http://127.0.0.1:3000/img/design/3-1.jpg','http://127.0.0.1:3000/img/design/3-1.jpg','北京脸谱港式火锅','http://127.0.0.1:3000/img/design/3-2.jpg','重庆棕榈岛美丽厨房','http://127.0.0.1:3000/img/design/3-3.jpg','四川宏泰威图酒店','http://127.0.0.1:3000/img/design/1-4.jpg','Hengshan Cinema','http://127.0.0.1:3000/img/design/1-5.jpg','Unico interior','8','四川美术学院装潢环艺系室内设计设计专业学士,清华大学美术学院酒店设计高研班,德国包豪斯室内设计高级班,高等教育室内设计专业副教授，中国建筑学会室内设计学会注册高级室内建筑师，中国建筑学会室内设计学会会员及理事，重庆年代营创室内设计有限公司设计总监。');
INSERT INTO icolor_design VALUES(null,'何永明','广州','http://127.0.0.1:3000/img/design/touxiang/4.jpg','http://127.0.0.1:3000/img/design/4-1.jpg','http://127.0.0.1:3000/img/design/4-1.jpg','水韵','http://127.0.0.1:3000/img/design/4-2.jpg','天际线','http://127.0.0.1:3000/img/design/4-3.jpg','江门保利大都会中式  东方灵动','http://127.0.0.1:3000/img/design/4-4.jpg','保利西雅图8栋A3样板房','http://127.0.0.1:3000/img/design/4-5.jpg','保利-东端花园公寓','13','现为广州道胜室内设计有限公司设计总监，从业期间，获得众多奖项，他主要擅长设计餐饮空间、样板房、会所、展览展示、商业空间。');
INSERT INTO icolor_design VALUES(null,'彭丽','浙江','http://127.0.0.1:3000/img/design/touxiang/5.jpg','http://127.0.0.1:3000/img/design/5-1.jpg','http://127.0.0.1:3000/img/design/5-1.jpg','青花.外滩印象','http://127.0.0.1:3000/img/design/5-2.jpg','静·境实景图','http://127.0.0.1:3000/img/design/5-3.png','简约豪宅','http://127.0.0.1:3000/img/design/2-4.jpg','路劲上海派','http://127.0.0.1:3000/img/design/2-5.jpg','南京嘉华嘉誉山样板间','12','现任温州YOO佑空间设计设计总监');
INSERT INTO icolor_design VALUES(null,'姜维','上海市','http://127.0.0.1:3000/img/design/touxiang/1.jpg','http://127.0.0.1:3000/img/design/1-1.jpg','http://127.0.0.1:3000/img/design/1-1.jpg','altavia office','http://127.0.0.1:3000/img/design/1-2.jpg','Mercato piccolo','http://127.0.0.1:3000/img/design/1-3.jpg','Cube 5设计','http://127.0.0.1:3000/img/design/1-4.jpg','Hengshan Cinema','http://127.0.0.1:3000/img/design/1-5.jpg','Unico interior','10','1996– 1999 山东建筑工程学院环境艺术系 近年来多次获得诸多室内设计大奖。擅长用混搭、冲突等美学手法开发空间的可能性，以表像和内在的矛盾统一来表现设计的本质。');
INSERT INTO icolor_design VALUES(null,'刘邦','上海市','http://127.0.0.1:3000/img/design/touxiang/2.jpg','http://127.0.0.1:3000/img/design/2-1.jpg','http://127.0.0.1:3000/img/design/2-1.jpg','静安府','http://127.0.0.1:3000/img/design/2-2.jpg','新浦江城十号院','http://127.0.0.1:3000/img/design/2-3.jpg','华润外滩九里','http://127.0.0.1:3000/img/design/2-4.jpg','路劲上海派','http://127.0.0.1:3000/img/design/2-5.jpg','南京嘉华嘉誉山样板间','12','出生于台湾，先在台湾取得材料工程学位后赴英国攻读建筑设计项目，毕业于英国曼彻斯特大学建筑系。 作为纳索的创意总监，方钦正的设计秉持功能主义。2010年，不到35岁便成为上海世博会中最年轻的国家馆主持建筑师，同年在上海完成的新衡山电影院建筑群体设计也是其倾力之作。近几年参与众多外滩保护建筑改造设计项目，包含外滩5号整体改造总负责、北京东路240号四明大楼室内设计，以及花间堂杭州西溪度假酒店总规划设计。');
INSERT INTO icolor_design VALUES(null,'韩信','重庆','http://127.0.0.1:3000/img/design/touxiang/3.jpg','http://127.0.0.1:3000/img/design/3-1.jpg','http://127.0.0.1:3000/img/design/3-1.jpg','北京脸谱港式火锅','http://127.0.0.1:3000/img/design/3-2.jpg','重庆棕榈岛美丽厨房','http://127.0.0.1:3000/img/design/3-3.jpg','四川宏泰威图酒店','http://127.0.0.1:3000/img/design/1-4.jpg','Hengshan Cinema','http://127.0.0.1:3000/img/design/1-5.jpg','Unico interior','8','四川美术学院装潢环艺系室内设计设计专业学士,清华大学美术学院酒店设计高研班,德国包豪斯室内设计高级班,高等教育室内设计专业副教授，中国建筑学会室内设计学会注册高级室内建筑师，中国建筑学会室内设计学会会员及理事，重庆年代营创室内设计有限公司设计总监。');
INSERT INTO icolor_design VALUES(null,'范蠡','广州','http://127.0.0.1:3000/img/design/touxiang/4.jpg','http://127.0.0.1:3000/img/design/4-1.jpg','http://127.0.0.1:3000/img/design/4-1.jpg','水韵','http://127.0.0.1:3000/img/design/4-2.jpg','天际线','http://127.0.0.1:3000/img/design/4-3.jpg','江门保利大都会中式  东方灵动','http://127.0.0.1:3000/img/design/4-4.jpg','保利西雅图8栋A3样板房','http://127.0.0.1:3000/img/design/4-5.jpg','保利-东端花园公寓','13','现为广州道胜室内设计有限公司设计总监，从业期间，获得众多奖项，他主要擅长设计餐饮空间、样板房、会所、展览展示、商业空间。');
INSERT INTO icolor_design VALUES(null,'西施','浙江','http://127.0.0.1:3000/img/design/touxiang/5.jpg','http://127.0.0.1:3000/img/design/5-1.jpg','http://127.0.0.1:3000/img/design/5-1.jpg','青花.外滩印象','http://127.0.0.1:3000/img/design/5-2.jpg','静·境实景图','http://127.0.0.1:3000/img/design/5-3.png','简约豪宅','http://127.0.0.1:3000/img/design/2-4.jpg','路劲上海派','http://127.0.0.1:3000/img/design/2-5.jpg','南京嘉华嘉誉山样板间','12','现任温州YOO佑空间设计设计总监');

