--DROP TABLE xs;
CREATE TABLE xs
  (XH CHAR(8),
   XM VARCHAR2(8),
   ZYM  CHAR(10),
   XB varchar2(2),
   CSSJ DATE ,
   ZXF NUMBER(2),
   BZ  VARCHAR2(200), 
   CONSTRAINT "PK_XH" PRIMARY KEY("XH"));
INSERT INTO XS(XH,XM,ZYM,XB,CSSJ,ZXF) VALUES('20161101','王林','计算机','男',TO_DATE('19960210','YYYYMMDD'),50);
INSERT INTO XS(XH,XM,ZYM,XB,CSSJ,ZXF) VALUES('20161102','王平','计算机','女',TO_DATE('19960902','YYYYMMDD'),38);
INSERT INTO XS(XH,XM,ZYM,XB,CSSJ,ZXF) VALUES('20161103','王燕','计算机','女',TO_DATE('19951006','YYYYMMDD'),40);
INSERT INTO XS(XH,XM,ZYM,XB,CSSJ,ZXF) VALUES('20161104','韦严平','计算机','男',TO_DATE('19960826','YYYYMMDD'),40);
INSERT INTO XS(XH,XM,ZYM,XB,CSSJ,ZXF,BZ) VALUES('20161105','吴庆红','计算机','男',TO_DATE('19951230','YYYYMMDD'),36,'有两门不及格');
INSERT INTO XS(XH,XM,ZYM,XB,CSSJ,ZXF) VALUES('20161106','李方方','计算机','男',TO_DATE('19961120','YYYYMMDD'),40);
INSERT INTO XS(XH,XM,ZYM,XB,CSSJ,ZXF) VALUES('20161107','李明','计算机','男',TO_DATE('19960501','YYYYMMDD'),40);
INSERT INTO XS(XH,XM,ZYM,XB,CSSJ,ZXF,BZ) VALUES('20161108','林一帆','计算机','男',TO_DATE('19950805','YYYYMMDD'),42,'已提前修完一门课');
INSERT INTO XS(XH,XM,ZYM,XB,CSSJ,ZXF) VALUES('20161109','张强民','计算机','男',TO_DATE('19940811','YYYYMMDD'),40);             
INSERT INTO XS(XH,XM,ZYM,XB,CSSJ,ZXF) VALUES('20161110','张蔚','计算机','女',TO_DATE('19970722','YYYYMMDD'),40);
INSERT INTO XS(XH,XM,ZYM,XB,CSSJ,ZXF) VALUES('20161111','赵琳','计算机','女',TO_DATE('19960318 ','YYYYMMDD'),40);
INSERT INTO XS(XH,XM,ZYM,XB,CSSJ,ZXF) VALUES('20161112','罗林琳','计算机','女',TO_DATE('19940130','YYYYMMDD'),40);
--DROP TABLE kc;
CREATE TABLE kc
  (KCH CHAR(3) NOT NULL,
   KCM CHAR(16) NOT NULL,
   KKXQ NUMBER(1) NOT NULL,
   XS NUMBER(2) NOT NULL, 
   XF NUMBER(2), 
   CONSTRAINT CH_KKXQ CHECK(kkxq between 1 and 8), 
   CONSTRAINT "PK_KCH" PRIMARY KEY("KCH"))
TABLESPACE users;
INSERT INTO kc(kch,kcm,kkxq,xs,xf) VALUES('101','计算机基础',1,85,5);
INSERT INTO kc(kch,kcm,kkxq,xs,xf) VALUES('102','程序设计语言',2,68,5);
INSERT INTO kc(kch,kcm,kkxq,xs,xf) VALUES('206','离散数学',4,68,4);
INSERT INTO kc(kch,kcm,kkxq,xs,xf) VALUES('208','数据结构',5,68,4);
INSERT INTO kc(kch,kcm,kkxq,xs,xf) VALUES('209','操作系统',6,68,4);
INSERT INTO kc(kch,kcm,kkxq,xs,xf) VALUES('210','计算机原理',7,85,5);
INSERT INTO kc(kch,kcm,kkxq,xs,xf) VALUES('212','数据库原理',7,68,4);
INSERT INTO kc(kch,kcm,kkxq,xs,xf) VALUES('301','计算机网络',7,51,3);
INSERT INTO kc(kch,kcm,kkxq,xs,xf) VALUES('302','软件工程',7,51,3);
--DROP TABLE xs_kc;
CREATE TABLE xs_kc
(XH char(8) NOT NULL,
	      KCH char(6) NOT NULL,
	      CJ number(2) NULL,
	      XF number(2) NULL,  
	      CONSTRAINT "PK_XS_KC" PRIMARY KEY("XH", "KCH"));
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161101','101',80);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161101','102',78);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161101','206',76);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161102','102',78);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161102','206',78);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161103','101',62);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161103','102',70);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161103','206',81);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161104','101',90);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161104','102',84);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161104','206',65);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161106','101',65);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161106','102',71);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161106','206',80);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161107','101',78);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161107','102',80);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161107','206',68);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161108','101',85);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161108','102',64);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161108','206',87);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161109','101',66);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161109','102',83);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161109','206',70);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161110','101',95);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161110','102',90);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161110','206',89);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161111','101',91);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161111','102',70);
INSERT INTO xs_kc(xh,kch,xf) VALUES('20161111','206',76);
COMMIT;
--DROP TABLE USERS;
CREATE TABLE Users
    (UserId               Number,
    UserName              Varchar2(40),
    UserType              Number(1),
     UserPwd               Varchar2(40)
    );
INSERT INTO Users VALUES ( 1,'Admin',1,'Admin');
INSERT INTO Users VALUES ( 2,'Lee',1,'Lee');
INSERT INTO Users VALUES ( 3,'User',2,'Users');
INSERT INTO Users VALUES ( 4,'Zxh',2,'Zxh');
