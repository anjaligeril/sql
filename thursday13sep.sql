create database ISoft;

use ISoft;

create table employee (
emp_id char(50) not null,
emp_fname char(60) not null,
emp_lname char(60) not null,
emp_address char(100) not null,
dob char(60) not null,
email char(60) not null,
contactno char(60) not null,
salary char(60) not null,
designation char(60) not null,
project_id char(60) ,
location_id char(60)
);

create table client(
client_id char(50) not null,
client_name char(50) not null,
client_address char(100) not null,
contact_no char(50) not null,
email char(50) not null,
fax char(50) not null
);

create table project (
project_id char(50) not null,
project_name char(50) not null,
client_id char(50) not null,
team_lead_name char(50) not null,
group_mail char(50) not null
);

create table location (
location_id char(50) not null,
location_name char(50) not null,
location_address char(100) not null,
province char(50) not null,
country char(50) not null
);

create table location_project(
location_project_id char(50) not null,
location_id char(50) ,
project_id char(50)
);

insert into employee values('e1','aiden','geril','56 leander st','02/09/1989','aiden@gmail.com','9687455632','100000','jr.systems eng','p1','l2');

insert into employee values('e2','amy','george','56 newton st','02/12/1992','amy@gmail.com','9685558882','200000','jr.systems eng','p2','l2');

insert into employee values('e3','anu','zack','126 hill st','12/12/1995','anu@gmail.com','9687894882','600000','sr.systems eng','p1','l1');

insert into employee values('e4','annu','jain','1 valley st','09/12/1995','annu@gmail.com','7894561882','100000','jr.systems eng','p1','l1');

insert into employee values('e5','manu','k','126 mount st','08/12/1988','manu@gmail.com','978944882','600000','sr.systems eng','p2','l2');

insert into employee values('e6','soha','m','126 queen st','1/1/1985','soha@gmail.com','3214567882','1000000','team lead','p1','l1');

insert into employee values('e7','amrit','k','55 dixie st','6/1/1995','amrit@gmail.com','3216549877','800000','team lead','p2','l2');

insert into employee values('e8','navjeeb','singh','23 william st','8/6/1984','navjeeb@gmail.com','7894561233','800000','sr.systems eng','p1','l2');

insert into employee values('e9','anjali','g','22 northpark st','09/09/1989','anjali@gmail.com','4168223193','800000','sr.systems eng','p1','l1');

insert into employee values('e10','jincy','annie','78 howden st','28/07/1988','jincy@gmail.com','1234567899','100000','jr.systems eng','p1','l1');

select * from employee;

insert into client values('c1','tandoori retaurant','555 northpark st','78945661233','tandoori@gmail.com','78945661233');

insert into client values('c2','feelgood spa','1 valley st','4168223193','feelgood@gmail.com','4168223193');

insert into client values('c3','newtim hortans','1 queen st','1234567899','newtim@gmail.com','1234567899');

insert into client values('c4','goodfeel gym','78 howden st','3216549877','goodfeel@gmail.com','3216549877');

insert into client values('c5','indian clothing store','22 northpark st','7894561882','indian@gmail.com','7894561882');

insert into client values('c6','chineses retaurant','126 mount st st','78945661233','chineses@gmail.com','78945661233');

insert into client values('c7','pak cultural center','55 dixie st','3214567882','pak@gmail.com','3214567882');

insert into client values('c8','brampton library','56 newton st','9687455632','library@gmail.com','9687455632');

insert into client values('c9','diamond petal shoes','23 william st','9687894882','diamond@gmail.com','9687894882');

insert into client values('c10','softy icecreams','56 leander st','9687455632','softy@gmail.com','78945661233');

select * from client;

insert into project values('p1','tandoori.ca','c1','aiden','p1@gmail.com');

insert into project values('p2','feelgood.ca','c2','amy','p2@gmail.com');

insert into project values('p3','newtim.ca','c3','anu','p3@gmail.com');

insert into project values('p4','goodfeel.ca','c4','annu','p4@gmail.com');

insert into project values('p5','indian.ca','c5','manu','p5@gmail.com');

insert into project values('p6','chineses.ca','c6','soha','p6@gmail.com');

insert into project values('p7','pakcultural.ca','c7','amrit','p7@gmail.com');

insert into project values('p8','brampton.ca','c8','navjeeb','p8@gmail.com');

insert into project values('p9','diamond.ca','c9','anjali','p9@gmail.com');

insert into project values('p10','softy.ca','c10','jincy','p10@gmail.com');


select * from project;

insert into location values('l1','toronto','555 northpark st','on','ca');

insert into location values('l2','siliconvalley','1 valley st','si','usa');

insert into location values('l3','banglore','1 queen st','ka','india');

insert into location values('l4','atlanta','78 howden st','at','usa');

insert into location values('l5','noida','22 northpark st','no','india');

insert into location values('l6','kochi','126 mount st','ke','india');

insert into location values('l7','kitchner','55 dixie st','on','ca');

insert into location values('l8','newyork','56 newton st','ny','usa');

insert into location values('l9','sydney','56 newton st','sy','au');

insert into location values('l10','tokyo','78 howden st','to','japan');

select * from location;

insert into location_project values('l1p1','l1','p1');

delete from location_project where location_project_id='l1p1';

insert into location_project values('lp1','l1','p1');

insert into location_project values('lp2','l2','p1');

insert into location_project values('lp3','l2','p2');

insert into location_project values('lp4','l3','p3');

insert into location_project values('lp5','l4','p4');

insert into location_project values('lp6','l5','p5');

insert into location_project values('lp7','l6','p6');

insert into location_project values('lp8','l7','p7');

insert into location_project values('lp9','l8','p8');

insert into location_project values('lp10','l9','p9');


select * from location_project;