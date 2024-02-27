-- Create an database which contains a Restourant Menu Card,Customer Details,
-- Order Details,Billing Details,Feedback about food
-- Database name= Restourant
-- Table 1= Menucard---> 1.Menu Id,2.Region type 3.Dish Name 4.Dish Prize 
-- Table 2= Customer---> 1. Name 2. Age 3.Location 4.Contact_No. 5.Table for- couple/family 6.Members of chair req.- 2/4/6
-- Table 3= Order -----> 1. Menu Id 2. Food_Type=Region type 3.Food_Name=Dish name 4.Quantity-1/2/3 dish 5.Table No. 6.Name of customer
-- Table 4= Billing----> 1. Name of customer 2.Dish name 3.Dish quantity=Quantity-1/2/3 dish 4.Prize per dish 5.Total Bill 6.Mode of Payement
-- Table 5= Feedback---> 1.Type of food = regional_type 2.Rating for quality-Good/Better/Best 3.Rating for quantity-Good/Better/Best 4.Overall rating--Good/Better/Best 5.Improvement-increase/decrease prize,Quality of food,platting service,etc.


create database Restourant;
use Restourant;
create table menucard (Menu_Id int,Region_Type varchar(20),Dish_Name varchar(20),Dish_Prize int);
create table customer (Name_of_customer varchar(20),Age char(20),Location varchar(20),Contact_no int,Table_for char(20), Member_of_chair int);
create table Order_details (Menu_Id int,Food_Type varchar (20),Food_Name varchar (20),Quantity int,Table_no int,Name_of_customer varchar(20));
create table billing (Name_of_cutomer varchar(20),dish_name varchar(20),dish_quantity int,price_per_dish int,total_bill int,mode_of_payment varchar(20));
create table feedback (type_of_food_ordered varchar(20), rating_for_quality varchar(20),rating_for_quantity varchar(20), overall_rating varchar(20),improvement varchar(20));

-- Creating Menucard of Restourant
insert into menucard values (001,'Maharashtrian','Vada-Pav',12),(002,'Maharashtrian','Pohe',15),(003,'Maharashtrian','Misal-Pav',25),(004,'Maharashtrian','Upama',20),
(005,'Maharashtrian','Shira',20),(006,'Maharashtrian','Kanda-Bhaji',25),(007,'Maharashtrian','Puri-Bhaji',30),
(008,'South-Indian','Medu-Vada',25),(009,'South-Indian','Idli-Chatni',30),(010,'South-Indian','Idli-Sambhar',25),(011,'South-Indian','Masala-Dosa',40),
(0012,'South-Indian','Mung-vada',35),(013,'South-Indian','Uttapa',35),(014,'South-Indian','Paysam',30),(015,'North-Indian','Aloo-Paratha',40),(016,'North-Indian','Chole-Bature',40),
(017,'North-Indian','Lassi',20),(018,'Maharashtrian','Tea',10),(019,'Maharashtrian','Coffee',15),(020,'Maharashtrian','Veg-Rice-Plate',70),
(021,'Maharashtrian','Chicken-Rice-Plate',100),(022,'Maharashtrian','Egg-Rice-Plate',90),(023,'Chinees','Veg-Platter',90),(024,'Chinees','NonVeg-Platter',120),
(025,'Italian','Pasta-Platter',150);

select*from menucard;

-- Creating Restourant visiting Customers
-- Table 2= Customer--->1. Name 2. Age 3.Location 4.Contact_No. 5.Table for- couple/family 6.Members of chair req.- 2/4/6
-- create table customer (Name_of_customer varchar(20),Age char(20),
-- Location varchar(20),Contact_no int,Table_for char(20), Member_of_chair int);

insert into customer values ('Seeta Shrama',25,'Mumbai',8985865,'Family',4),('Geeta Mishra',22,'Pune',8711865,'couple',2),
('Rajni Rathod',30,'Navi-Mumbai',9175865,'Family',6),('Amey Singh',27,'Panvel',8985241,'couple',2),
('Nimay Mehta',40,'Mumbai',9191826,'Family',8),('Nirman Gangoli',50,'Pune',9195656,'couple',2),
('Simran Mhatre',35,'Pune-Chinchawali',8171826,'couple',2),('Shreya Ghosh',36,'Satara',9191756,'couple',4),
('Nishan Potdar',40,'Panvel',9191111,'Family',6),('Santosh Rastogi',40,'Vai',8971825,'Family',3);
select * from customer;

-- Table 3= Order -> 1. Menu Id 2. Food_Type=Region type 3.Food_Name=Dish name 4.Quantity-1/2/3 dish 5.Table No. 6.Name of customer
-- create table Order_details (Menu_Id int,Food_Type varchar (20),Food_Name varchar (20),
-- Quantity int,Table_no int,Name_of_customer varchar(20));
insert into order_details values (002,'Maharashtrian','Pohe',2,1,'Geeta Mishra'), (001,'Maharashtrian','Vada-Pav',3,2,'Nirman Gangoli'),
(011,'South-Indian','Masala-Dosa',2,2,'Nirman Gangoli'),(009,'South-Indian','Idli-Chatni',2,1,'Geeta Mishra'),
(012,'South-Indian','Mung-vada',4,3,'Amey Singh'),(015,'North-Indian','Aloo-Paratha',2,3,'Amey Singh'),
(020,'Maharashtrian','Veg-Rice-Plate',3,4,'Santosh Rastogi'),(017,'North-Indian','Lassi',3,4,'Santosh Rastogi'),
(021,'Maharashtrian','Chicken-Rice-Plate',6,5,'Nishan Potdar'),(019,'Maharashtrian','Coffee',2,6,'Simran Mhatre'),
(010,'South-Indian','Idli-Sambhar',2,6,'Simran Mhatre'),(021,'Maharashtrian','Chicken-Rice-Plate',4,7,'Shreya Ghosh'),
(022,'Maharashtrian','Egg-Rice-Plate',8,8,'Nimay Mehta'),(024,'Chinees','NonVeg-Platter',4,9,'Seeta Shrama'),
(025,'Italian','Pasta-Platter',6,10,'Rajni Rathod'),(019,'Maharashtrian','Coffee',4,9,'Seeta Shrama');
select * from order_details;
select*from menucard;
-- Table 4= Billing----> 1. Name of customer 2.Dish name 3.Dish quantity=Quantity-1/2/3 dish 
-- 4.Prize per dish 5.Total Bill 6.Mode of Payement
-- create table billing (Name_of_cutomer varchar(20),dish_name varchar(20),dish_quantity int,
-- price_per_dish int,total_bill int,mode_of_payment varchar(20));

insert into billing values ('Geeta Mishra','Pohe',2,15,30,'Cash'),('Nirman Gangoli','Vada-Pav',3,10,30,'Paytm'),
('Nirman Gangoli','Masala-Dosa',3,40,120,'Paytm'),('Geeta Mishra','Idli-Chatni',2,30,60,'Cash'),
('Amey Singh','Mung-vada',4,35,140,'UPI'),('Amey Singh','Aloo-Paratha',4,40,160,'UPI'),
('Santosh Rastogi','Veg-Rice-Plate',3,70,210,'Cash'),('Santosh Rastogi','Lassi',3,20,60,'Cash'),
('Nishan Potdar','Chicken-Rice-Plate',6,100,600,'UPI-Phonepay'),
('Simran Mhatre','Coffee',2,15,30,'UPI-GooglePay'),('Simran Mhatre','Idli-Sambhar',2,30,60,'UPI-GooglePay'),
('Shreya Ghosh','Chicken-Rice-Plate',4,100,400,'UPI-GooglePay'),
('Nimay Mehta','Egg-Rice-Plate',8,90,720,'Cash'),('Seeta Shrama','NonVeg-Platter',4,120,480,'Cash'),
('Rajni Rathod','Pasta-Platter',6,150,900,'UPI-Phonepay'),('Seeta Shrama','Coffee',4,15,60,'Cash');
select * from billing;

-- Table 5= Feedback---> 1.Type of food = regional_type 2.Rating for quality-Good/Better/Best 
-- 3.Rating for quantity-Good/Better/Best 4.Overall rating--Good/Better/Best 
-- 5.Improvement-increase/decrease prize,Quality of food,platting service,etc.

-- create table feedback (type_of_food_ordered varchar(20), rating_for_quality varchar(20),
-- rating_for_quantity varchar(20), overall_rating varchar(20),improvement varchar(20));
select * from order_details;
insert into feedback values('Maharashtrian','Best','Good','Better','Improve Platting'),
('South-Indian','Good','Good','Better','Improve Quantity'),('North-Indian','Best','Better','Better','Improve Quantity'),
('Chinees','Best','Better','Better','Improve Quantity'),('Italian','Good','Better','Better','Improve Quality');
select * from feedback;

-- Above is the available table data present in Restourant Database
-- Do Analysis to create table of following :-
-- Manipulate this all table and make one table that shows maximum customer visited from 
-- particular location,Order for dish,whether visited are in couple or family group,
-- Using maximum mode of payement,giving best feedback about which region of food

-- Sorting Menu Card As per rate of dish
select * from menucard;
select * from billing;
select * from order_details;
select * from feedback;

-- What is the total amount customer spent on regional food?
 
-- join the 2 tables col_1 Menucard and col_2 billing to get common regional type
-- Each Food_Type ranking based of odered food_name on each order of customer based on each food_type
-- 1st rank c
select*from(
select *,
rank() over (partition by Food_Type order by Quantity asc) as rnk
from order_details) sq
where rnk>=1;

-- Overall Food_Type which is popular among customer
select* from (
select *,
dense_rank() over (partition by Food_Type order by Menu_Id) as dense_rnk
from order_details
) sq
where dense_rnk=1;

-- To find out count of order which are based on food_type
select Food_Type,count(Menu_Id)
from order_details
group by Food_Type
having count(Menu_Id)>1;

-- To find out count of customer based on their mode_of_payment
select mode_of_payment,count(Name_of_cutomer)
from Billing
group by mode_of_payment
having count(Name_of_cutomer)>1;


-- To find of type_of_food_ordered based on Feedback "Best" rating
select* from feedback;
select*from feedback where rating_for_quality='Best' and rating_for_quantity='Better' and
 overall_rating ='Better';

-- To find out from which Type_of_Family whether family or couple visited most our Restourant
select Table_for,count(Name_of_customer)
from customer
group by Table_for
having count(Name_of_customer)>1;

-- To find out from which location customer visisted most to Restourant
select location,count(Name_of_customer)
from customer
group by location
having count(Name_of_customer);
