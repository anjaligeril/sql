create database USA;

use USA;


create table usa_states(
state_name varchar(20) not null,
state_capital varchar(20) not null,
state_population integer not null,
state_area varchar(50) not null,
state_famouspeople varchar(50) null,
state_nickname varchar(50) null,
state_union integer not null,
state_bird varchar(20) not null
);

insert into usa_states values('Alaska','Juneau',479000,'586,412','Joe Juneau','Last Frontier',1959,'Ptarmigan');

insert into usa_states values('','',,'','','',,'');

insert into usa_states values('Arizona','Phoenix',2963000,'113,909','Geronimo','Grand Canyon State',1912,'Cactus Wren');

insert into usa_states values('California','Sacramento',25174000,'158,693','Jack London','Golden State',1850,'Quail');

insert into usa_states values('Florida','Tallahassee',10680000,'58,56','Joseph Stilwell','Sunshine State',1845,'Mockingbird');

insert into usa_states values('Hawaii','Honolulu',1023000,'6,450','Don Ho','Aloha State',1959,'Goose');

insert into usa_states values('Idaho','Boise',989000,'83,557','Sacajawea','Gem State',1890,'Bluebird');

insert into usa_states values('Kansas','Topeka',2425000,'82,264','Amelia Earhart','Sunflower State',1861,'Meadowlark');

insert into usa_states values('Maine','Augusta',1146000,'33,215','Henry Longfellow','Pine Tree State',1820,'Chickadee');

insert into usa_states values('Nebraska','Lincoln',1597000,'77,227','Fred Astaire','Cornhusker State',1867,'Meadowlark');

insert into usa_states values('New Jersey','Trenton',7468000,'7,836','Stephen Crane','Garden State',1787,'Goldfinch');

insert into usa_states values('Ohio','Columbus',10746000,'41,222','Bob Hope','Buckeye State',1803,'Cardinal');

insert into usa_states values('Washington','Washington',4300000,'68,192','Bing Crosby','Evergreen State',889,'Goldfinch');

select * from usa_states;

select state_name from usa_states where state_union >=1850 and state_union <=1920;