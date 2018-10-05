use learningsql;

create table product(
product_id integer not null primary key ,
product_name varchar(20) not  null,
product_desciprtion varchar(50) not null
);

create table product_history(
product_id integer not null primary key ,
product_name varchar(20) not  null,
product_desciprtion varchar(50) not null
);

