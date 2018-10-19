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
INSERT INTO XS(XH,XM,ZYM,XB,CSSJ,ZXF) VALUES('20161101','����','�����','��',TO_DATE('19960210','YYYYMMDD'),50);
INSERT INTO XS(XH,XM,ZYM,XB,CSSJ,ZXF) VALUES('20161102','��ƽ','�����','Ů',TO_DATE('19960902','YYYYMMDD'),38);
INSERT INTO XS(XH,XM,ZYM,XB,CSSJ,ZXF) VALUES('20161103','����','�����','Ů',TO_DATE('19951006','YYYYMMDD'),40);
INSERT INTO XS(XH,XM,ZYM,XB,CSSJ,ZXF) VALUES('20161104','Τ��ƽ','�����','��',TO_DATE('19960826','YYYYMMDD'),40);
INSERT INTO XS(XH,XM,ZYM,XB,CSSJ,ZXF,BZ) VALUES('20161105','�����','�����','��',TO_DATE('19951230','YYYYMMDD'),36,'�����Ų�����');
INSERT INTO XS(XH,XM,ZYM,XB,CSSJ,ZXF) VALUES('20161106','���','�����','��',TO_DATE('19961120','YYYYMMDD'),40);
INSERT INTO XS(XH,XM,ZYM,XB,CSSJ,ZXF) VALUES('20161107','����','�����','��',TO_DATE('19960501','YYYYMMDD'),40);
INSERT INTO XS(XH,XM,ZYM,XB,CSSJ,ZXF,BZ) VALUES('20161108','��һ��','�����','��',TO_DATE('19950805','YYYYMMDD'),42,'����ǰ����һ�ſ�');
INSERT INTO XS(XH,XM,ZYM,XB,CSSJ,ZXF) VALUES('20161109','��ǿ��','�����','��',TO_DATE('19940811','YYYYMMDD'),40);             
INSERT INTO XS(XH,XM,ZYM,XB,CSSJ,ZXF) VALUES('20161110','��ε','�����','Ů',TO_DATE('19970722','YYYYMMDD'),40);
INSERT INTO XS(XH,XM,ZYM,XB,CSSJ,ZXF) VALUES('20161111','����','�����','Ů',TO_DATE('19960318 ','YYYYMMDD'),40);
INSERT INTO XS(XH,XM,ZYM,XB,CSSJ,ZXF) VALUES('20161112','������','�����','Ů',TO_DATE('19940130','YYYYMMDD'),40);
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
INSERT INTO kc(kch,kcm,kkxq,xs,xf) VALUES('101','���������',1,85,5);
INSERT INTO kc(kch,kcm,kkxq,xs,xf) VALUES('102','�����������',2,68,5);
INSERT INTO kc(kch,kcm,kkxq,xs,xf) VALUES('206','��ɢ��ѧ',4,68,4);
INSERT INTO kc(kch,kcm,kkxq,xs,xf) VALUES('208','���ݽṹ',5,68,4);
INSERT INTO kc(kch,kcm,kkxq,xs,xf) VALUES('209','����ϵͳ',6,68,4);
INSERT INTO kc(kch,kcm,kkxq,xs,xf) VALUES('210','�����ԭ��',7,85,5);
INSERT INTO kc(kch,kcm,kkxq,xs,xf) VALUES('212','���ݿ�ԭ��',7,68,4);
INSERT INTO kc(kch,kcm,kkxq,xs,xf) VALUES('301','���������',7,51,3);
INSERT INTO kc(kch,kcm,kkxq,xs,xf) VALUES('302','�������',7,51,3);
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
