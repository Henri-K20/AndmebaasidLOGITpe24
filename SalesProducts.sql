create table brands(
brand_id int primary key identity(1,1),
brand_name varchar(25) unique
);


create table categories(
category_id int Primary key identity(1,1),
category_name varchar(25) unique,
);


create table products(
product_id int Primary key identity(1,1),
product_name varchar(25),
brand_id int foreign key (brand_id) references brands(brand_id),
category_id int foreign key (category_id) references categories(category_id),
model_year int,
list_price money
);


create table customers(
customer_id int primary key identity(1,1),
first_name varchar(25) not null,
last_name varchar(25) not null,
phone char(13),
email varchar(40) not null,
street varchar(25),
city varchar(25),
state varchar(25),
zip_code char(5)
);

create table stores(
store_id int primary key identity(1,1),
store_name varchar(25),
phone char(13),
email varchar(40) not null,
street varchar(25),
city varchar(25),
state varchar(25),
zip_code char(5)
);


create table stocks(
store_id int,
product_id int,
primary key(store_id, product_id),
foreign key (store_id) references stores(store_id),
foreign key (product_id) references products(product_id),
quantity int
);


create table staffs(
staff_id int primary key identity(1,1),
first_name varchar(25) not null,
last_name varchar(25) not null,
email varchar(40) not null,
phone char(13),
active bit,
store_id int foreign key (store_id) references stores(store_id),
manager_id int foreign key (manager_id) references staffs(staff_id)
);


create table orders(
order_id int primary key identity(1,1),
customer_id int foreign key (customer_id) references customers(customer_id),
order_status varchar(10) check (order_status = 'Tehtud' or order_status ='Tegematta'),
order_date date,
required_date date,
shipped_date date,
store_id int foreign key (store_id) references stores(store_id),
staff_id int foreign key (staff_id) references staffs(staff_id)
);


create table order_items(
order_id int,
item_id int,
primary key (order_id, item_id),
foreign key (order_id) references orders(order_id),
product_id int foreign key (product_id) references products(product_id),
quantity int,
list_price money,
discount money
);

