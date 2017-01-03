create user kugou identified by a
grant resource,connect to kugou
--用户表
create table kgUser(
       kgUserId int primary key,
       kgUserName varchar2(50) not null,
       kgUserPwd varchar2(50) default '1234',
       kgUserEmail varchar2(50) not null,         --邮箱
       kgUserSex varchar2(50) not null,           --性别
       kgUserBirthday varchar2(80) not null,      --生日
       kgUserNote varchar2(400) not null,         --个人简介
       kgUserPic varchar(200),                    --上传图片字段（可以容许为空）
       kgUserState int default 0,                 --代表用户的状态(增加删除用户只需要改状态)0表示在线状态
       kgUserSong varchar2(20) default '不收藏'   --是否收藏歌曲
       kgUserNext varchar2(100) default null,     --预留字段
       kgUserSecond varchar2(100) default null,   --预留字段二
);
drop table kgUser;
select * from kgUser;
--收藏表
create table kgSave(
       kgSaveId int primary key,
       kuserSaveId references kgUser(kgUser_id),   --用户id
       kgSaveSid int,                              --歌曲id(通过歌曲查询)
       kgSavenext varchar2(100) default null,       --预留字段
       kgSavesecond varchar2(100) default null      --预留字段二
);
drop table kgUser;
select * from kgUser;
--管理员表
create table kgAdmin(
       kgAdminId int primary key,
       kgAdminName varchar2(50) not null,
       kgAdminPwd varchar2(50) default 'a',
       kgAdminState int default 0,                 --代表用户的状态(增加删除用户只需要改状态)
       kgAdminNext varchar2(100) default null,     --预留字段
       kgAdminSecond varchar2(100) default null    --预留字段二
);
drop table kgAdmin;
select * from kgAdmin;
--歌手表
create table kuSinger(
       kuSingerId int primary key,
       kuSingerName varchar2(50) not null,
       kuSingerSex varchar2(20),                       --性别
       kuSingerImg varchar2(400) not null,             --歌手图片
       kuSingerCode varchar2(10) not null,             --助记码
       kuSingerSingerstate int default 0,              --代表用户的状态(增加删除用户只需要改状态)  
       kuSingerSingernext varchar2(100) default null,  --预留字段
       kuSingerSingersecond varchar2(100) default null --预留字段二
);
--歌手的国籍   首页 和歌手
drop table kuSinger;
select * from kuSinger;

--歌曲表 
create table kuSong(                			   --根据歌名来查询
       kuSongId int primary key,     
       kuSongName varchar2(60) not null,          --歌名
       kuSongImg varchar2(400),                   --歌曲时长
       kuSongWords varchar2(3600),                --歌词路径
       kuSongAddress varchar(20),                 --歌曲路径
       kuSongSongtime varchar(20),                --歌曲时间--对应的歌手时间
	   --kuSong_year varchar2(20) not null,        --歌曲年代
       kuSongNext varchar2(100) default null,     --预留字段
       kuSongSecond varchar2(100) default null    --预留字段二
);
drop table kuSong;
select * from kuSong;
-- 歌曲风格
create table kuSongStyle(                     
       kuSongStyleId int primary key,
       kuSongStyleName varchar2(20) not null,		  --歌曲风格类型
       kuSongStylenext varchar2(100) default null,    --预留字段
       kuSongStylesecond varchar2(100) default null   --预留字段二
);
drop table kuSongStyle;
select * from kuSongStyle;
-- 详细表
create table kuSongDetail(
       kuSongDetailId int primary key,                      
       ksongsingId references kuSinger(kuSinger_id),           --歌手id
       kudetailsongId references kuSong(kuSong_id),            --歌曲id
       kudetailstyleId references kuSongStyle(kuSongStyle_id), --风格id
       songplay int default 0,                      			--歌曲播放次数/应该对应相应歌手时候的次数
       statue int default 0,                        			--0  收藏   查看歌曲
       address varchar(20),                          			--下载歌曲的地址
       kusingstatus int,                            			--状态  和上面的歌曲相同  歌曲的播放和不播放
       detailtime varchar(20),                     			 	--固定的歌发布时间
       kunext varchar2(100) default null,           			--预留字段(评论)
       kusecond varchar2(100) default null          			--预留字段二
);
drop table kuSongDetail;
select * from kuSongDetail;

--评论表

commit;
