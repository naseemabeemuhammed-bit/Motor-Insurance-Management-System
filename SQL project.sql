create database motoramate;
use motoramate;
create table mi_vehicle_make(
make_id int primary key
auto_increment,
make_desc varchar(50) not null,
status varchar(20) not null,
added_on date,
added_by varchar(50)
);
desc mi_vehicle_make;

create table mi_vehicle_model(
model_id int primary key
auto_increment,
model_desc varchar(50) not null,
make_id int,
status varchar(20) not null,
added_on date,
added_by varchar(50),
foreign key(make_id) references mi_vehicle_make(make_id)
);
desc mi_vehicle_model;

create table mi_personal_info(
user_id int primary key auto_increment,
user_type varchar(30),
first_name varchar(50),
last_name varchar(50),
gender varchar(10),
dob date,
email varchar(100),
phone varchar(15),
mobile varchar(15),
city varchar(50),
state varchar(50),
country varchar(50),
national_id varchar(30),
nationality varchar(30),
status varchar(20),
added_on date,
added_by varchar(50)
);
desc mi_personal_info;

create table mi_login_user(
login_id int primary key auto_increment,
password varchar(100),
user_id int,
lead_id int,
user_type varchar(30),
status varchar(20),
added_on date,
added_by varchar(50),
foreign key(user_id) references mi_personal_info(user_id)
);
desc mi_login_user;

CREATE TABLE mi_broker (
    broker_id INT PRIMARY KEY AUTO_INCREMENT,
    broker_name VARCHAR(50),
    broker_org_name VARCHAR(100),
    contact_no VARCHAR(15),
    address VARCHAR(100),
    status VARCHAR(20),
    added_on DATE,
    added_by VARCHAR(50)
);
desc mi_broker;

create table mi_quote(
quote_id int primary key auto_increment,
user_id int,
vehicle_model_id int,
coverage_type varchar(50),
premium decimal(10,2),
quote_date date,
foreign key(user_id) references mi_personal_info(user_id),
foreign key(vehicle_model_id) references mi_vehicle_model(model_id)
);
desc mi_quote;
create table mi_payment(
payment_id int primary key auto_increment,
quote_id int,
payment_amount decimal(10,2),
payment_mode varchar(30),
payment_date date,
status varchar(20),
foreign key(quote_id) references mi_quote(quote_id)
);
desc mi_payment;
create table mi_policy(
policy_id int primary key auto_increment,
quote_id int,
policy_number varchar(50),
issue_date date,
expiry_date date,
status varchar(20),
foreign key(quote_id) references mi_quote(quote_id)
);
desc mi_policy;

insert into mi_vehicle_make(make_desc,status,added_on,added_by)values
('Maruti','Active','2026-01-01','Admin'),
('Hyundai','Active','2026-01-01','Admin'),
('Honda','Active','2026-01-01','Admin'),
('Toyato','Active','2026-01-01','Admin'),
('Mahindra','Active','2026-01-01','Admin'),
('Tata','Active','2026-01-01','Admin'),
('Kia','Active','2026-01-01','Admin'),
('Renault','Active','2026-01-01','Admin'),
('Nissan','Active','2026-01-01','Admin'),
('Ford','Active','2026-01-01','Admin'),
('Volkswagen','Active','2026-01-01','Admin'),
('Skoda','Active','2026-01-01','Admin'),
('MG','Active','2026-01-01','Admin'),
('Jeep','Active','2026-01-01','Admin'),
('BMW','Active','2026-01-01','Admin'),
('Audi','Active','2026-01-01','Admin'),
('Mercedes','Active','2026-01-01','Admin'),
('Volvo','Active','2026-01-01','Admin'),
('Lexus','Active','2026-01-01','Admin'),
('Suzuki','Active','2026-01-01','Admin'),
('Isuzu','Active','2026-01-01','Admin'),
('Mitsubishi','Active','2026-01-01','Admin'),
('Chevrolet','Active','2026-01-01','Admin'),
('Fiat','Active','2026-01-01','Admin'),
('Jaguar','Active','2026-01-01','Admin');
select*from mi_vehicle_make;

insert into mi_vehicle_model(model_desc,make_id,status,added_on,added_by)values
('Swift',1,'Active','2026-01-01','Admin'),
('Baleno',2,'Active','2026-01-01','Admin'),
('City',3,'Active','2026-01-01','Admin'),
('Innova',4,'Active','2026-01-01','Admin'),
('XUV700',5,'Active','2026-01-01','Admin'),
('Nexon',6,'Active','2026-01-01','Admin'),
('Seltos',7,'Active','2026-01-01','Admin'),
('Kwid',8,'Active','2026-01-01','Admin'),
('Magnite',9,'Active','2026-01-01','Admin'),
('EcoSport',10,'Active','2026-01-01','Admin'),
('Polo',11,'Active','2026-01-01','Admin'),
('Slavia',12,'Active','2026-01-01','Admin'),
('Hector',13,'Active','2026-01-01','Admin'),
('Compass',14,'Active','2026-01-01','Admin'),
('X5',15,'Active','2026-01-01','Admin'),
('A6',16,'Active','2026-01-01','Admin'),
('C-Class',17,'Active','2026-01-01','Admin'),
('XC60',18,'Active','2026-01-01','Admin'),
('ES300',19,'Active','2026-01-01','Admin'),
('Brezza',20,'Active','2026-01-01','Admin'),
('D-Max',21,'Active','2026-01-01','Admin'),
('Pajero',22,'Active','2026-01-01','Admin'),
('Cruze',23,'Active','2026-01-01','Admin'),
('Punto',24,'Active','2026-01-01','Admin'),
('XF',25,'Active','2026-01-01','Admin');
select*from mi_vehicle_model;

INSERT INTO mi_personal_info
(user_type,first_name,last_name,gender,dob,email,phone,mobile,city,state,country,national_id,nationality,status,added_on,added_by)
VALUES
('Customer','Arun','Kumar','Male','1998-01-10','arun1@gmail.com','0411111111','9876500001','Chennai','Tamil Nadu','India','1001','Indian','Active','2026-01-01','Admin'),
('Customer','Priya','Devi','Female','1999-02-12','priya2@gmail.com','0411111112','9876500002','Madurai','Tamil Nadu','India','1002','Indian','Active','2026-01-01','Admin'),
('Customer','Rahul','Raj','Male','1997-03-15','rahul3@gmail.com','0411111113','9876500003','Salem','Tamil Nadu','India','1003','Indian','Active','2026-01-01','Admin'),
('Customer','Kavin','M','Male','1998-04-20','kavin4@gmail.com','0411111114','9876500004','Coimbatore','Tamil Nadu','India','1004','Indian','Active','2026-01-01','Admin'),
('Customer','Divya','S','Female','1999-05-18','divya5@gmail.com','0411111115','9876500005','Trichy','Tamil Nadu','India','1005','Indian','Active','2026-01-01','Admin'),
('Customer','Surya','K','Male','1998-06-21','surya6@gmail.com','0411111116','9876500006','Erode','Tamil Nadu','India','1006','Indian','Active','2026-01-01','Admin'),
('Customer','Meena','R','Female','1997-07-11','meena7@gmail.com','0411111117','9876500007','Vellore','Tamil Nadu','India','1007','Indian','Active','2026-01-01','Admin'),
('Customer','Ajay','P','Male','1996-08-13','ajay8@gmail.com','0411111118','9876500008','Thanjavur','Tamil Nadu','India','1008','Indian','Active','2026-01-01','Admin'),
('Customer','Nila','T','Female','1998-09-14','nila9@gmail.com','0411111119','9876500009','Karur','Tamil Nadu','India','1009','Indian','Active','2026-01-01','Admin'),
('Customer','Vijay','A','Male','1995-10-15','vijay10@gmail.com','0411111120','9876500010','Chennai','Tamil Nadu','India','1010','Indian','Active','2026-01-01','Admin'),
('Customer','Anu','B','Female','1998-11-16','anu11@gmail.com','0411111121','9876500011','Madurai','Tamil Nadu','India','1011','Indian','Active','2026-01-01','Admin'),
('Customer','Manoj','R','Male','1997-12-17','manoj12@gmail.com','0411111122','9876500012','Tirunelveli','Tamil Nadu','India','1012','Indian','Active','2026-01-01','Admin'),
('Customer','Keerthi','L','Female','1999-01-18','keerthi13@gmail.com','0411111123','9876500013','Erode','Tamil Nadu','India','1013','Indian','Active','2026-01-01','Admin');
INSERT INTO mi_personal_info
(user_type,first_name,last_name,gender,dob,email,phone,mobile,city,state,country,national_id,nationality,status,added_on,added_by)
VALUES
('Customer','Ramesh','K','Male','1998-02-19','ramesh14@gmail.com','0411111124','9876500014','Chennai','Tamil Nadu','India','1014','Indian','Active','2026-01-01','Admin'),
('Customer','Sneha','P','Female','1997-03-20','sneha15@gmail.com','0411111125','9876500015','Salem','Tamil Nadu','India','1015','Indian','Active','2026-01-01','Admin'),
('Customer','Hari','M','Male','1999-04-21','hari16@gmail.com','0411111126','9876500016','Vellore','Tamil Nadu','India','1016','Indian','Active','2026-01-01','Admin'),
('Customer','Lavanya','S','Female','1998-05-22','lavanya17@gmail.com','0411111127','9876500017','Madurai','Tamil Nadu','India','1017','Indian','Active','2026-01-01','Admin'),
('Customer','Praveen','T','Male','1997-06-23','praveen18@gmail.com','0411111128','9876500018','Karur','Tamil Nadu','India','1018','Indian','Active','2026-01-01','Admin'),
('Customer','Deepa','R','Female','1996-07-24','deepa19@gmail.com','0411111129','9876500019','Erode','Tamil Nadu','India','1019','Indian','Active','2026-01-01','Admin'),
('Customer','Naveen','V','Male','1998-08-25','naveen20@gmail.com','0411111130','9876500020','Trichy','Tamil Nadu','India','1020','Indian','Active','2026-01-01','Admin'),
('Customer','Pooja','G','Female','1999-09-26','pooja21@gmail.com','0411111131','9876500021','Coimbatore','Tamil Nadu','India','1021','Indian','Active','2026-01-01','Admin'),
('Customer','Ashok','N','Male','1997-10-27','ashok22@gmail.com','0411111132','9876500022','Thanjavur','Tamil Nadu','India','1022','Indian','Active','2026-01-01','Admin'),
('Customer','Rekha','D','Female','1998-11-28','rekha23@gmail.com','0411111133','9876500023','Chennai','Tamil Nadu','India','1023','Indian','Active','2026-01-01','Admin'),
('Customer','Sathish','J','Male','1999-12-29','sathish24@gmail.com','0411111134','9876500024','Madurai','Tamil Nadu','India','1024','Indian','Active','2026-01-01','Admin'),
('Customer','Geetha','A','Female','1998-01-30','geetha25@gmail.com','0411111135','9876500025','Salem','Tamil Nadu','India','1025','Indian','Active','2026-01-01','Admin');
select*from mi_personal_info;

INSERT INTO mi_login_user
(password,user_id,lead_id,user_type,status,added_on,added_by)
VALUES
('pass101',1,101,'Customer','Active','2026-01-01','Admin'),
('pass102',2,101,'Customer','Active','2026-01-01','Admin'),
('pass103',3,102,'Customer','Active','2026-01-01','Admin'),
('pass104',4,102,'Customer','Active','2026-01-01','Admin'),
('pass105',5,103,'Customer','Active','2026-01-01','Admin'),
('pass106',6,103,'Customer','Active','2026-01-01','Admin'),
('pass107',7,104,'Customer','Active','2026-01-01','Admin'),
('pass108',8,104,'Customer','Active','2026-01-01','Admin'),
('pass109',9,105,'Customer','Active','2026-01-01','Admin'),
('pass110',10,105,'Customer','Active','2026-01-01','Admin'),
('pass111',11,106,'Customer','Active','2026-01-01','Admin'),
('pass112',12,106,'Customer','Active','2026-01-01','Admin'),
('pass113',13,107,'Customer','Active','2026-01-01','Admin'),
('pass114',14,107,'Customer','Active','2026-01-01','Admin'),
('pass115',15,108,'Customer','Active','2026-01-01','Admin'),
('pass116',16,108,'Customer','Active','2026-01-01','Admin'),
('pass117',17,109,'Customer','Active','2026-01-01','Admin'),
('pass118',18,109,'Customer','Active','2026-01-01','Admin'),
('pass119',19,110,'Customer','Active','2026-01-01','Admin'),
('pass120',20,110,'Customer','Active','2026-01-01','Admin'),
('pass121',21,111,'Customer','Active','2026-01-01','Admin'),
('pass122',22,111,'Customer','Active','2026-01-01','Admin'),
('pass123',23,112,'Customer','Active','2026-01-01','Admin'),
('pass124',24,112,'Customer','Active','2026-01-01','Admin'),
('pass125',25,113,'Customer','Active','2026-01-01','Admin');
select*from mi_login_user;

INSERT INTO mi_broker
(broker_name,broker_org_name,contact_no,address,status,added_on,added_by)
VALUES
('Broker1','ABC Insurance','9000000001','Chennai','Active','2026-01-01','Admin'),
('Broker2','XYZ Insurance','9000000002','Madurai','Active','2026-01-01','Admin'),
('Broker3','Secure Life','9000000003','Coimbatore','Active','2026-01-01','Admin'),
('Broker4','Safe Drive','9000000004','Salem','Active','2026-01-01','Admin'),
('Broker5','Trust Motor','9000000005','Trichy','Active','2026-01-01','Admin'),
('Broker6','Prime Insurance','9000000006','Vellore','Active','2026-01-01','Admin'),
('Broker7','Royal Brokers','9000000007','Erode','Active','2026-01-01','Admin'),
('Broker8','Speed Cover','9000000008','Karur','Active','2026-01-01','Admin'),
('Broker9','Drive Secure','9000000009','Thanjavur','Active','2026-01-01','Admin'),
('Broker10','Life Protect','9000000010','Tirunelveli','Active','2026-01-01','Admin'),
('Broker11','Motor Plus','9000000011','Chennai','Active','2026-01-01','Admin'),
('Broker12','Shield Insurance','9000000012','Madurai','Active','2026-01-01','Admin'),
('Broker13','Universal Brokers','9000000013','Coimbatore','Active','2026-01-01','Admin'),
('Broker14','City Insurance','9000000014','Salem','Active','2026-01-01','Admin'),
('Broker15','Best Cover','9000000015','Trichy','Active','2026-01-01','Admin'),
('Broker16','Future Secure','9000000016','Vellore','Active','2026-01-01','Admin'),
('Broker17','A1 Brokers','9000000017','Erode','Active','2026-01-01','Admin'),
('Broker18','Sun Insurance','9000000018','Karur','Active','2026-01-01','Admin'),
('Broker19','Star Brokers','9000000019','Thanjavur','Active','2026-01-01','Admin'),
('Broker20','Global Insurance','9000000020','Tirunelveli','Active','2026-01-01','Admin'),
('Broker21','National Brokers','9000000021','Chennai','Active','2026-01-01','Admin'),
('Broker22','Elite Insurance','9000000022','Madurai','Active','2026-01-01','Admin'),
('Broker23','Smart Cover','9000000023','Coimbatore','Active','2026-01-01','Admin'),
('Broker24','Victory Brokers','9000000024','Salem','Active','2026-01-01','Admin'),
('Broker25','Monarchy Insurance','9000000025','Trichy','Active','2026-01-01','Admin');
select*from mi_broker;

INSERT INTO mi_quote
(user_id,vehicle_model_id,coverage_type,premium,quote_date)
VALUES
(1,1,'Comprehensive',12000,'2026-01-10'),
(2,2,'Third Party',8000,'2026-01-11'),
(3,3,'Comprehensive',13500,'2026-01-12'),
(4,4,'Third Party',8500,'2026-01-13'),
(5,5,'Comprehensive',14000,'2026-01-14'),
(6,6,'Third Party',8200,'2026-01-15'),
(7,7,'Comprehensive',15000,'2026-01-16'),
(8,8,'Third Party',7900,'2026-01-17'),
(9,9,'Comprehensive',16000,'2026-01-18'),
(10,10,'Third Party',8100,'2026-01-19'),
(11,11,'Comprehensive',17000,'2026-01-20'),
(12,12,'Third Party',8300,'2026-01-21'),
(13,13,'Comprehensive',14500,'2026-01-22'),
(14,14,'Third Party',8700,'2026-01-23'),
(15,15,'Comprehensive',18000,'2026-01-24'),
(16,16,'Third Party',9000,'2026-01-25'),
(17,17,'Comprehensive',19000,'2026-01-26'),
(18,18,'Third Party',9200,'2026-01-27'),
(19,19,'Comprehensive',15500,'2026-01-28'),
(20,20,'Third Party',9500,'2026-01-29'),
(21,21,'Comprehensive',16500,'2026-01-30'),
(22,22,'Third Party',9800,'2026-01-31'),
(23,23,'Comprehensive',17500,'2026-02-01'),
(24,24,'Third Party',9900,'2026-02-02'),
(25,25,'Comprehensive',20000,'2026-02-03');
select*from mi_quote;

INSERT INTO mi_payment
(quote_id,payment_amount,payment_mode,payment_date,status)
VALUES
(1,12000,'UPI','2026-01-10','Success'),
(2,8000,'Card','2026-01-11','Success'),
(3,13500,'Net Banking','2026-01-12','Success'),
(4,8500,'Cash','2026-01-13','Success'),
(5,14000,'UPI','2026-01-14','Success'),
(6,8200,'Card','2026-01-15','Success'),
(7,15000,'Net Banking','2026-01-16','Success'),
(8,7900,'Cash','2026-01-17','Success'),
(9,16000,'UPI','2026-01-18','Success'),
(10,8100,'Card','2026-01-19','Success'),
(11,17000,'Net Banking','2026-01-20','Success'),
(12,8300,'Cash','2026-01-21','Success'),
(13,14500,'UPI','2026-01-22','Success'),
(14,8700,'Card','2026-01-23','Success'),
(15,18000,'Net Banking','2026-01-24','Success'),
(16,9000,'Cash','2026-01-25','Success'),
(17,19000,'UPI','2026-01-26','Success'),
(18,9200,'Card','2026-01-27','Success'),
(19,15500,'Net Banking','2026-01-28','Success'),
(20,9500,'Cash','2026-01-29','Success'),
(21,16500,'UPI','2026-01-30','Success'),
(22,9800,'Card','2026-01-31','Success'),
(23,17500,'Net Banking','2026-02-01','Success'),
(24,9900,'Cash','2026-02-02','Success'),
(25,20000,'UPI','2026-02-03','Success');
select*from mi_payment;

INSERT INTO mi_policy
(quote_id,policy_number,issue_date,expiry_date,status)
VALUES
(1,'POL1001','2026-01-10','2027-01-09','Active'),
(2,'POL1002','2026-01-11','2027-01-10','Active'),
(3,'POL1003','2026-01-12','2027-01-11','Active'),
(4,'POL1004','2026-01-13','2027-01-12','Active'),
(5,'POL1005','2026-01-14','2027-01-13','Active'),
(6,'POL1006','2026-01-15','2027-01-14','Active'),
(7,'POL1007','2026-01-16','2027-01-15','Active'),
(8,'POL1008','2026-01-17','2027-01-16','Active'),
(9,'POL1009','2026-01-18','2027-01-17','Active'),
(10,'POL1010','2026-01-19','2027-01-18','Active'),
(11,'POL1011','2026-01-20','2027-01-19','Active'),
(12,'POL1012','2026-01-21','2027-01-20','Active'),
(13,'POL1013','2026-01-22','2027-01-21','Active'),
(14,'POL1014','2026-01-23','2027-01-22','Active'),
(15,'POL1015','2026-01-24','2027-01-23','Active'),
(16,'POL1016','2026-01-25','2027-01-24','Active'),
(17,'POL1017','2026-01-26','2027-01-25','Active'),
(18,'POL1018','2026-01-27','2027-01-26','Active'),
(19,'POL1019','2026-01-28','2027-01-27','Active'),
(20,'POL1020','2026-01-29','2027-01-28','Active'),
(21,'POL1021','2026-01-30','2027-01-29','Active'),
(22,'POL1022','2026-01-31','2027-01-30','Active'),
(23,'POL1023','2026-02-01','2027-01-31','Active'),
(24,'POL1024','2026-02-02','2027-02-01','Active'),
(25,'POL1025','2026-02-03','2027-02-02','Active');
select*from mi_policy;

select p.user_id,p.first_name,p.last_name,l.user_type,l.status
from mi_personal_info p
inner join mi_login_user l 
on p.user_id=l.user_id;

select p.user_id,p.first_name,q.quote_id,q.premium
from mi_personal_info p 
left join mi_quote q
on p.user_id=q.user_id
union
select p.user_id,p.first_name,q.quote_id,q.premium
from mi_personal_info p 
right join mi_quote q
on p.user_id=q.user_id;

create view vw_customer_quote as 
select p.first_name,
p.last_name,
q.quote_id,
q.coverage_type,
q.premium
from mi_personal_info p 
inner join mi_quote q
on p.user_id=q.user_id;
select*from vw_customer_quote;

create view vw_payment_details as
select q.quote_id,
py.payment_amount,
py.payment_mode,
py.payment_date,
py.status
from mi_quote q
left join mi_payment py
on q.quote_id =py.quote_id;
select*from vw_payment_details;

create view vw_vehicle_details1 as
select vm.make_desc,md.model_desc
from mi_vehicle_make vm
right join mi_vehicle_model md
on vm.make_id=md.make_id;
select*from vw_vehicle_details1;

Delimiter $$
create procedure GetCustomerDetails(in uid int)
begin
select*from mi_personal_info
where user_id=uid;
end $$
Delimiter ;
call GetCustomerDetails(13);

Delimiter $$
create procedure GetPaymentDetails(inout qid int)
begin
if exists(select 1 from mi_payment where quote_id=qid)then
select * from mi_payment where quote_id=qid;
else
select 'Payment Record Not Found' as Message;
end if;
end $$
Delimiter ;
set @qid=8;
call GetPaymentDetails(@qid);

Delimiter $$
create function GetCustomerNamesql(qid int)
returns varchar(100)
deterministic
begin
declare cname varchar(100);
if exists(
select 1 from mi_personal_info p 
inner join mi_quote q
on p.user_id=q.user_id
where q.quote_id=qid
)then
select concat(p.first_name,p.last_name)into cname
from mi_personal_info p 
left join mi_quote q
on p.user_id=q.user_id
where q.quote_id=qid;
else
set cname='Customer Not found';
end if;
return cname;
end $$
Delimiter ;

select GetCustomerNamesql(7);
select quote_id,GetCustomerNamesql(quote_id) as Customer_name from mi_quote;

Delimiter $$
create trigger trg_payment_check
before insert on mi_payment
for each row
begin
if NEW.payment_amount<=0 then
signal sqlstate '45000'
set message_text='Payment amount must be greater than 0';
else
set NEW.status='Paid';
end if;
end $$
Delimiter ;

insert into mi_payment(payment_id,quote_id,payment_amount,payment_mode,payment_date,status)
value(26,10,5000,'UPI',curdate(),'');
select *from mi_payment where payment_id=26;

insert into mi_payment(payment_id,quote_id,payment_amount,payment_mode,payment_date,status)
values(27,10,0,'Cash',current_date(),'');
select*from mi_payment where payment_id=27;

set global event_scheduler=on;
Delimiter $$
create event ev_update_payment on schedule every 1 day
do
begin
update mi_payment 
set status='Pending'
where payment_date<current_timestamp();
end $$
Delimiter ;
show events;

create index idx_quote on mi_quote(quote_id);
show index from mi_quote;

select user();
create user 'projectuser'@'localhost' identified by 'project123';
grant select,insert,update on motoramate.*to 'projectuser'@'localhost';
show grants for 'projectuser'@'localhost';

revoke update on motoramate.* from 'projectuser'@'localhost';
show grants for 'projectuser'@'localhost';