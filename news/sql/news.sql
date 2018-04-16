select * from user_tables;

select * from topic;

select * from news_users;

select * from
(select n.*, rownum rn from (select * from news order by 5) n where rownum <= pageSize * pageNum)
where rn > pageSize * (pageNum - 1);

select * from news where ntid in (1, 2, 5) order by 2, 5;

select * from (select * from news where ntid = 1 order by 5)  where rownum <= 5 union
select * from (select * from news where ntid = 2 order by 5)  where rownum <= 5 union
select * from (select * from news where ntid = 5 order by 5)  where rownum <= 5;

select * from news where nid in (select nid from (select * from news where ntid = 1 order by 5)  where rownum <= 5)
or  nid in (select nid from (select * from news where ntid = 2 order by 5)  where rownum <= 5)
or nid in (select nid from (select * from news where ntid = 5 order by 5)  where rownum <= 5);


select * from NEWS_USERS;

select * from comments;

create sequence seq_comments start with 133;

create table topic_archive as select * from topic where 1!=1;

alter user yl quota 20M on USERS;

select * from topic_archive;
drop table news_archive



alert table news modify ncontent nvarchar2(4000)

create table news_archive as select NID,NTID,
NTITLE,NAUTHOR,NCREATEDATE,NPICPATH,to_lob(NCONTENT) NCONTENT,sysdate nMODIFYDATE,
NSUMMARY from news where 1!=1;

insert into test
select NID,NTID,
NTITLE,NAUTHOR,NCREATEDATE,NPICPATH,to_lob(NCONTENT) NCONTENT,sysdate nMODIFYDATE,
NSUMMARY from news where nid=80;

select * from user_sequences

select max(tid) from topic

create sequence seq_news start with 167;
