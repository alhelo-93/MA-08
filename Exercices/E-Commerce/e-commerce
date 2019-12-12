use master
go

IF db_id('Ecommerce') IS NOT NULL
BEGIN
    drop database Ecommerce
END

--adapter le chemin aux fichiers de données et de logs
CREATE DATABASE CPNV
	ON  PRIMARY 
	( NAME = 'Ecommerce', FILENAME = 'C:\Data\Cours\2019-2020\MA-08\semaine 3\CPNV.mdf' , SIZE = 20480KB , MAXSIZE = 51200KB, FILEGROWTH = 1024KB )
	LOG ON 
	( NAME = 'Ecommerce_log', FILENAME = 'C:\Data\Cours\2019-2020\MA-08\semaine 3\CPNV_log.ldf' , SIZE = 10240KB , MAXSIZE = 20480KB , FILEGROWTH = 1024KB)
go

USE CPNV
go

create table costumers (
	id int identity(1,1) PRIMARY KEY,
	idcostumer int
	name varchar(50) NOT NULL
	lastname varchar(50) NOT NULL
	Datesubscrabtion Date
	
	
)

create table Products (
	id int identity(1,1) PRIMARY KEY,
	idproduct int
	Brand varchar(50) NOT NULL UNIQUE
	Model varchar(50),NOT NULL UNIQUE
	Description  varchar(50)
	price int 
	stock int 
	
	
)
create table Costumers_Orders(
	id int identity(1,1) PRIMARY KEY,
	order_id int  FOREIGN KEY REFERENCES order_id
	costumer_id int FOREIGN KEY REFERENCES costumer-id
	dateorder date
	 
)
create table Costumers_Promotion(
	id int identity(1,1) PRIMARY KEY,
	NAME varchar(50)
	percentage : int
	 
)
create table Costumers_categories(
	id int identity(1,1) PRIMARY KEY,
	NAME varchar(50)
	
	 
)
create table Oreder_stock(
	id int identity(1,1) PRIMARY KEY,
	NAME varchar(50)
	
	 
)
create table Oreder_benefit(
	id int identity(1,1) PRIMARY KEY,
	order_id int  FOREIGN KEY REFERENCES  order_id
	product_id int FOREIGN KEY REFERENCES product_id
	szock int 
	
	 
)
create table product_benefit(
	id int identity(1,1) PRIMARY KEY,
	order_id int  FOREIGN KEY REFERENCES  order_id
	product_id int FOREIGN KEY REFERENCES product_id
	szock int 
	
	 
)


