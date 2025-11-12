CREATE DATABASE Ecommerce;
use ecommerce;
CREATE TABLE user (
	id INT PRIMARY KEY,
    name VARCHAR (100),
    email VARCHAR(100) UNIQUE
    );

CREATE TABLE product (
	id INT PRIMARY KEY,
    name  VARCHAR (100),
    price VARCHAR (100)
); 

use ecommerce;

CREATE TABLE productOrder (
	noOfItem INT ,
    amountOfOrder VARCHAR (100)
);
	
	

