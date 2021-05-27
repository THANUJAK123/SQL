create database hello;
use hello;
show tables;
create table hani(
rnum int primary key,
name varchar(10) not null,
age int,
address varchar(40),
dob date,
branch varchar(6),
gender varchar(3));
select * from hani;
insert into hani (rnum,name,age,address,dob,branch,gender)values(4037,'swamy',20,'penukonda','2000-6-6','CSE','M');
insert into hani values(4036,'sowmya',20,'Thadipathri','2000-9-21','MPC','F'),
(4019,'potti',30,'madanapalli','2001-8-2','ECE','F'),
(4028,'hanisha',26,'DMM','2001-3-3','CIVIL','F'),
(1045,'konda',29,'kdr','2001-7-8','MECH','F');
select * from hani;
select rnum from hani;
alter table hani
add column section varchar(3);
update hani
set section='c' where rnum=4037;
select * from hani;
insert into hani values(4043,'thanu',10,'KTP','2000-01-29','EEE','F','F');
insert into hani(section)values('A','B');
ALTER TABLE hani
rename column branch to Course; 
select * from hani 
where name like 't%n_';
select * from hani
order by name,age desc;
select * from hani
limit 5;
select * from hani
where name in('swamy','sowmya');
select * from hani
where age>=20;
select now();
select name from hani
where rnum=4037;
select count(name),max(age),min(age),avg(age),sum(age)from hani;
select count(address),address from hani
group by address;
select * from hani;
select * from hani 
where not age>=20;
select * from hani
where section in('c');
describe hani;
select *,concat(age,'@',address) as pilli from hani;
select substring(name,1,3) as pilaka from hani;
select upper(name) ,lower(name)  from hani;
select name from hani
 where day(dob)='29' or month(dob)='03' and month(dob)='04';
 insert into hani values(1234,'vishwa',21,'atp','2000-04-29','EEE','M','F');
 select * from hani 
 where age between 20 and 30;
 create table bandu(
studentid int not null primary key,
stuname varchar(20),
studept varchar(5),
address varchar(40),
stumarks int,
studob date);
 select * from bandu;
 create table log(
stuname varchar(40),
email varchar(30) not null,
pass varchar(40) not null
);
insert into bandu values(1,'ram','cse','ktp',20,'2000-03-22'),
(2,'raj','ese','ktpr',22,'2002-05-12'),
(3,'kam','civil','tdp',25,'2005-07-19');
select * from bandu;
select * from hani;
alter table hani
rename column dob to studob; 
select studob from hani
union
select studob from bandu;

select * from hani
having age>20;
select rnum,age,(rnum+age)/10 from hani;
show tables;
select * from hani;
select * from bandu;
select stumarks from bandu 
join hani on hani.studob=bandu.studob;
insert into bandu values(4,'dash','EEE','tpt','49','2001-07-08'),
(5,'thribu','MECH','hdp','24','1997-11-12'),
(6,'milar','java','bglr',43,'2001-03-03');
select * from hani
join bandu on hani.studob=bandu.studob;
select * from hani
left join bandu on hani.studob=bandu.studob;
select * from hani
right join bandu on hani.studob=bandu.studob;
select * from hani
cross join bandu on hani.studob=bandu.studob;








