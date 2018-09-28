create database books;

use books;

create table favorite_books(
fav_book_id integer not null primary key IDENTITY(1,1),
fav_book_name varchar(50) not null,
fav_book_author varchar(20) not null,
fav_book_description varchar(100) ,
date_published_or_revised date not null
);

drop table favorite_books;

select * from favorite_books;

insert into favorite_books values('Where the Wild Things Are','Maurice Sendak','Where the Wild Things Are is a 1963 childrens picture book by American writer','04/09/1963');

insert into favorite_books values('The Very Hungry Caterpillar',' Eric Carle','The Very Hungry Caterpillar is a childrens picture book ','06/03/1969');

insert into favorite_books values('Goodnight Moon','Margaret Wise Brown','American childrens book','03/09/1947');

insert into favorite_books values('Matilda','Roald Dahl','American childrens book','10/01/1988');

insert into favorite_books values('Charlottes Web',' E. B. White','American childrens book','10/15/1952');

insert into favorite_books values('Alices Adventures in Wonderland',' Lewis Carroll','American childrens book','12/27/1871');

insert into favorite_books values('The Secret Garden',' Frances Hodgson Burnett','American childrens book','12/08/1911');

insert into favorite_books values('Charlie and the Chocolate Factory','Roald Dahl',' British author Roald Dahl','1/17/1964');

insert into favorite_books values('Anne of Green Gables',' Lucy Montgomery',' British author','1/17/1876');

insert into favorite_books values('The Giving Tree','Shel Silverstein','childrens picture book','10/7/1964');

select * from favorite_books where fav_book_author like '%roald%';