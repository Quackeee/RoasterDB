create table farma
(
	nazwa char(40) not null,
	wlasciciel char(40) not null,
	kraj char(20),
	region char(30),
	primary key(nazwa)
)
default character set utf8 collate utf8_unicode_ci;

create table ziarna
(
	id_z int unsigned not null auto_increment,
	waga double not null,
	cena double not null,
	wysokosc_upraw int,
	primary key(id_z)
)
default character set utf8 collate utf8_unicode_ci;

create table palarnia
(
	nazwa char(40) not null,
	wlasciciel char(40) not null,
	budzet double not null,
	primary key(nazwa)
)
default character set utf8 collate utf8_unicode_ci;

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
default character set utf8 collate utf8_unicode_ci;

create table paczka
(
	id_p int unsigned not null auto_increment,
	id_r int unsigned not null,
	waga double not null,
	cena double,
	liczba int unsigned not null,
	primary key(id_p),
	foreign key(id_r) references wypalone(id_r)
)
default character set utf8 collate utf8_unicode_ci;

create table zbior
(
id_z int unsigned not null,
nazwa_farmy char(40) not null,
data datetime not null,
primary key (id_z),
foreign key (nazwa_farmy) references farma(nazwa),
foreign key (id_z) references ziarna(id_z)
)
default character set utf8 collate utf8_unicode_ci;

create table palenie(
id_r int unsigned not null,
nazwa_palarni char(40) not null,
id_z int unsigned not null,
stopien enum('jasne','średnie','ciemne'),
obrobka enum('washed','natural','honey'),
data datetime,
primary key(id_r),
foreign key(nazwa_palarni) references palarnia(nazwa),
foreign key(id_z) references ziarna(id_z),
foreign key(id_r) references wypalone(id_r)
)
default character set utf8 collate utf8_unicode_ci;
