--university accomodation office database

create database university_accomodation_office;

use university_accomodation_office;

--table creation

--student table

create table university_student (
student_id varchar(20) not null primary key,
first_name varchar(20) not null,
last_name varchar(20) not null,
home_addr_street varchar(20) not null,
home_addr_city varchar(20) not null,
home_addr_zipcode varchar(10) not null,
dob date not null,
sex varchar(15) not null,
category varchar(20) not null,
nationality varchar(25) not null,
special_needs varchar(50) null,
current_status varchar(20) not null,
course_id varchar(20) not null,
comment_for_student varchar(100) ,
status_accomodation varchar(25) not null,
type_of_room varchar(20) null,
advisor_id varchar(20) not null,
place_flat_no varchar(20) null,
contact_id varchar(50) not null,
check(current_status='placed' or current_status='waiting'),
check (status_accomodation='renting' or status_accomodation='waiting list'),
check(type_of_room='hall of residence' or type_of_room='student flat')
);


--insertion of data into university student table

insert into university_student values('','','','','','','','','','','','','','','','','','','',);

insert into university_student values('s1','ann','mathew','56 leander st','brampton','l6s3m7','02/09/1989','female','junoir','canadian','no','placed','c2','from brampton','waiting list','hall of residence','ad2','p1','co1');


insert into university_student values('s2','','','','','','','','','','','','','','','','','','');


insert into university_student values('s3','','','','','','','','','','','','','','','','','','');


insert into university_student values('s4','','','','','','','','','','','','','','','','','','');


insert into university_student values('s5','','','','','','','','','','','','','','','','','','');


insert into university_student values('s6','','','','','','','','','','','','','','','','','','');


insert into university_student values('s7','','','','','','','','','','','','','','','','','','');


insert into university_student values('s8','','','','','','','','','','','','','','','','','','');


insert into university_student values('s9','','','','','','','','','','','','','','','','','','');


insert into university_student values('s10','','','','','','','','','','','','','','','','','','');


--advisor table

create table student_advisor(
advisor_id varchar(10) not null primary key,
full_name varchar(50) not null,
postion varchar(30) not null,
department_name varchar(30) not null,
phone_number varchar(15) not null,
office_location varchar(30) null,
office_phone varchar(15) null,
);

--hall of residence table

create table hall_of_residence (
hall_id varchar(10) not null primary key,
hall_name varchar(20) not null,
hall_addr varchar(50) not null,
phone_no varchar(15) not null,
manager varchar(50) not null,
);

drop table university_student;
--hall room table

create table hall_room (
place_no varchar(20) not null primary key ,
room_no varchar(20) not null,
hall_id varchar(10) not null,
Monthly_rent_rate varchar(20) not null
);


--student flat table 

create table student_flat(
flat_no varchar(20) not null primary key,
flat_address varchar(50) not null,
no_of_rooms integer not null,
check(no_of_rooms ='2' or no_of_rooms ='3' or no_of_rooms ='4')
);

--lease table

create table lease(
lease_no varchar(10) not null primary key,
duration_of_lease integer not null,
check (duration_of_lease between 1 and 4),
student_id varchar(20) not null,
student_full_name varchar(50) not null,
place_flat_no varchar(10) not null,
addr_of_hall_flat varchar(50) not null,
date_enter_room date not null,
date_exit_room date not null
);

drop table lease;

--invoice table 

create table invoice(
invoice_no varchar(50) not null primary key,
lease_no varchar(10) not null,
quarter_no varchar(5) not null,
payment_due varchar(10) not null,
student_id varchar(20) not null,
student_full_name varchar(50) not null,
place_flat_no varchar(10) not null,
addr_of_hall_flat varchar(50) not null,
);

drop table invoice ;
--payment table 

create table payment (
payment_id varchar(10) not null primary key,
invoice_no varchar(50) not null,
student_id varchar(50) not null,
payment_method varchar(50) not null,
check(payment_method='cheque' or payment_method='cash' or payment_method='credit card'),
date_first_remainder date null,
date_second_remainder date null
);

drop table payment;

--students flat inspection table

create table flat_inspection (
insepction_id varchar(50) not null primary key ,
staff_id varchar(20) not null,
staff_full_name varchar(50) not null,
date_inspection date not null,
place_flat_no varchar(20) not null,
satisfactory_condition bit not null,
comments varchar(100) null
);

--accomodation staff table

create table accomodation_staff(
staff_id varchar(20) not null primary key,
staff_first_name varchar(20) not null,
staff_last_name varchar(20) not null,
staff_home_addr_street varchar(20) not null,
staff_home_addr_city varchar(20) not null,
staff_home_addr_zipcode varchar(10) not null,
staff_dob date not null,
staff_sex varchar(15) not null,
staff_postion varchar(30) not null,
staff_location varchar(20) not null,
check(staff_location='accomodation office' or staff_location='hall')
);

drop table accomodation_staff;

--university courses table

create table courses(
course_id varchar(20) not null primary key,
course_no varchar(20) not null ,
course_title varchar(50) not null,
course_year integer not null,
instructor_name varchar(50) not null,
room_no varchar(10) null,
department_name varchar(20) not null
);

--contacts table 


create table contacts(
contact_id varchar(50) not null primary key,
ssn varchar(20) not null,
contact_first_name varchar(20) not null,
contact_last_name varchar(20) not null,
contact_home_addr_street varchar(20) not null,
contact_home_addr_city varchar(20) not null,
contact_home_addr_zipcode varchar(10) not null,
relation_student varchar(20) not null,
contact_phone_no varchar(15) not null
);





