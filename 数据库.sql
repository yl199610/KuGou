create user kugou identified by a
grant resource,connect to kugou
--用户表
create table kgUser(
       kgUser_id int primary key,
       kgUser_name varchar2(50) not null,
       kgUser_pwd varchar2(50) default '1234',
       kgUser_email varchar2(50) not null,         --邮箱
       kgUser_sex varchar2(50) not null,           --性别
       kgUser_birthday varchar2(80) not null,      --生日
       kgUser_note varchar2(400) not null,         --个人简介
       kgUser_pic varchar(200),                    --上传图片字段（可以容许为空）
       kgUser_state int default 0,                 --代表用户的状态(增加删除用户只需要改状态)0表示在线状态
       kgUser_song varchar2(20) default '不收藏'   --是否收藏歌曲
       kgUser_next varchar2(100) default null,     --预留字段
       kgUser_second varchar2(100) default null,   --预留字段二
);
drop table kgUser;
select * from kgUser;
--收藏表
create table kgSave(
       kgSave_id int primary key,
       kuserSave_id references kgUser(kgUser_id),   --用户id
       kgSave_Sid int,                              --歌曲id(通过歌曲查询)
       kgSavenext varchar2(100) default null,       --预留字段
       kgSavesecond varchar2(100) default null      --预留字段二
);
drop table kgUser;
select * from kgUser;
--管理员表
create table kgAdmin(
       kgAdmin_id int primary key,
       kgAdmin_name varchar2(50) not null,
       kgAdmin_pwd varchar2(50) default 'a',
       kgAdmin_state int default 0,                 --代表用户的状态(增加删除用户只需要改状态)
       kgAdmin_next varchar2(100) default null,     --预留字段
       kgAdmin_second varchar2(100) default null    --预留字段二
);
drop table kgAdmin;
select * from kgAdmin;
--歌手表
create table kuSinger(
       kuSinger_id int primary key,
       kuSinger_name varchar2(50) not null,
       kuSinger_sex varchar2(20),                       --性别
       kuSinger_img varchar2(400) not null,             --歌手图片
       kuSinger_code varchar2(10) not null,             --助记码
       kuSinger_singerstate int default 0,              --代表用户的状态(增加删除用户只需要改状态)  
       kuSinger_singernext varchar2(100) default null,  --预留字段
       kuSinger_singersecond varchar2(100) default null --预留字段二
);
--歌手的国籍   首页 和歌手
drop table kuSinger;
select * from kuSinger;

--歌曲表 
create table kuSong(                			   --根据歌名来查询
       kuSong_id int primary key,     
       kuSong_name varchar2(60) not null,          --歌名
       kuSong_img varchar2(400),                   --歌曲时长
       kuSong_words varchar2(3600),                --歌词路径
       kuSong_address varchar(20),                 --歌曲路径
       kuSong_songtime varchar(20),                --歌曲时间--对应的歌手时间
	   --kuSong_year varchar2(20) not null,        --歌曲年代
       kuSong_next varchar2(100) default null,     --预留字段
       kuSong_second varchar2(100) default null    --预留字段二
);
drop table kuSong;
select * from kuSong;
-- 歌曲风格
create table kuSongStyle(                     
       kuSongStyle_id int primary key,
       kuSongStyle_name varchar2(20) not null,		  --歌曲风格类型
       kuSongStylenext varchar2(100) default null,    --预留字段
       kuSongStylesecond varchar2(100) default null   --预留字段二
);
drop table kuSongStyle;
select * from kuSongStyle;
-- 详细表
create table kuSongDetail(
       kuSongDetail_id int primary key,                      
       ksongsing_id references kuSinger(kuSinger_id),           --歌手id
       kudetailsong_id references kuSong(kuSong_id),            --歌曲id
       kudetailstyle_id references kuSongStyle(kuSongStyle_id), --风格id
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
