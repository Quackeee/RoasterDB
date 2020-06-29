C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqld.exe, Version: 8.0.19 (MySQL Community Server - GPL). started with:
TCP Port: 3306, Named Pipe: MySQL
Time                 Id Command    Argument
2020-06-28T21:36:03.848982Z	   12 Query	drop database if exists roaster
2020-06-28T21:36:03.857439Z	   12 Query	SELECT DATABASE()
2020-06-28T21:36:16.284194Z	   12 Query	create database roaster
2020-06-28T21:36:20.821855Z	   12 Query	SELECT DATABASE()
2020-06-28T21:36:20.822169Z	   12 Init DB	roaster
2020-06-28T21:51:54.216242Z	   12 Query	create table farma
(
	nazwa char(40) not null,
	wlasciciel char(40) not null,
	kraj char(20),
	region char(30),
	primary key(nazwa)
)
default character set utf8 collate utf8_unicode_ci
2020-06-28T21:52:02.554833Z	   12 Query	desc farma
2020-06-28T22:13:55.871245Z	   12 Query	create table ziarna
(
	id_z int unsigned not null auto_increment,
	waga double not null,
	cena double not null,
	wysokosc_upraw int,
	primary key(id_z)
)
default character set utf8 collate utf8_unicode_ci
2020-06-28T22:23:40.897659Z	   12 Query	create table palarnia
(
	nazwa char(40) not null,
	wlasciciel char(40) not null,
	budzet double not null,
	primary key(nazwa)
)
default character set utf8 collate utf8_unicode_ci
2020-06-28T22:28:26.252995Z	   12 Query	create table wypalone
(
	id_r int unsigned not null auto_increment,
	waga double not null,
	zalecana_metoda char(40),
	jest_speciality enum ("1","0") not null,
	punktacja float,
	wady text,
	body text,
	kwasowosc text,
	slodycz text,
	primary key(id_r)
)
default character set utf8 collate utf8_unicode_ci
2020-06-28T22:30:00.845851Z	   12 Query	create table paczka
(
	id_p int unsigned not null auto_increment,
	waga double not null,
	cena double,
	primary key(id_p)
)
default character set utf8 collate utf8_unicode_ci
2020-06-28T22:39:03.491059Z	   12 Query	set global general_log='off'
