create user kugou identified by a
grant resource,connect to kugou
--�û���
create table kgUser(
       kgUser_id int primary key,
       kgUser_name varchar2(50) not null,
       kgUser_pwd varchar2(50) default '1234',
       kgUser_email varchar2(50) not null,         --����
       kgUser_sex varchar2(50) not null,           --�Ա�
       kgUser_birthday varchar2(80) not null,      --����
       kgUser_note varchar2(400) not null,         --���˼��
       kgUser_pic varchar(200),                    --�ϴ�ͼƬ�ֶΣ���������Ϊ�գ�
       kgUser_state int default 0,                 --�����û���״̬(����ɾ���û�ֻ��Ҫ��״̬)0��ʾ����״̬
       kgUser_song varchar2(20) default '���ղ�'   --�Ƿ��ղظ���
       kgUser_next varchar2(100) default null,     --Ԥ���ֶ�
       kgUser_second varchar2(100) default null,   --Ԥ���ֶζ�
);
drop table kgUser;
select * from kgUser;
--�ղر�
create table kgSave(
       kgSave_id int primary key,
       kuserSave_id references kgUser(kgUser_id),   --�û�id
       kgSave_Sid int,                              --����id(ͨ��������ѯ)
       kgSavenext varchar2(100) default null,       --Ԥ���ֶ�
       kgSavesecond varchar2(100) default null      --Ԥ���ֶζ�
);
drop table kgUser;
select * from kgUser;
--����Ա��
create table kgAdmin(
       kgAdmin_id int primary key,
       kgAdmin_name varchar2(50) not null,
       kgAdmin_pwd varchar2(50) default 'a',
       kgAdmin_state int default 0,                 --�����û���״̬(����ɾ���û�ֻ��Ҫ��״̬)
       kgAdmin_next varchar2(100) default null,     --Ԥ���ֶ�
       kgAdmin_second varchar2(100) default null    --Ԥ���ֶζ�
);
drop table kgAdmin;
select * from kgAdmin;
--���ֱ�
create table kuSinger(
       kuSinger_id int primary key,
       kuSinger_name varchar2(50) not null,
       kuSinger_sex varchar2(20),                       --�Ա�
       kuSinger_img varchar2(400) not null,             --����ͼƬ
       kuSinger_code varchar2(10) not null,             --������
       kuSinger_singerstate int default 0,              --�����û���״̬(����ɾ���û�ֻ��Ҫ��״̬)  
       kuSinger_singernext varchar2(100) default null,  --Ԥ���ֶ�
       kuSinger_singersecond varchar2(100) default null --Ԥ���ֶζ�
);
--���ֵĹ���   ��ҳ �͸���
drop table kuSinger;
select * from kuSinger;

--������ 
create table kuSong(                			   --���ݸ�������ѯ
       kuSong_id int primary key,     
       kuSong_name varchar2(60) not null,          --����
       kuSong_img varchar2(400),                   --����ʱ��
       kuSong_words varchar2(3600),                --���·��
       kuSong_address varchar(20),                 --����·��
       kuSong_songtime varchar(20),                --����ʱ��--��Ӧ�ĸ���ʱ��
	   --kuSong_year varchar2(20) not null,        --�������
       kuSong_next varchar2(100) default null,     --Ԥ���ֶ�
       kuSong_second varchar2(100) default null    --Ԥ���ֶζ�
);
drop table kuSong;
select * from kuSong;
-- �������
create table kuSongStyle(                     
       kuSongStyle_id int primary key,
       kuSongStyle_name varchar2(20) not null,		  --�����������
       kuSongStylenext varchar2(100) default null,    --Ԥ���ֶ�
       kuSongStylesecond varchar2(100) default null   --Ԥ���ֶζ�
);
drop table kuSongStyle;
select * from kuSongStyle;
-- ��ϸ��
create table kuSongDetail(
       kuSongDetail_id int primary key,                      
       ksongsing_id references kuSinger(kuSinger_id),           --����id
       kudetailsong_id references kuSong(kuSong_id),            --����id
       kudetailstyle_id references kuSongStyle(kuSongStyle_id), --���id
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
