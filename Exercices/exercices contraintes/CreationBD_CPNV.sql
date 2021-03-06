use master
go

IF db_id('Ecommerce') IS NOT NULL
BEGIN
    drop database Ecommerce
END

--adapter le chemin aux fichiers de donn�es et de logs
CREATE DATABASE CPNV
	ON  PRIMARY 
	( NAME = 'Ecommerce', FILENAME = 'C:\Data\Cours\2019-2020\MA-08\semaine 3\CPNV.mdf' , SIZE = 20480KB , MAXSIZE = 51200KB, FILEGROWTH = 1024KB )
	LOG ON 
	( NAME = 'Ecommerce_log', FILENAME = 'C:\Data\Cours\2019-2020\MA-08\semaine 3\CPNV_log.ldf' , SIZE = 10240KB , MAXSIZE = 20480KB , FILEGROWTH = 1024KB)
go

USE CPNV
go

create table courses (
	id int identity(1,1) PRIMARY KEY,
	name varchar(50) NOT NULL
	
)

create table teachers (
	id int identity(1,1) PRIMARY KEY,
	lastname varchar(50), NOT NULL UNIQUE
	firstname varchar(50),NOT NULL UNIQUE
	pourcentage_work int DEFAULT 100 
	pourcentage_work int CHECK (pourcentage_work <=100 AND pourcentage_work >= 0 )
	
	
)

create table teachers_courses (
	id int identity(1,1) PRIMARY KEY,
	teacher_id int FOREIGN KEY REFERENCES teachers(id)
	course_id int FOREIGN KEY REFERENCES courses(id)
)
