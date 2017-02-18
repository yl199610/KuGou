create user kugou identified by a
grant resource,connect to kugou
--用户表(改)
create table kgUser(
       kgUserId Integer primary key,
       kgUserName varchar2(50) not null,
       kgUserPwd varchar2(50) default '1234',
       kgUserEmail varchar2(50),        		    --邮箱
       kgUserSex varchar2(50),         			    --性别
       kgUserBirthday varchar2(80),     		   --生日
       kgUserNote varchar2(400),                   --个人简介
       kgUserPic varchar2(200),                    --上传图片字段（可以容许为空）
       kgUserState Integer default 0,             --代表用户的状态(增加删除用户只需要改状态)0表示在线状态
       kgUserSong varchar2(20) default '不收藏',   --是否收藏歌曲
       kgUserNext varchar2(100) default 1,    		 --预留字段
       kgUserSecond varchar2(100)				   --预留字段二
);

create sequence seq_kgUserId start with 500;
drop sequence seq_kgUserId;
select * from kgUser;
drop table kgUser;
insert into kgUser values(seq_kgUserId.nextval,'a','a','18473437551@163.com',
'男','1995-06-19','喜欢歌曲','images/1.jpg',0,'不收藏',default,'预留字段二');


--歌曲表 (改)
create table kuSong(                			   --根据歌名来查询
       kuSongId Integer primary key,     
       kuSongName varchar2(60) not null,  		 --歌名
       kuSongImg varchar2(400),                   --歌曲时长
       kuSongWords varchar2(3600),                --歌词路径
       kuSongAddress varchar2(20),                 --歌曲路径
       kuSongSongtime varchar2(20),                --歌曲时间--对应的歌手时间
	   kuSongYear varchar2(20) not null,         --歌曲年代
       kuSongNext varchar2(100) default 1,     --预留字段
       kuSongSecond varchar2(100)			    --预留字段二
);
select * from kuSong;
drop table kuSong;
create sequence seq_kuSong start with 1000;
drop sequence seq_kuSong;
insert into kuSong values(seq_kuSong.nextval,'同学','4:12','music/1.mp3','music/1.lrc','1995','90',default,'二');
delete kuSong;
--收藏表(改)
create table kgSave(
       kgSaveId Integer primary key,
       kuserSaveId references kgUser(kgUserId),   --用户id
       kgSaveSid Integer,                          --歌曲id(通过歌曲查询)
       kgSavenext varchar2(100) default 1,       --预留字段
       kgSavesecond varchar2(100)			      --预留字段二
);
create sequence seq_kgSaveId start with 1000;
drop sequence seq_kgSaveId;
insert into kgSave values(seq_kgSaveId.nextval,500,1000,1,1);
drop table kgSave;
select * from kgSave;

--管理员表(改)
create table kgAdmin(
       kgAdminId Integer primary key,
       kgAdminName varchar2(50) not null,
       kgAdminPwd varchar2(50) default 'a',
       kgAdminState Integer default 0,                 --代表用户的状态(增加删除用户只需要改状态)
       kgAdminNext varchar2(100) default 1,     --预留字段
       kgAdminSecond varchar2(100) default 1    --预留字段二
);
create sequence seq_kgAdmin start with 1;
insert into kgAdmin values(seq_kgAdmin.nextval,'admin','admin',0,default,default);
drop table kgAdmin;
select * from kgAdmin;
drop sequence seq_kgAdmin;

--歌手表(改)
create table kuSinger(
       kuSingerId Integer primary key,
       kuSingerName varchar2(50) not null,
       kuSingerSex varchar2(20),                       --性别
       kuSingerImg varchar2(400),		             --歌手图片
       kuSingerCode varchar2(10),		             --助记码
       kuSingerSingerstate Integer default 0,          --代表用户的状态(增加删除用户只需要改状态)  
       kuSingerSingernext varchar2(100) default 1,  --预留字段
       kuSingerSingersecond varchar2(100) default 1 --预留字段二
);
drop table kuSinger;
select * from kuSinger;
delete from kuSinger where kuSingerId=10000
drop sequence seq_singer;
create sequence seq_singer start with 10000;
insert into kuSinger values(seq_singer.nextval,'黑豹','男','images/2.jpg','H',0,default,default);

update kuSinger set kuSingerName='hehehheh',kuSingerSex='男',kuSingerImg='images/2.jpg',
		kuSingerCode='H',kuSingerSingerstate=0,kuSingerSingernext='',kuSingerSingersecond=''
		where kuSingerId=3335;
		

-- 歌曲风格(改)
create table kuSongStyle(                     
       kuSongStyleId Integer primary key,
       kuSongStyleName varchar2(20) not null,		  --歌曲风格类型
       kuSongStylenext varchar2(100) default 1,    --预留字段
       kuSongStylesecond varchar2(100) default 1   --预留字段二
);
create sequence seq_kuSongStyle start with 100;
insert into kuSongStyle values(seq_kuSongStyle.nextval,'纯音乐',default,default);
drop table kuSongStyle;
select * from kuSongStyle;
drop sequence seq_kuSongStyle;

-- 详细表(改)
create table kuSongDetail(
       kuSongDetailId Integer primary key,                      
       ksongsingId references kuSinger(kuSingerId),           --歌手id
       kudetailsongId references kuSong(kuSongId),            --歌曲id
       kudetailstyleId references kuSongStyle(kuSongStyleId), --风格id
       songplay Integer default 0,                      			--歌曲播放次数/应该对应相应歌手时候的次数
       statue Integer default 0,                        			--0  收藏   查看歌曲
       address varchar(20),                          			--下载歌曲的地址
       kusingstatus Integer,                            			--状态  和上面的歌曲相同  歌曲的播放和不播放
       detailtime varchar(20),                     			 	--固定的歌发布时间
       kunext varchar2(100) default 1,           			--预留字段
       kusecond varchar2(100) default 1          			--预留字段二
);
create sequence seq_kuSongDetail start with 10000;
insert into kuSongDetail values(seq_kuSongDetail.nextval,10000,1000,100,0,1,'music/1.mp3',1,1999-06-19,default,default);
drop sequence seq_kuSongDetail;
select * from kuSongDetail;
drop table kuSongDetail;

--歌手的国籍   首页 和歌手

--评论表
commit;
