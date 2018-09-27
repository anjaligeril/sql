

create database university_accomodation_office;

use university_accomodation_office;



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




create table student_advisor(
advisor_id varchar(10) not null primary key,
full_name varchar(50) not null,
postion varchar(30) not null,
department_name varchar(30) not null,
phone_number varchar(15) not null,
office_location varchar(30) null,
office_phone varchar(15) null
);
drop table student_advisor;

select * from student_advisor;

insert into student_advisor values('ad1','george joseph','professor','cse','9876543219','toronto','8765432112');

insert into student_advisor values('ad2','zack zacharia','assistant professor','cse','9765432112','toronto','8765432112');

insert into student_advisor values('ad3','jack mashner','associate professor','cse','56789123401','toronto','8765432112');

insert into student_advisor values('ad4','julie dizilo','professor','ece','23456789011','toronto','67890123454');

insert into student_advisor values('ad5','kishor khan','assistant professor','ece','21345678901','toronto','67890123454');

insert into student_advisor values('ad6','manu mathew','associate professor','ece','345678901234','toronto','67890123454');

insert into student_advisor values('ad7','krish k','professor','me','8901234356','toronto','3332456789');

insert into student_advisor values('ad8','john joseph','assistant professor','me','44123456789','toronto','3332456789');

insert into student_advisor values('ad9','alif khan','assoiate professor','me','77890123456','toronto','3332456789');

insert into student_advisor values('ad10','matt maqueen','assistant professor','me','6677889912','toronto','3332456789');



create table hall_of_residence (
hall_id varchar(10) not null primary key,
hall_name varchar(20) not null,
hall_addr varchar(50) not null,
phone_no varchar(15) not null,
manager varchar(50) not null
);

drop table hall_of_residence;

select * from hall_of_residence;

insert into hall_of_residence values('h1','hall1','1 main st','9988776655','mathew m');

insert into hall_of_residence values('h2','hall2','2 main st','8877665544','joseph j');

insert into hall_of_residence values('h3','hall3','3 main st','7766554433','john j');

insert into hall_of_residence values('h4','hall4','4 main st','6655443322','kevin k');

insert into hall_of_residence values('h5','hall5','5 main st','5544332211','alfred a');

insert into hall_of_residence values('h6','hall6','6 main st','4433221100','may m');

insert into hall_of_residence values('h7','hall7','7 main st','3322110099','june j');

insert into hall_of_residence values('h8','hall8','8 main st','2211009988','july j');

insert into hall_of_residence values('h9','hall9','9 main st','1100998877','april a');

insert into hall_of_residence values('h10','hall10','10 main st','9977665544',' honey sigh');


create table hall_room (
place_no varchar(20) not null primary key ,
room_no varchar(20) not null,
hall_id varchar(10) not null,
Monthly_rent_rate varchar(20) not null
);

drop table hall_room;

select * from hall_room;

insert into hall_room values('p1','101','h1','100');

insert into hall_room values('p2','102','h2','100');

insert into hall_room values('p3','102','h1','100');

insert into hall_room values('p4','101','h2','100');

insert into hall_room values('p5','201','h3','100');

insert into hall_room values('p6','202','h3','100');

insert into hall_room values('p7','101','h4','100');

insert into hall_room values('p8','101','h5','100');

insert into hall_room values('p9','101','h6','100');

insert into hall_room values('p10','101','h7','100');




create table student_flat(
flat_no varchar(20) not null primary key,
flat_address varchar(50) not null,
no_of_rooms integer not null,
check(no_of_rooms ='2' or no_of_rooms ='3' or no_of_rooms ='4')
);

drop table student_flat;

select * from student_flat;

insert into student_flat values('f1','11 main st','2');

insert into student_flat values('f2','12 main st','3');

insert into student_flat values('f3','13 main st','4');

insert into student_flat values('f4','14 main st','2');

insert into student_flat values('f5','15 main st','3');

insert into student_flat values('f6','16 main st','4');

insert into student_flat values('f7','17 main st','2');

insert into student_flat values('f8','18 main st','3');

insert into student_flat values('f9','19 main st','4');

insert into student_flat values('f10','20 main st','2');



create table student_lease(
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

select * from student_lease;

insert into student_lease values('l1','1','s1','ann mathew','p1','21 main st','06/02/2018','09/02/2018');

insert into student_lease values('l2','2','s2','anu george','f1','22 main st','06/02/2018','12/02/2018');

insert into student_lease values('l3','3','s3','binu jose','f1','23 main st','06/02/2018','03/02/2019');

insert into student_lease values('l4','4','s4','amy george','p3','24 main st','06/02/2018','06/02/2019');

insert into student_lease values('l5','1','s5','manu k','f2','25 main st','06/02/2018','09/02/2018');

insert into student_lease values('l6','2','s16','joseph john','f14','26 main st','06/02/2018','12/02/2018');

insert into student_lease values('l7','3','s17','john joseph','p15','27 main st','06/02/2018','03/02/2019');

insert into student_lease values('l8','4','s18','anami pillai','f15','28 main st','06/02/2018','06/02/2019');

insert into student_lease values('l9','1','s19','reghunath v','p16','29 main st','06/02/2018','09/02/2018');

insert into student_lease values('l10','2','s20','lini abraham','f16','30 main st','06/02/2018','12/02/2018');

drop table student_lease;



create table invoice(
invoice_no varchar(50) not null primary key,
lease_no varchar(10) not null,
quarter_no varchar(5) not null,
payment_due varchar(10) not null,
student_id varchar(20) not null,
student_full_name varchar(50) not null,
place_flat_no varchar(10) not null,
addr_of_hall_flat varchar(50) not null
);

drop table invoice ;

select * from invoice;

insert into invoice values('in1','l1','1','07/02/2018','s1','ann mathew ','p1','1 main st');

insert into invoice values('in2','l2','1','07/02/2018','s2','anu george','f1','11 main st');

insert into invoice values('in3','l3','1','07/02/2018','s3','binu jose','f1','11 main st');

insert into invoice values('in4','l4','1','07/02/2018','s4','amy george','p3','1 mainst');

insert into invoice values('in5','l5','1','07/02/2018','s5','manu k','f2','12 main st');

insert into invoice values('in6','l11','1','07/02/2018','s11','kishor khan','f11','21 main st');

insert into invoice values('in7','l12','1','07/02/2018','s12','ahdil latheef','f12','22 main st');

insert into invoice values('in8','l13','1','07/02/2018','s13','abishek a','p11','31 main st');

insert into invoice values('in9','l14','1','07/02/2018','s14','anumol k','p12','32 main st');

insert into invoice values('in10','l15','1','07/02/2018','s15','reshma thomas','p13','33 main st');


create table payment (
payment_id varchar(10) not null primary key,
invoice_no varchar(50) not null,
student_id varchar(50) not null,
payment_method varchar(50) not null,
check(payment_method='cheque' or payment_method='cash' or payment_method='credit card'),
date_first_remainder date null,
date_second_remainder date null,
payment_date date not null
);

 select * from payment;

drop table payment;

insert into payment values('p1','in1','s1','cheque','06/10/2018','06/10/2018','06/21/2018');

insert into payment values('p2','in2','s2','cash','06/10/2018','06/10/2018','06/22/2018');

insert into payment values('p3','in3','s3','credit card','06/10/2018','06/10/2018','06/23/2018');

insert into payment values('p4','in4','s4','cheque','06/10/2018','06/10/2018','06/24/2018');

insert into payment values('p5','in5','s5','cash','06/10/2018','06/10/2018','06/25/2018');

insert into payment values('p6','in6','s11','credit card','06/10/2018','06/10/2018','06/26/2018');

insert into payment values('p7','in7','s12','cheque','06/10/2018','06/10/2018','06/27/2018');

insert into payment values('p8','in8','s13','cash','06/10/2018','06/10/2018','06/28/2018');

insert into payment values('p9','in9','s14','credit card','06/10/2018','06/10/2018','06/29/2018');

insert into payment values('p10','in10','s15','cheque','06/10/2018','06/10/2018','06/30/2018');

--students flat inspection table

create table flat_inspection (
insepction_id varchar(50) not null primary key ,
date_inspection date not null
);

select *  from flat_inspection;

drop table flat_inspection;

insert into flat_inspection values('fi1','06/15/2018');

insert into flat_inspection values('fi2','06/25/2018');

insert into flat_inspection values('fi3','07/05/2018');

insert into flat_inspection values('fi4','07/15/2018');

insert into flat_inspection values('fi5','07/25/2018');

insert into flat_inspection values('fi6','08/05/2018');

insert into flat_inspection values('fi7','08/15/2018');

insert into flat_inspection values('fi8','08/25/2018');

insert into flat_inspection values('fi9','09/05/2018');

insert into flat_inspection values('fi10','09/15/2018');



 create table details_flat_inspection(
 details_inspection_id varchar(50) not null primary key,
 insepction_id varchar(50) not null ,
staff_id varchar(20) not null,
staff_full_name varchar(50) not null,
flat_no varchar(20) not null,
satisfactory_condition varchar(5) not null,
comments varchar(100) null
 );

 select * from details_flat_inspection;

 drop table details_flat_inspection;

 insert into details_flat_inspection values('dfi1','f11','st1','aby paul','f1','yes','tidy');

 insert into details_flat_inspection values('dfi2','f11','st1','aby paul','f2','yes','tidy');

 insert into details_flat_inspection values('dfi3','f11','st2',' merin thomas','f3','no','untidy');

 insert into details_flat_inspection values('dfi4','f11','st2','merin thomas','f4','yes','tidy');

 insert into details_flat_inspection values('dfi5','f11','st2','merin thomas','f5','yes','tidy');

 insert into details_flat_inspection values('dfi6','f12','st3','jithin jose','f1','yes','tidy');

 insert into details_flat_inspection values('dfi7','f12','st3','jithin jose','f2','no','untidy');

 insert into details_flat_inspection values('dfi8','f12','st3','jithin jose','f3','yes','tidy');

 insert into details_flat_inspection values('dfi9','f12','st3','jithin jose','f4','yes','tidy');

 insert into details_flat_inspection values('dfi10','f12','st4','rani thomas','f5','no','untidy');


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

select * from accomodation_staff;

drop table accomodation_staff;

insert into accomodation_staff values('st1','aby','paul','1 kennedy st','brampton','l6s3m7','02/03/1980','male','hall manager','accomodation office');

insert into accomodation_staff values('st2','merin','thomas','2 vodden st','brampton','l8f4j1','08/03/1981','female','administrative assistant','accomodation office');

insert into accomodation_staff values('st3','jithin','jose','2 howden st','brampton','l9h5g6','12/03/1980','male','cleaner','accomodation office');

insert into accomodation_staff values('st4','rani','thomas','2 kennedy st','brampton','l6s3m7','12/21/1981','female','hall manager','hall');

insert into accomodation_staff values('st5','cini','shanti','3 vodden st','brampton','l8f4j1','02/09/1984','female','administrative assistant','hall');

insert into accomodation_staff values('st6','dev','devan','3 howden st','brampton','l9h5g6','02/03/1980','male','hall manager','hall');

insert into accomodation_staff values('st7','kumar','kangan','3 kennedy st','brampton','l6s3m7','02/05/1983','male','cleaner','accomodation office');

insert into accomodation_staff values('st8','manu','nair','4 vodden st','brampton','l8f4j1','03/03/1980','male','cleaner','hall');

insert into accomodation_staff values('st9','aswin','anil','4 howden st','brampton','l9h5g6','02/03/1985','male','hall manager','hall');

insert into accomodation_staff values('st10','anil','kumar','4 kennedy st','brampton','l6s3m7','02/07/1980','male','administrative assistant','accomodation office');




create table courses(
course_id varchar(20) not null primary key,
course_no varchar(20) not null ,
course_title varchar(50) not null,
course_year integer not null,
instructor_name varchar(50) not null,
room_no varchar(10) null,
department_name varchar(20) not null
);

select * from courses;

drop table courses;

insert into courses values('c1','1','algorithm','1','mathew joseph','r1','cse');

insert into courses values('c2','2','c programming','2','rani thomas','r2','cse');

insert into courses values('c3','3','java programming','2','sheeba mathew','r3','cse');

insert into courses values('c4','4','computer organization','3','anu thomas','r4','cse');

insert into courses values('c5','5','neural network','4','andrews jose','r5','cse');

insert into courses values('c6','1','maths1','1','zack mac','r6','mathematics');

insert into courses values('c7','2','maths2','1','kumar k','r7','mathematics');

insert into courses values('c8','3','maths3','2','manu m','r8','mathematics');

insert into courses values('c9','4','maths4','2','justin j','r9','mathematics');

insert into courses values('c10','5','maths5','3','lalu jose','r10','mathematics');

create table student_course(
student_course_id varchar(50) not null primary key,
student_id varchar(50) not null,
course_id varchar(20) not null
);

select * from student_course;

drop table student_course;

insert into student_course values('sc1','s1','c1');

insert into student_course values('sc2','s1','c2');

insert into student_course values('sc3','s1','c3');

insert into student_course values('sc4','s1','c4');

insert into student_course values('sc5','s1','c5');

insert into student_course values('sc6','s2','c6');

insert into student_course values('sc7','s2','c7');

insert into student_course values('sc8','s2','c8');

insert into student_course values('sc9','s2','c9');

insert into student_course values('sc10','s2','c10');


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

select * from contacts;

drop table contacts;

insert into contacts values('co1','987654321','mathew','m','56 leander st','brampton','l6s3m7','father','6543210987');

insert into contacts values('co2','876543210','george','g','1 newton st','london','m2h3m5','father','9876543210');

insert into contacts values('co3','765432109','jose','j','2 queen st','toronto','l3l4l5','father','9876543211');

insert into contacts values('co4','654321098','george','u','56 newton st','halifax','k5k6k7','father','9876543212');

insert into contacts values('co5','543210987','don','k','126 mount st','kitchner','g1g2g3','father','9876543213');

insert into contacts values('co6','432109876','sudhir','m','126 queen st','alberta','p1p2n3r','father','9876543214');

insert into contacts values('co7','321098765','amit','k','55 dixie st','ottawa','k1k2f3c','father','9876543215');

insert into contacts values('co8','210987654','nadeep','singh','23 william st','toronto','j2h3g4','father','9876543216');

insert into contacts values('co9','109876543','king','w','45 kenndedy st ','scarbarough','l2l3l4','father','9876543217');

insert into contacts values('co10','234567890','malik','m','34 lanet st','brampton','l6q3f4','father','9876543218');
