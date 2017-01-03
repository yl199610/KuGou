create user kugou identified by a
grant resource,connect to kugou
--�û���
create table kgUser(
       kgUserId Integer primary key,
       kgUserName varchar2(50) not null,
       kgUserPwd varchar2(50) default '1234',
<<<<<<< HEAD
       kgUserEmail varchar2(50) not null,         --邮箱
       kgUserSex varchar2(50) not null,           --性别
       kgUserBirthday varchar2(80) not null,      --生日
       kgUserNote varchar2(400) not null,         --个人简介
       kgUserPic varchar(200),                    --上传图片字段（可以容许为空）
       kgUserState Integer default 0,                 --代表用户的状态(增加删除用户只需要改状态)0表示在线状态
       kgUserSong varchar2(20) default '不收藏'   --是否收藏歌曲
       kgUserNext varchar2(100) default null,     --预留字段
       kgUserSecond varchar2(100) default null,   --预留字段二
);

create sequence seq_kgUserId start with 10000;
drop sequence seq_kgUserId;

select * from kgUser;

insert into kgUser values(seq_kgUserId.nextval,'asd',1234,'12312@qq.com','��',19950619,'asdasd','asd',0,1,3,2);

drop table kgUser;
select * from kgUser;
<<<<<<< HEAD
create sequence seq_user start with 1;
select seq_user.nextval from dual
insert into kgUser values(seq_user.nextval,'张三','a','1620833589@qq.com','男','1992-1-1','我喜欢音乐','images/1.jpg','0',default,'','');




--管理员表
=======
--�ղر�
create table kgSave(
       kgSaveId Integer primary key,
       kuserSaveId references kgUser(kgUserId),   --�û�id
       kgSaveSid Integer,                              --����id(ͨ������ѯ)
       kgSavenext varchar2(100) default null,       --Ԥ���ֶ�
       kgSavesecond varchar2(100) default null      --Ԥ���ֶζ�
);

create sequence seq_kgSaveId start with 10000;

insert into kgSave values(seq_kgSaveId.nextval,10000,10000,1,1);

drop table kgSave;
select * from kgUser;
--����Ա��
>>>>>>> branch 'master' of git@github.com:yl199610/KuGou.git
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
<<<<<<< HEAD
create sequence seq_admin start with 2222;
insert into kgAdmin values(seq_admin.nextval,'a','a',0,'','');

--歌手表
=======
--���ֱ�
>>>>>>> branch 'master' of git@github.com:yl199610/KuGou.git
create table kuSinger(
       kuSingerId Integer primary key,
       kuSingerName varchar2(50) not null,
<<<<<<< HEAD
       kuSingerSex varchar2(20),                       --性别
       kuSingerImg varchar2(400) not null,             --歌手图片
       kuSingerCode varchar2(10) not null,             --助记码
       kuSingerSingerstate Integer default 0,          --代表用户的状态(增加删除用户只需要改状态)  
       kuSingerSingernext varchar2(100) default null,  --预留字段
       kuSingerSingersecond varchar2(100) default null --预留字段二
=======
       kuSingerSex varchar2(20),                       --�Ա�
       kuSingerImg varchar2(400) not null,             --����ͼƬ
       kuSingerCode varchar2(10) not null,             --�����
       kuSingerSingerstate Integer default 0,              --����û���״̬(����ɾ���û�ֻ��Ҫ��״̬)  
       kuSingerSingernext varchar2(100) default null,  --Ԥ���ֶ�
       kuSingerSingersecond varchar2(100) default null --Ԥ���ֶζ�
>>>>>>> branch 'master' of git@github.com:yl199610/KuGou.git
);
--���ֵĹ�   ��ҳ �͸���

create sequence seq_kuSinger start with 10000;
insert into kuSinger values(seq_kuSinger.nextval,'�Ǻ�','��','wqe','hh',0,1,1);

drop table kuSinger;
select * from kuSinger;
create sequence seq_singer start with 3333;
insert into kgAdmin values(seq_singer.nextval,'黑豹乐队','男',0,'','');

<<<<<<< HEAD
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
=======
--����� 
create table kuSong(                			   --��ݸ�������ѯ
       kuSongId Integer primary key,     
       kuSongName varchar2(60) not null,          --����
       kuSongImg varchar2(400),                   --����ʱ��
       kuSongWords varchar2(3600),                --���·��
       kuSongAddress varchar2(20),                 --����·��
       kuSongSongtime varchar2(20),                --����ʱ��--��Ӧ�ĸ���ʱ��
	   kuSong_year varchar2(20) not null,         --�������
       kuSongNext varchar2(100) default null,     --Ԥ���ֶ�
       kuSongSecond varchar2(100) default null    --Ԥ���ֶζ�
>>>>>>> branch 'master' of git@github.com:yl199610/KuGou.git
);

create sequence seq_kuSong start with 10000;
insert into kuSong values(seq_kuSong.nextval,'xixi','4.12','wqe','hh',1995,'80',1,1);

drop table kuSong;
select * from kuSong;
<<<<<<< HEAD

--收藏表
create table kgSave(
       kgSaveId Integer primary key,
       kuserSaveId references kgUser(kgUser_id),   --用户id
       kgSaveSid Integer,                              --歌曲id(通过歌曲查询)
       kgSavenext varchar2(100) default null,       --预留字段
       kgSavesecond varchar2(100) default null      --预留字段二
);
drop table kgUser;
select * from kgUser;
create sequence seq_save start with 1111;
insert into kgSave values(seq_save.nextval,2,'a','1620833589@qq.com','男','1992-1-1','我喜欢音乐','images/1.jpg','0',default,'','');


-- 歌曲风格
=======
-- ������
>>>>>>> branch 'master' of git@github.com:yl199610/KuGou.git
create table kuSongStyle(                     
       kuSongStyleId Integer primary key,
<<<<<<< HEAD
       kuSongStyleName varchar2(20) not null,		  --歌曲风格类型
       kuSongStylenext varchar2(100) default null,    --预留字段
       kuSongStylesecond varchar2(100) default null   --预留字段二
=======
       kuSongStyleName varchar2(20) not null,		  --����������
       kuSongStylenext varchar2(100) default null,    --Ԥ���ֶ�
       kuSongStylesecond varchar2(100) default null   --Ԥ���ֶζ�
>>>>>>> branch 'master' of git@github.com:yl199610/KuGou.git
);
create sequence seq_kuSongStyle start with 10000;
insert into kuSongStyle values(seq_kuSongStyle.nextval,'ҡ��',1,1);


drop table kuSongStyle;
select * from kuSongStyle;
-- ��ϸ��
create table kuSongDetail(
       kuSongDetailId Integer primary key,                      
<<<<<<< HEAD
       ksongsingId references kuSinger(kuSinger_id),           --歌手id
       kudetailsongId references kuSong(kuSong_id),            --歌曲id
       kudetailstyleId references kuSongStyle(kuSongStyle_id), --风格id
       songplay Integer default 0,                      			--歌曲播放次数/应该对应相应歌手时候的次数
       statue Integer default 0,                        			--0  收藏   查看歌曲
       address varchar(20),                          			--下载歌曲的地址
       kusingstatus Integer,                            			--状态  和上面的歌曲相同  歌曲的播放和不播放
       detailtime varchar(20),                     			 	--固定的歌发布时间
       kunext varchar2(100) default null,           			--预留字段(评论)
       kusecond varchar2(100) default null          			--预留字段二
=======
       ksongsingId references kuSinger(kuSingerId),           --����id
       kudetailsongId references kuSong(kuSongId),            --����id
       kudetailstyleId references kuSongStyle(kuSongStyleId), --���id
       songplay Integer default 0,                      			--����Ŵ���/Ӧ�ö�Ӧ��Ӧ����ʱ��Ĵ���
       statue Integer default 0,                        			--0  �ղ�   �鿴����
       address varchar2(20),                          			--���ظ���ĵ�ַ
       kusingstatus Integer,                            			--״̬  ������ĸ�����ͬ  ����Ĳ��źͲ�����
       detailtime varchar2(20),                     			 	--�̶��ĸ跢��ʱ��
       kunext varchar2(100) default null,           			--Ԥ���ֶ�(����)
       kusecond varchar2(100) default null          			--Ԥ���ֶζ�
>>>>>>> branch 'master' of git@github.com:yl199610/KuGou.git
);
create sequence seq_kuSongDetail start with 10000;

insert into kuSongDetail values(seq_kuSongDetail.nextval,10000,10000,10000,1,0,'www.baidu.com',1,199619,1,1);

drop table kuSongDetail;
select * from kuSongDetail;

--���۱�

commit;
