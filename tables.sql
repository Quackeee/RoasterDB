create table farma
(
	nazwa char(40) not null,
	wlasciciel char(40) not null,
	kraj char(20),
	region char(30),
	primary key(nazwa)
)
default character set utf8 collate utf8_unicode_ci

create table ziarna
(
	id_z int unsigned not null auto_increment,
	waga double not null,
	cena double not null,
	wysokosc_upraw int,
	primary key(id_z)
)
default character set utf8 collate utf8_unicode_ci
Query	create table palarnia
(
	nazwa char(40) not null,
	wlasciciel char(40) not null,
	budzet double not null,
	primary key(nazwa)
)
default character set utf8 collate utf8_unicode_ci
create table wypalone
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
create table paczka
(
	id_p int unsigned not null auto_increment,
	waga double not null,
	cena double,
	primary key(id_p)
)
default character set utf8 collate utf8_unicode_ci
