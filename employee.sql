create database choice;
use choice;
create table employee_details (
    employee_id INT ,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary bigint,
    position VARCHAR(50)
);

CREATE TABLE airport_details (
    airport_id INT ,
    airport_name VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50),
    salary bigint
);
ALTER TABLE employee_details ADD COLUMN email varchar(10);
ALTER TABLE employee_details ADD COLUMN phoneno varchar(20);
ALTER TABLE employee_details ADD COLUMN address varchar(10);
ALTER TABLE employee_details ADD COLUMN department varchar(40);
ALTER TABLE employee_details ADD COLUMN middlename varchar(20);
ALTER TABLE airport_details ADD COLUMN number_of_runways INT;
ALTER TABLE airport_details ADD COLUMN passenger_traffic INT;
ALTER TABLE airport_details ADD COLUMN department varchar(20);
ALTER TABLE airport_details ADD COLUMN phoneno varchar(10);
ALTER TABLE airport_details ADD COLUMN address varchar(30);
ALTER TABLE employee_details DROP COLUMN department ;
ALTER TABLE employee_details DROP COLUMN salary ;
ALTER TABLE airport_details DROP COLUMN address ;
ALTER TABLE airport_details DROP COLUMN city ;
ALTER TABLE employee_details RENAME COLUMN email TO e_mail;
ALTER TABLE employee_details RENAME COLUMN middlename TO mname;
ALTER TABLE employee_details RENAME COLUMN first_name TO fname;
ALTER TABLE employee_details RENAME COLUMN last_name TO lname;
ALTER TABLE employee_details RENAME COLUMN address TO resi ;
ALTER TABLE airport_details RENAME COLUMN airport_name TO a_name ;
ALTER TABLE airport_details RENAME COLUMN number_of_runways TO no_of_run ;
ALTER TABLE airport_details RENAME COLUMN passenger_traffic TO trafic;
ALTER TABLE airport_details RENAME COLUMN country TO world;
ALTER TABLE airport_details RENAME COLUMN salary TO payment;
ALTER TABLE employee_details  MODIFY COLUMN mname varchar(20);
ALTER TABLE employee_details  MODIFY COLUMN fname varchar(20);
ALTER TABLE employee_details  MODIFY COLUMN lname varchar(20);
ALTER TABLE employee_details  MODIFY COLUMN resi varchar(30);
ALTER TABLE employee_details  MODIFY COLUMN e_mail varchar(20);
ALTER TABLE airport_details  MODIFY COLUMN world varchar(20);
ALTER TABLE airport_details  MODIFY COLUMN payment varchar(20);
ALTER TABLE airport_details  MODIFY COLUMN trafic varchar(30);
ALTER TABLE airport_details  MODIFY COLUMN no_of_run varchar(20);
ALTER TABLE airport_details  MODIFY COLUMN a_name varchar(10);
SELECT * FROM employee_details;
DESC employee_details;
SELECT * FROM airport_details;
DESC airport_details;
INSERT INTO employee_details values('a','bhagya','hiremath','developer','bhagyashreehiremath@gmail.com','sindagi','s');
INSERT INTO employee_details values('A','bhagya','hiremath','developer','bhagyashreehiremath@gmail.com','sindagi','s');
INSERT INTO employee_details values(1,'chetana','g','developer','chetana@gmail.com','davangere','s');
INSERT INTO employee_details values(2,'purna','hiremath','teacher','purna@gmail.com','bijapur','s');
INSERT INTO employee_details values(3,'aishu','hiremath','developer','aishu@gmail.com','mysore','s');
INSERT INTO employee_details values(4,'daanu','hiremath','teacher','danu@gmail.com','gulbarga','m');
INSERT INTO employee_details values(5,'veeru','hiremath','HR','veeru@gmail.com','bangalore','s');
INSERT INTO employee_details values(6,'naveen','hiremath','manager','naveen@gmail.com','bijapur','s');
INSERT INTO employee_details values(7,'somu','hiremath','HR','somu@gmail.com','bijapur','s');
INSERT INTO employee_details values(8,'siddanth','hiremath','student','sidd@gmail.com','bijapur','p');
INSERT INTO employee_details values(9,'sanjana','hiremath','student','sanju@gmail.com','bagalkot','rajashekar');
INSERT INTO employee_details values(10,'sanmathi','hiremath','student','sanu@gmail.com','bagalkot','r');
select * from employee_details where employee_id=6;
select fname,lname,mname from employee_details where employee_id=5;
select * from employee_details where employee_id=2;