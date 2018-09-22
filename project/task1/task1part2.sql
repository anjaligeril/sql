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

drop table university_student;

select * from university_student;

--insertion of data into university student table

insert into university_student values('','','','','','','','','','','','','','','','','','','',);

insert into university_student values('s1','ann','mathew','56 leander st','brampton','l6s3m7','02/09/1989','female','junoir','canadian','no','placed','from brampton','waiting list','hall of residence','ad2','p1','co1');


insert into university_student values('s2','anu','george','1 newton st','london','m2h3m5','03/02/2001','male','sophomore','indian','yes','waiting','from london','renting','student flat','ad1','f1','co2');


insert into university_student values('s3','binu','jose','2 queen st','toronto','l3l4l5','06/05/2004','male','senior','american','no','placed','from toronto','waiting list','student flat','ad3','f1','co3');


insert into university_student values('s4','amy','george','56 newton st','halifax','k5k6k7','02/12/1992','female','junior','canadian','no','waiting','from halifax','renting','hall of residence','ad3','p3','co4');


insert into university_student values('s5','manu','k','126 mount st','kitchner','g1g2g3','02/08/2000','male','sophomore','chinese','yes','placed','from kitchner','renting','student flat','ad4','f2','co5');


insert into university_student values('s6','soha','m','126 queen st','alberta','p1p2n3r','06/02/2002','female','junior','israel','no','waiting','from  alberta','waiting list','hall of residence','ad5','p2','co6');


insert into university_student values('s7','amrit','k','55 dixie st','ottawa','k1k2f3c','01/03/2002','female','senior','indian','no','placed','from ottawa','renting','student flat','ad6','f4','co7');


insert into university_student values('s8','navjeeb','singh','23 william st','toronto','j2h3g4','8/6/1984','female','sophomore','indian','no','placed','from toronto','waiting list','student flat','ad6','f5','co8');


insert into university_student values('s9','queen','w','45 kenndedy st ','scarbarough','l2l3l4','03/05/2003','female','senior','uk','yes','waiting','from uk','renting','hall of residence','ad7','p4','co9');


insert into university_student values('s10','zain','malik','34 lanet st','brampton','l6q3f4','01/08/2004','male','junior','canadian','no','placed','from brampton','renting','student flat','ad8','f5','co10');


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





