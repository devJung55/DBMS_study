create database test;
use test;

create table tbl_guest(
	guest_id int unsigned auto_increment primary key,
	guest_identification varchar(1000),
	guest_password varchar(1000),
	guest_age int
);

select * from tbl_guest;

insert into tbl_guest(guest_identification, guest_password, guest_age)
values('hds', '1234', 20);

select concat(guest_identification, '의 나이는 ', guest_age) `자기 소개` 
from tbl_guest;

select now() from dual;
select date_format(now(), '%Y년 %m월 %d일 %H:%i:%s') `현재 시간` from dual; 

update tbl_guest
set guest_password = null;

select guest_identification, ifnull(guest_password, '입력 안함') `password` 
from tbl_guest;

select count(guest_id) from tbl_guest;

select * from tbl_guest
where guest_identification like 'h%';





