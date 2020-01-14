use master
go

IF db_id('ECAVE') IS NOT NULL
BEGIN
    drop database ECAVE
END

--adapter le chemin aux fichiers de données et de logs
CREATE DATABASE ECAVE
	ON  PRIMARY 
	( NAME = 'ECAVE', FILENAME = 'C:\Data\Cours\2019-2020\MA-08\semaine 3\CPNV.mdf' , SIZE = 20480KB , MAXSIZE = 51200KB, FILEGROWTH = 1024KB )
	LOG ON 
	( NAME = 'ECAVE_log', FILENAME = 'C:\Data\Cours\2019-2020\MA-08\semaine 3\CPNV_log.ldf' , SIZE = 10240KB , MAXSIZE = 20480KB , FILEGROWTH = 1024KB)
go

USE ECAVE
go

create table Customers (
	id int identity(1,1) PRIMARY KEY,
	Phone_Number int,
	lastname varchar(50),
	firstname varchar(50),
	Email  varchar(50),
	BillingAddress varchar(50),
	BillingCity varchar(50),
	BillingCode int,
	ShippingAddress varchar(50),
	ShippingCity varchar(50),
	ShippingCode int,
	registrationDate date,

)
create table Items (
	id int identity(1,1) PRIMARY KEY,
	Item_Number int,
	Quntity int,
	firstname varchar(50),
	Email  varchar(50),
	ShippingAddress varchar(50),
	ShippingCity varchar(50),
	ShippingCode int,
	

)
create table Grapjuice (
	id int identity(1,1) PRIMARY KEY,
	grapType varchar(50),
	grapColor  varchar(50),
	BottelSize varchar(50),
	
)
create table WineBottles (
	id int identity(1,1) PRIMARY KEY,
	winename varchar(50),
	BottelSize varchar(50),
	BottelPrice varchar(50),
	Vitage date,
	Stock varchar(50),
	AlcoholPercntage float,
	Sirelnumber int,
	wineColor-id FOREIGN KEY REFERENCES WineColor(id)
	
)
create table WineColor (
	id int identity(1,1) PRIMARY KEY,
	GrapeType varchar(50),
	GrapeColor varchar(50),

	
)
create table Oenologistes (
	id int identity(1,1) PRIMARY KEY,
	Name varchar(50),
	LasteName varchar(50),
	Laboratory varchar(50),
	Certificate varchar(50),

	
)
create table Encaveurs (
	id int identity(1,1) PRIMARY KEY,
	Nom_cave varchar(50), NOT NULL UNIQUE
	Nom_Encaveurs varchar(50),NOT NULL 
	Prenom varchar(20), NOT NULL
	Email varchar(30),NOT NULL UNIQUE
	Adresse varchar (60), NOT NULL
	Phone_number int, NOT NULL UNIQUE 
	Ville varchar (50), NOT NULL
	NPA int,NOT NULL UNIQUE
)


create table Specialite (
	id int identity(1,1) PRIMARY KEY,
	Nom_vin varchar (30), NOT NULL 
	Couleur varchar (20),NOT NULL
	Cepage varchar (20),NOT NULL
)

create table Evenements (

	id int identity (1,1) PRIMARY KEY,
	Date_evenement date, NOT NULL
	Nom_evenement varchar (100), NOT NULL
	Adresse_evenement varchar(100), NOT NULL 
	NPA int, NOT NULL UNIQUE
	Ville varchar (30), NOT NULL UNIQUE
)