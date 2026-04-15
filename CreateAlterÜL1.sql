-- CREATE TABLE, ALTER TABLE laused.
select * from Category
create table Category(
idCategory int primary key identity(1,1),
category_name varchar(15) unique
);
insert into Category values('Joogid'),('Söögid'),('Muu')

drop table Product
select * from Product
create table Product(
idProduct int primary key identity(1,1),
product_name varchar(20),
idCategory int foreign key(idCategory) references Category(idCategory),
price decimal(4,2) not null
);
insert into Product values('Värska', 1, 0.89),('Hamburger',2, 2)



drop table Sale
select * from Sale
create table Sale(
idSale int primary key identity(1,1),
idProduct int foreign key (idProduct) references Product(idProduct),
idCustomer int,
count_pr tinyint,
Date_of_sale date
);
insert into Sale values(1, 1, 3,'2026-04-15')



select * from Customer
create table Customer(
idCustomer int primary key identity (1,1),
customer_name varchar(25) unique,
contact varchar(100)
)


alter table sale add foreign key (idCustomer) references Customer(idCustomer)

insert into Customer values('Kevin','+918723'),('Robert','+512567'),('Härm','supergamer@hotmail.com')

