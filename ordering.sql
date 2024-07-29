create database order_4;
use order_4;
create table order_5(id int,o_name varchar(20),order_id int primary key,cost bigint,created_at timestamp,created_by varchar(40),modified_at timestamp,modified_by varchar(40));
select * from order_5;
desc order_5;
INSERT INTO order_5 values(1,'idli',24,60,now(), 'bhagya', now(),'chethana');
INSERT INTO order_5 values(2,'roti',34,100,now(),'anjali',now(),'pallavi');
INSERT INTO order_5 values(3,'biriyani',14,100,now(),'sujan',now(),'chetan');
create table payment_1(id int,cost bigint,payment_id int primary key,order_id int ,foreign key(order_id) references order_5(order_id),
payment_status enum('fail','success'),created_at timestamp,created_by varchar(40),modified_at timestamp,modified_by varchar(40));
INSERT INTO payment_1 values(1,300,20,14,1,now(),'bhagya',now(),'chetana');
INSERT INTO payment_1 values(2,400,10,24,2,now(),'sujan',now(),'chetana');
select * from payment_1;
create table resturant(id int,res_name varchar(30),res_id int primary key,location varchar(30),order_id int,foreign key(order_id)references order_5(order_id),
ratings int,payment_id int,foreign key(payment_id)references payment_1(payment_id),created_at timestamp,created_by varchar(40),modified_at timestamp,modified_by varchar(40));
INSERT INTO resturant values(1,'vinay',12,'rrnagar',14,4,10,now(),'bhagya',now(),'chetana');
INSERT INTO resturant values(2,'shantisagar',14,'rajajinagar',24,4,20,now(),'bhagya',now(),'chetana');
select * from resturant;
create table delivery(id int,person_name varchar(40),mode_of_payment enum('online','offline'),res_id int,foreign key(res_id)references resturant(res_id),order_id int,foreign key(order_id)references order_5(order_id),
created_at timestamp,created_by varchar(40),modified_at timestamp,modified_by varchar(40));
INSERT INTO delivery values(1,'bhagya',1,12,24,now(),'chetana',now(),'sangeeta');
INSERT INTO delivery values(2,'chetana',2,14,14,now(),'bhagya',now(),'suraj');                  
