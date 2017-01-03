create user kugou identified by a
grant resource,connect to kugou
--用户表
create table kgUser(
       kgUserId Integer primary key,
       kgUserName varchar2(50) not null,
       kgUserPwd varchar2(50) default '1234',
       kgUserEmail varchar2(50) not null,         --邮箱
       kgUserSex varchar2(50) not null,           --性别
       kgUserBirthday varchar2(80) not null,      --生日
       kgUserNote varchar2(400) not null,         --个人简介
       kgUserPic varchar2(200),                    --上传图片字段（可以容许为空）
       kgUserState Integer default 0,                 --代表用户的状态(增加删除用户只需要改状态)0表示在线状态
       kgUserSong varchar2(20) default '不收藏',   --是否收藏歌曲
       kgUserNext varchar2(100) default null,     --预留字段
       kgUserSecond varchar2(100) default null   --预留字段二
);

create sequence seq_kgUserId start with 10000;
drop sequence seq_kgUserId;

select * from kgUser;

insert into kgUser values(seq_kgUserId.nextval,'asd',1234,'12312@qq.com','男',19950619,'asdasd','asd',0,1,3,2);

drop table kgUser;
select * from kgUser;
--收藏表
create table kgSave(
       kgSaveId Integer primary key,
       kuserSaveId references kgUser(kgUserId),   --用户id
       kgSaveSid Integer,                              --歌曲id(通过歌曲查询)
       kgSavenext varchar2(100) default null,       --预留字段
       kgSavesecond varchar2(100) default null      --预留字段二
);

create sequence seq_kgSaveId start with 10000;

insert into kgSave values(seq_kgSaveId.nextval,10000,10000,1,1);

drop table kgSave;
select * from kgUser;
--管理员表
create table kgAdmin(
       kgAdminId Integer primary key,
       kgAdminName varchar2(50) not null,
       kgAdminPwd varchar2(50) default 'a',
       kgAdminState Integer default 0,                 --代表用户的状态(增加删除用户只需要改状态)
       kgAdminNext varchar2(100) default null,     --预留字段
       kgAdminSecond varchar2(100) default null    --预留字段二
);
create sequence seq_kgAdmin start with 10000;

insert into kgAdmin values(seq_kgAdmin.nextval,'admin','admin',1,'asd','asd');

drop table kgAdmin;
select * from kgAdmin;
--歌手表
create table kuSinger(
       kuSingerId Integer primary key,
       kuSingerName varchar2(50) not null,
       kuSingerSex varchar2(20),                       --性别
       kuSingerImg varchar2(400) not null,             --歌手图片
       kuSingerCode varchar2(10) not null,             --助记码
       kuSingerSingerstate Integer default 0,              --代表用户的状态(增加删除用户只需要改状态)  
       kuSingerSingernext varchar2(100) default null,  --预留字段
       kuSingerSingersecond varchar2(100) default null --预留字段二
);
--歌手的国籍   首页 和歌手

create sequence seq_kuSinger start with 10000;
insert into kuSinger values(seq_kuSinger.nextval,'呵呵','男','wqe','hh',0,1,1);

drop table kuSinger;
select * from kuSinger;

--歌曲表 
create table kuSong(                			   --根据歌名来查询
       kuSongId Integer primary key,     
       kuSongName varchar2(60) not null,          --歌名
       kuSongImg varchar2(400),                   --歌曲时长
       kuSongWords varchar2(3600),                --歌词路径
       kuSongAddress varchar2(20),                 --歌曲路径
       kuSongSongtime varchar2(20),                --歌曲时间--对应的歌手时间
	   kuSong_year varchar2(20) not null,         --歌曲年代
       kuSongNext varchar2(100) default null,     --预留字段
       kuSongSecond varchar2(100) default null    --预留字段二
);

create sequence seq_kuSong start with 10000;
insert into kuSong values(seq_kuSong.nextval,'xixi','4.12','wqe','hh',1995,'80',1,1);

drop table kuSong;
select * from kuSong;
-- 歌曲风格
create table kuSongStyle(                     
       kuSongStyleId Integer primary key,
       kuSongStyleName varchar2(20) not null,		  --歌曲风格类型
       kuSongStylenext varchar2(100) default null,    --预留字段
       kuSongStylesecond varchar2(100) default null   --预留字段二
);
create sequence seq_kuSongStyle start with 10000;
insert into kuSongStyle values(seq_kuSongStyle.nextval,'摇滚',1,1);


drop table kuSongStyle;
select * from kuSongStyle;
-- 详细表
create table kuSongDetail(
       kuSongDetailId Integer primary key,                      
       ksongsingId references kuSinger(kuSingerId),           --歌手id
       kudetailsongId references kuSong(kuSongId),            --歌曲id
       kudetailstyleId references kuSongStyle(kuSongStyleId), --风格id
       songplay Integer default 0,                      			--歌曲播放次数/应该对应相应歌手时候的次数
       statue Integer default 0,                        			--0  收藏   查看歌曲
       address varchar2(20),                          			--下载歌曲的地址
       kusingstatus Integer,                            			--状态  和上面的歌曲相同  歌曲的播放和不播放
       detailtime varchar2(20),                     			 	--固定的歌发布时间
       kunext varchar2(100) default null,           			--预留字段(评论)
       kusecond varchar2(100) default null          			--预留字段二
);
create sequence seq_kuSongDetail start with 10000;

insert into kuSongDetail values(seq_kuSongDetail.nextval,10000,10000,10000,1,0,'www.baidu.com',1,199619,1,1);

drop table kuSongDetail;
select * from kuSongDetail;

--评论表

commit;
