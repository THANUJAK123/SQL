show databases;
use mysql;
create table student(
studentid int not null primary key,
stuname varchar(20),
studept varchar(5),
stumarks int,
studob date);
show tables;
insert into student values(4043,"thanu","cse","200",'2000-01-29');
insert into student(studentid,stuname,studept,stumarks)
values(4053,"preethi","civil",800);
insert into student values(4028,"hani","mech",400,'2002-03-03'),
(4059,"bandu","BBA",600,'1998-03-21');
select * from student;
select studept from student;
insert into student values(4060,"priya","cse",300,'2000-05-02'),
(4042,"koushick","cse",320,'2002-02-24'),
(4019,"potti","mech",316,'1990-02-28'),
(2003,"vishwa","civil",356,'1993-04-23');
desc student;
select * from student;
select studept from student;
select studentid from student 
where studentid>4040;
alter table student
add column age int;
update student
set age =20 where studentid=4036;
update student set studob='1999-06-06' where studentid=4053;
select * from student
where stumarks>400 or age>15;
select * from student
where not age>20;
select * from student
order by age desc;
select * from student
where age<18
limit 5;
select stuname,max(age) as peddollu,
min(stumarks) as dullers from student;
select count(stuname),avg(stumarks),sum(stumarks)from student;
create table customer(
custid int not null primary key,
custname varchar(30),
custage int,
custcity varchar(30));
insert into customer values(11,"ashok",20,"bglr"),
(12,"rAVI",29,"MGLR"),
(13,"vishwa",32,"kdp"),
(14,"thanu",32,"kdp"),
(15,"thanmayi",12,"vizag"),
(16,"pushpa",32,"atp"),
(17,"choms",19,"tdp");
select * from customer;
alter table customer 
add column custreg int;
update customer set custreg=4059 where custid=17;
select * from student
cross join customer
on studentid=customer.custreg;
show tables;
select * from customer order by custage,custname;