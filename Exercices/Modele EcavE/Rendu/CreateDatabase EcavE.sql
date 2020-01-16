use master
go

IF db_id('ECave') IS NOT NULL
BEGIN
    drop database ECave
END

--adapter le chemin aux fichiers de données et de logs
CREATE DATABASE ECave
	ON  PRIMARY 
	( NAME = 'ECave', FILENAME = 'C\Documents\Github\MA-08\Exercices\E-cave\CPNV.mdf' , SIZE = 20480KB , MAXSIZE = 51200KB, FILEGROWTH = 1024KB )
	LOG ON 
	( NAME = 'ECave_log', FILENAME = 'C\Documents\Github\MA-08\Exercices\E-cave\CPNV_log.ldf' , SIZE = 10240KB , MAXSIZE = 20480KB , FILEGROWTH = 1024KB)
go

USE ECave
go

create table customers (
	id int identity(1,1) PRIMARY KEY,
	phone_number int NOT NULL UNIQUE
	e_mail varchar(50), NOT NULL UNIQUE
	name varchar(50), NOT NULL
	lastname varchar(50), NOT NULL
	biling_address varchar(50), NOT NULL
	biling_city  varchar(50), NOT NULL
	biling_zip int, NOT NULL
	shipping_address varchar(50), NOT NULL
	shipping_city  varchar(50), NOT NULL
	shipping_zip int, NOT NULL
	regestration_date date, NOT NULL
	products_id int  FOREIGN KEY REFERENCES products(id)
	
)

create table cantons (
	id int identity(1,1) PRIMARY KEY,
	canton_name varchar(50), NOT NULL 
	canton_language varchar(50), NOT NULL 
	customers_id int FOREIGN KEY REFERENCES customers(id)
		
)

create table products (
	id int identity(1,1) PRIMARY KEY,
	id_product int, NOT NULL UNIQUE
	quntity int,NOT NULL 
	shipping_address varchar(50), NOT NULL
	shipping_city  varchar(50), NOT NULL
	shipping_zip int, NOT NULL
		
)

create table products_include_wine_grapjuice (
	id int identity(1,1) PRIMARY KEY,
	winebottles_id int FOREIGN KEY REFERENCES Winebottles(id)
	products_id int FOREIGN KEY REFERENCES products(id)
	grapjuice_id int FOREIGN KEY REFERENCES grapjuice(id)
)



create table Wine (
	id int identity(1,1) PRIMARY KEY,
	Sirel_number int, NOT NULL UNIQUE
	wine_Name varchar(50), NOT NULL
	bottel_size float, NOT NULL
	bottel_price float, NOT NULL
	production date, NOT NULL
	stock varchar(50), NOT NULL
	AlcoholPercntage float, NOT NULL
	winecolor_id int FOREIGN KEY REFERENCES winecolor(id)	
)

create table spicalewine (
	id int identity(1,1) PRIMARY KEY,
	wine_Name varchar(50), NOT NULL UNIQUE
	bottel_size float, NOT NULL
	bottel_price float, NOT NULL
	production date, NOT NULL
	AlcoholPercntage float, NOT NULL
	winecolor_id int FOREIGN KEY REFERENCES winecolor(id)	
)

/* contrainte de domaine*/ 
create table Winecolor (
	id int identity(1,1) PRIMARY KEY,
	Sirel_number int, NOT NULL UNIQUE
	wine_color varchar(50), NOT NULL ( wine_color = "red" AND wine_color = "white" AND wine_color = "pink" )
	grap_color varchar(50), NOT NULL
	grap_type varchar(50), NOT NULL
		
)

create table oenologiste_savor_wine (
	id int identity(1,1) PRIMARY KEY,
	oenologiste_id int, FOREIGN KEY REFERENCES oenologiste(id)
	Winebottles_id int, FOREIGN KEY REFERENCES Winebottles(id)
	spicalewine_id int, FOREIGN KEY REFERENCES spicalewine(id)
)

create table oenologistes (
	id int identity(1,1) PRIMARY KEY,
	name varchar(50), NOT NULL UNIQUE
	lastname varchar(50), NOT NULL UNIQUE
	laboratory varchar(50), NOT NULL
	certificate varchar(50), NOT NULL UNIQUE
		
)


/* .for people non alcoholic*/

create table grapjuices (
	id int identity(1,1) PRIMARY KEY,
	grap_type varchar(50), NOT NULL 
	grap_color varchar(50), NOT NULL 
	bottelsize varchar(50), NOT NULL
		
)

create table winemakers-produce-winebottle (
	id int identity(1,1) PRIMARY KEY,
	winemaker_id int FOREIGN KEY REFERENCES winemaker(id)
	wine_bottles_id int FOREIGN KEY REFERENCES wine_bottles(id)
	spicalewine_id int FOREIGN KEY REFERENCES spicalewine(id)
	
)

create table winemakers (
	id int identity(1,1) PRIMARY KEY,
	phone_number int NOT NULL UNIQUE
	e_mail varchar(50), NOT NULL UNIQUE
	name_cellar varchar(50), NOT NULL UNIQUE
	name varchar(50), NOT NULL
	lastname varchar(50), NOT NULL
	cellar_address varchar(50), NOT NULL
	cellar_city  varchar(50), NOT NULL
	cellar_zip int, NOT NULL
	events_id int  FOREIGN KEY REFERENCES events(id)
	
)

create table customers_seek_event (
	id int identity(1,1) PRIMARY KEY,
	winemaker_id int FOREIGN KEY REFERENCES winemaker(id)
	wine_bottles_id int FOREIGN KEY REFERENCES wine_bottles(id)
	spicalewine_id int FOREIGN KEY REFERENCES spicalewine(id)
	
)

create table events (
	id int identity(1,1) PRIMARY KEY,
	event_name varchar(50), NOT NULL
	event_date date , NOT NULL UNIQUE
	event_address varchar(50), NOT NULL
	event_city  varchar(50), NOT NULL
	event_zip int, NOT NULL	
)

ALTER TABLE customers.ECave
	  FOREIGN KEY (products_id)
      REFERENCES Sales.SalesReason (products(id))
      ON DELETE CASCADE
      ON UPDATE CASCADE
;





