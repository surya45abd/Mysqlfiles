create database students;
use students;

create table library(
libraryid int primary key,
libraryname varchar(30) ,
city varchar(30)
);


insert into library values
(101,'Java','s Gosling'),
(102,'Python','Gdan Rossum'),
(103,'C','Dennis Rtchie'),
(104,'Database','Elri'),
(105,'Operating','kkd');

select * from library;
drop table library;

create table book (
bookid int primary key,
bookname varchar(30),
author varchar(30),
libraryid int,
foreign key(libraryid)
REFERENCES library(libraryid)
on update cascade
on delete cascade
);

insert into book values
(1,'hello','harsha',101),
(2,'local','phani',103),
(3,'street','mouli',102),
(4,'wall','surya',104),
(5,'neral','suri',105);

select * from book;

update library 
set libraryid = 201 where libraryid = 101;

delete from library 
where libraryid = 201;

