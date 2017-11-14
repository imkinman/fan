SET NAMES UTF8;
DROP DATABASE IF EXISTS milan520;
CREATE DATABASE milan520 CHARSET=UTF8;
USE milan520;

/*1、广告轮播表*/
CREATE TABLE banner_img(
    bid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(32)
);
INSERT INTO banner_img VALUES(null,"images/banner1.jpg");
INSERT INTO banner_img VALUES(null,"images/banner2.jpg");
INSERT INTO banner_img VALUES(null,"images/banner3.jpg");
INSERT INTO banner_img VALUES(null,"images/banner4.jpg");
INSERT INTO banner_img VALUES(null,"images/banner5.jpg");
INSERT INTO banner_img VALUES(null,"images/banner6.jpg");
INSERT INTO banner_img VALUES(null,"images/banner7.jpg");
INSERT INTO banner_img VALUES(null,"images/banner8.jpg");

/*2、导航条表*/
CREATE TABLE navbar(
    nid INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(5),
    href VARCHAR(64)

);
INSERT INTO navbar VALUES
(null,"简介","02_intro.html"),
(null,"客照","03_special_photo.html"),
(null,"优惠","04_channel.html"),
(null,"评价","#"),
(null,"凤凰湾基地","#"),
(null,"仙女湖基地","#"),
(null,"鼓浪屿基地","#"),
(null,"三亚湾基地","#"),
(null,"婺源基地","#");

/*3、城市分类表*/
CREATE TABLE city_class(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(5)
);
INSERT INTO city_class VALUES
(null,"厦门店"),
(null,"三亚店"),
(null,"上饶店"),
(null,"南昌店"),
(null,"湘潭店"),
(null,"萍乡店"),
(null,"吉安店"),
(null,"新余店");

/*4、品牌介绍*/
CREATE TABLE show_brand(
    sid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(32)
);
INSERT INTO show_brand VALUES
(null,"images/pin1.jpg"),
(null,"images/pin2.jpg"),
(null,"images/pin3.jpg"),
(null,"images/pin4.jpg"),
(null,"images/pin5.jpg"),
(null,"images/pin6.jpg");

/*5、展示分类*/
CREATE TABLE show_class(
    sid INT PRIMARY KEY AUTO_INCREMENT,
    sname VARCHAR(16)
);
INSERT INTO show_class VALUES
(1,"凤凰湾基地样片欣赏"),
(2,"鼓浪屿基地样片欣赏"),
(3,"三亚样片欣赏");

/*6、图片展示*/
CREATE TABLE show_img(
    iid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(32),
    url VARCHAR(64),
    description VARCHAR(10),
    shid INT,

    FOREIGN KEY(shid) REFERENCES show_class(sid)
);
INSERT INTO show_img VALUES
(null,"images/scen_a1.jpg","#","一世情深",1),
(null,"images/scen_a2.jpg","#","爱的印证（新余）",1),
(null,"images/scen_a3.jpg","#","低调奢华（新余）",1),
(null,"images/scen_a4.jpg","#","让心去旅行（新余）",1),
(null,"images/scen_b1.jpg","#","LIFE MOVIE",2),
(null,"images/scen_b2.jpg","#","悠悠古宅",2),
(null,"images/scen_b3.jpg","#","边野之旅",2),
(null,"images/scen_b4.jpg","#","天长地久",2),
(null,"images/scen_c1.jpg","#","醉美夕阳",3),
(null,"images/scen_c2.jpg","#","朱砂倩影",3),
(null,"images/scen_c3.jpg","#","远处灯塔",3),
(null,"images/scen_c4.jpg","#","相拥时光",3);
/*客照欣赏*/
CREATE TABLE photo_show(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(64),
    href VARCHAR(64),
    stitle VARCHAR(16)
 );
 INSERT INTO photo_show VALUES
 (null,"images/moths01.jpg","#","09月第二季"),
 (null,"images/moths02.jpg","#","09月第一季"),
 (null,"images/moths03.jpg","#","08月第四季"),
 (null,"images/moths04.jpg","#","08月第三季"),
 (null,"images/moths05.jpg","#","08月第二季"),
 (null,"images/moths06.jpg","#","08月第一季"),
 (null,"images/moths07.jpg","#","07月第四季"),
 (null,"images/moths08.jpg","#","07月第三季");
 /*客照子页*/
 CREATE TABLE month_show(
    mid INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(24),
    img1 VARCHAR(64),
    img2 VARCHAR(64),
    img3 VARCHAR(64),
    img4 VARCHAR(64),
    href1 VARCHAR(64),
    href2 VARCHAR(64),
    href3 VARCHAR(64),
    href4 VARCHAR(64),
    stitle1 VARCHAR(24),
    stitle2 VARCHAR(24),
    stitle3 VARCHAR(24),
    stitle4 VARCHAR(24)
 );
 INSERT INTO month_show VALUES
 (null,"十一月客照",
  "images/content_box01.jpg","","","",
  "#","#","#","#",
  "11月第一季","","",""
 ),
 (null,"十月客照",
 "images/content_box02.jpg","","","",
 "#","#","#","#",
 "10月第一季","","",""
 ),
 (null,"九月客照",
 "images/content_box03.jpg","images/content_box04.jpg","images/content_box05.jpg","images/content_box06.jpg",
 "#","#","#","#",
 "10月第四季","10月第三季","10月第二季","10月第一季"
 ),
 (null,"八月客照",
 "images/content_box07.jpg","images/content_box08.jpg","images/content_box09.jpg","images/content_box10.jpg",
 "#","#","#","#",
 "08月第四季","08月第三季","08月第二季","08月第一季"
 ),
 (null,"七月客照",
 "images/content_box11.jpg","images/content_box12.jpg","images/content_box13.jpg","images/content_box14.jpg",
 "#","#","#","#",
 "07月第四季","07月第三季","07月第二季","07月第一季"
 ),
 (null,"六月客照",
 "images/content_box15.jpg","images/content_box16.jpg","images/content_box17.jpg","images/content_box18.jpg",
 "#","#","#","#",
 "06月第四季","06月第三季","06月第二季","06月第一季"
 ),
 (null,"五月客照",
 "images/content_box19.jpg","images/content_box20.jpg","images/content_box21.jpg","images/content_box22.jpg",
 "#","#","#","#",
 "05月第四季","05月第三季","05月第二季","05月第一季"
 ),
 (null,"四月客照",
 "images/content_box23.jpg","images/content_box24.jpg","images/content_box25.jpg","images/content_box26.jpg",
 "#","#","#","#",
 "04月第四季","04月第三季","04月第二季","04月第一季"
 ),
 (null,"三月客照",
 "images/content_box27.jpg","images/content_box28.jpg","images/content_box29.jpg","images/content_box30.jpg",
 "#","#","#","#",
 "03月第四季","03月第三季","03月第二季","03月第一季"
 ),
 (null,"二月客照",
 "images/content_box31.jpg","images/content_box32.jpg","images/content_box33.jpg","images/content_box34.jpg",
 "#","#","#","#",
 "02月第四季","02月第三季","02月第二季","02月第一季"
 ),
 (null,"一月客照",
 "images/content_box35.jpg","images/content_box36.jpg","images/content_box37.jpg","images/content_box38.jpg",
 "#","#","#","#",
 "01月第四季","01月第三季","01月第二季","01月第一季"
 );
 /*优惠*/
 CREATE TABLE fla(
    fid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(64)
 );
 INSERT INTO fla VALUES
 (null,"images/fla01.jpg"),
 (null,"images/fla02.jpg"),
 (null,"images/fla03.jpg"),
 (null,"images/fla04.jpg"),
 (null,"images/fla05.jpg"),
 (null,"images/fla06.jpg"),
 (null,"images/fla07.jpg"),
 (null,"images/fla08.jpg"),
 (null,"images/fla09.jpg"),
 (null,"images/fla10.jpg"),
 (null,"images/fla11.jpg"),
 (null,"images/fla12.jpg"),
 (null,"images/fla13.jpg"),
 (null,"images/fla14.jpg"),
 (null,"images/fla15.jpg"),
 (null,"images/fla16.jpg"),
 (null,"images/fla17.jpg"),
 (null,"images/fla18.jpg"),
 (null,"images/fla19.jpg"),
 (null,"images/fla20.jpg"),
 (null,"images/fla21.jpg"),
 (null,"images/fla22.jpg");