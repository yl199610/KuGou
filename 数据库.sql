create user kugou identified by a
grant resource,connect to kugou
--�û���
create table kgUser(
       kgUserId int primary key,
       kgUserName varchar2(50) not null,
       kgUserPwd varchar2(50) default '1234',
       kgUserEmail varchar2(50) not null,         --����
       kgUserSex varchar2(50) not null,           --�Ա�
       kgUserBirthday varchar2(80) not null,      --����
       kgUserNote varchar2(400) not null,         --���˼��
       kgUserPic varchar(200),                    --�ϴ�ͼƬ�ֶΣ���������Ϊ�գ�
       kgUserState int default 0,                 --�����û���״̬(����ɾ���û�ֻ��Ҫ��״̬)0��ʾ����״̬
       kgUserSong varchar2(20) default '���ղ�'   --�Ƿ��ղظ���
       kgUserNext varchar2(100) default null,     --Ԥ���ֶ�
       kgUserSecond varchar2(100) default null,   --Ԥ���ֶζ�
);
drop table kgUser;
select * from kgUser;
--�ղر�
create table kgSave(
       kgSaveId int primary key,
       kuserSaveId references kgUser(kgUser_id),   --�û�id
       kgSaveSid int,                              --����id(ͨ��������ѯ)
       kgSavenext varchar2(100) default null,       --Ԥ���ֶ�
       kgSavesecond varchar2(100) default null      --Ԥ���ֶζ�
);
drop table kgUser;
select * from kgUser;
--����Ա��
create table kgAdmin(
       kgAdminId int primary key,
       kgAdminName varchar2(50) not null,
       kgAdminPwd varchar2(50) default 'a',
       kgAdminState int default 0,                 --�����û���״̬(����ɾ���û�ֻ��Ҫ��״̬)
       kgAdminNext varchar2(100) default null,     --Ԥ���ֶ�
       kgAdminSecond varchar2(100) default null    --Ԥ���ֶζ�
);
drop table kgAdmin;
select * from kgAdmin;
--���ֱ�
create table kuSinger(
       kuSingerId int primary key,
       kuSingerName varchar2(50) not null,
       kuSingerSex varchar2(20),                       --�Ա�
       kuSingerImg varchar2(400) not null,             --����ͼƬ
       kuSingerCode varchar2(10) not null,             --������
       kuSingerSingerstate int default 0,              --�����û���״̬(����ɾ���û�ֻ��Ҫ��״̬)  
       kuSingerSingernext varchar2(100) default null,  --Ԥ���ֶ�
       kuSingerSingersecond varchar2(100) default null --Ԥ���ֶζ�
);
--���ֵĹ���   ��ҳ �͸���
drop table kuSinger;
select * from kuSinger;

--������ 
create table kuSong(                			   --���ݸ�������ѯ
       kuSongId int primary key,     
       kuSongName varchar2(60) not null,          --����
       kuSongImg varchar2(400),                   --����ʱ��
       kuSongWords varchar2(3600),                --���·��
       kuSongAddress varchar(20),                 --����·��
       kuSongSongtime varchar(20),                --����ʱ��--��Ӧ�ĸ���ʱ��
	   --kuSong_year varchar2(20) not null,        --�������
       kuSongNext varchar2(100) default null,     --Ԥ���ֶ�
       kuSongSecond varchar2(100) default null    --Ԥ���ֶζ�
);
drop table kuSong;
select * from kuSong;
-- �������
create table kuSongStyle(                     
       kuSongStyleId int primary key,
       kuSongStyleName varchar2(20) not null,		  --�����������
       kuSongStylenext varchar2(100) default null,    --Ԥ���ֶ�
       kuSongStylesecond varchar2(100) default null   --Ԥ���ֶζ�
);
drop table kuSongStyle;
select * from kuSongStyle;
-- ��ϸ��
create table kuSongDetail(
       kuSongDetailId int primary key,                      
       ksongsingId references kuSinger(kuSinger_id),           --����id
       kudetailsongId references kuSong(kuSong_id),            --����id
       kudetailstyleId references kuSongStyle(kuSongStyle_id), --���id
       songplay int default 0,                      			--�������Ŵ���/Ӧ�ö�Ӧ��Ӧ����ʱ��Ĵ���
       statue int default 0,                        			--0  �ղ�   �鿴����
       address varchar(20),                          			--���ظ����ĵ�ַ
       kusingstatus int,                            			--״̬  ������ĸ�����ͬ  �����Ĳ��źͲ�����
       detailtime varchar(20),                     			 	--�̶��ĸ跢��ʱ��
       kunext varchar2(100) default null,           			--Ԥ���ֶ�(����)
       kusecond varchar2(100) default null          			--Ԥ���ֶζ�
);
drop table kuSongDetail;
select * from kuSongDetail;

--���۱�

commit;
