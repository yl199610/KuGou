create user kugou identified by a
grant resource,connect to kugou
--�û���
create table kgUser(
       kgUserId Integer primary key,
       kgUserName varchar2(50) not null,
       kgUserPwd varchar2(50) default '1234',
       kgUserEmail varchar2(50) not null,         --����
       kgUserSex varchar2(50) not null,           --�Ա�
       kgUserBirthday varchar2(80) not null,      --����
       kgUserNote varchar2(400) not null,         --���˼��
       kgUserPic varchar2(200),                    --�ϴ�ͼƬ�ֶΣ���������Ϊ�գ�
       kgUserState Integer default 0,                 --�����û���״̬(����ɾ���û�ֻ��Ҫ��״̬)0��ʾ����״̬
       kgUserSong varchar2(20) default '���ղ�',   --�Ƿ��ղظ���
       kgUserNext varchar2(100) default null,     --Ԥ���ֶ�
       kgUserSecond varchar2(100) default null   --Ԥ���ֶζ�
);

create sequence seq_kgUserId start with 10000;
drop sequence seq_kgUserId;

select * from kgUser;

insert into kgUser values(seq_kgUserId.nextval,'asd',1234,'12312@qq.com','��',19950619,'asdasd','asd',0,1,3,2);

drop table kgUser;
select * from kgUser;
--�ղر�
create table kgSave(
       kgSaveId Integer primary key,
       kuserSaveId references kgUser(kgUserId),   --�û�id
       kgSaveSid Integer,                              --����id(ͨ��������ѯ)
       kgSavenext varchar2(100) default null,       --Ԥ���ֶ�
       kgSavesecond varchar2(100) default null      --Ԥ���ֶζ�
);

create sequence seq_kgSaveId start with 10000;

insert into kgSave values(seq_kgSaveId.nextval,10000,10000,1,1);

drop table kgSave;
select * from kgUser;
--����Ա��
create table kgAdmin(
       kgAdminId Integer primary key,
       kgAdminName varchar2(50) not null,
       kgAdminPwd varchar2(50) default 'a',
       kgAdminState Integer default 0,                 --�����û���״̬(����ɾ���û�ֻ��Ҫ��״̬)
       kgAdminNext varchar2(100) default null,     --Ԥ���ֶ�
       kgAdminSecond varchar2(100) default null    --Ԥ���ֶζ�
);
create sequence seq_kgAdmin start with 10000;

insert into kgAdmin values(seq_kgAdmin.nextval,'admin','admin',1,'asd','asd');

drop table kgAdmin;
select * from kgAdmin;
--���ֱ�
create table kuSinger(
       kuSingerId Integer primary key,
       kuSingerName varchar2(50) not null,
       kuSingerSex varchar2(20),                       --�Ա�
       kuSingerImg varchar2(400) not null,             --����ͼƬ
       kuSingerCode varchar2(10) not null,             --������
       kuSingerSingerstate Integer default 0,              --�����û���״̬(����ɾ���û�ֻ��Ҫ��״̬)  
       kuSingerSingernext varchar2(100) default null,  --Ԥ���ֶ�
       kuSingerSingersecond varchar2(100) default null --Ԥ���ֶζ�
);
--���ֵĹ���   ��ҳ �͸���

create sequence seq_kuSinger start with 10000;
insert into kuSinger values(seq_kuSinger.nextval,'�Ǻ�','��','wqe','hh',0,1,1);

drop table kuSinger;
select * from kuSinger;

--������ 
create table kuSong(                			   --���ݸ�������ѯ
       kuSongId Integer primary key,     
       kuSongName varchar2(60) not null,          --����
       kuSongImg varchar2(400),                   --����ʱ��
       kuSongWords varchar2(3600),                --���·��
       kuSongAddress varchar2(20),                 --����·��
       kuSongSongtime varchar2(20),                --����ʱ��--��Ӧ�ĸ���ʱ��
	   kuSong_year varchar2(20) not null,         --�������
       kuSongNext varchar2(100) default null,     --Ԥ���ֶ�
       kuSongSecond varchar2(100) default null    --Ԥ���ֶζ�
);

create sequence seq_kuSong start with 10000;
insert into kuSong values(seq_kuSong.nextval,'xixi','4.12','wqe','hh',1995,'80',1,1);

drop table kuSong;
select * from kuSong;
-- �������
create table kuSongStyle(                     
       kuSongStyleId Integer primary key,
       kuSongStyleName varchar2(20) not null,		  --�����������
       kuSongStylenext varchar2(100) default null,    --Ԥ���ֶ�
       kuSongStylesecond varchar2(100) default null   --Ԥ���ֶζ�
);
create sequence seq_kuSongStyle start with 10000;
insert into kuSongStyle values(seq_kuSongStyle.nextval,'ҡ��',1,1);


drop table kuSongStyle;
select * from kuSongStyle;
-- ��ϸ��
create table kuSongDetail(
       kuSongDetailId Integer primary key,                      
       ksongsingId references kuSinger(kuSingerId),           --����id
       kudetailsongId references kuSong(kuSongId),            --����id
       kudetailstyleId references kuSongStyle(kuSongStyleId), --���id
       songplay Integer default 0,                      			--�������Ŵ���/Ӧ�ö�Ӧ��Ӧ����ʱ��Ĵ���
       statue Integer default 0,                        			--0  �ղ�   �鿴����
       address varchar2(20),                          			--���ظ����ĵ�ַ
       kusingstatus Integer,                            			--״̬  ������ĸ�����ͬ  �����Ĳ��źͲ�����
       detailtime varchar2(20),                     			 	--�̶��ĸ跢��ʱ��
       kunext varchar2(100) default null,           			--Ԥ���ֶ�(����)
       kusecond varchar2(100) default null          			--Ԥ���ֶζ�
);
create sequence seq_kuSongDetail start with 10000;

insert into kuSongDetail values(seq_kuSongDetail.nextval,10000,10000,10000,1,0,'www.baidu.com',1,199619,1,1);

drop table kuSongDetail;
select * from kuSongDetail;

--���۱�

commit;
