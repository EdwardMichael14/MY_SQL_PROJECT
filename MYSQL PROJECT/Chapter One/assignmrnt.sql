CREATE DATABASE Ecommerce;
use ecommerce;
CREATE TABLE user (
	user_id INT PRIMARY KEY,
    name VARCHAR (100),
    email VARCHAR(100) UNIQUE
    );

CREATE TABLE product (
	product_id INT PRIMARY KEY,
    name  VARCHAR (100),
    price VARCHAR (100)
); 

use ecommerce;

CREATE TABLE productOrder (
	noOfItem INT ,
    amountOfOrder VARCHAR (100),
    order_number VARCHAR (100),
     foreign key (user_id) references user(user_id),
    foreign key (product_id) references product(product_id)
);
	
	

