use learningsql;

create table product(
product_id integer not null primary key identity(1,1),
product_name varchar(20) not  null,
product_desciprtion varchar(50) not null
);

create table product_history(
product_id integer not null primary key identity(1,1),
product_name varchar(20) not  null,
product_desciprtion varchar(50) not null
);

insert into product values('pen','for writing');

select * from product;

select * from product_history;