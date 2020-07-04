-- dodawanie ról
drop role if exists wlasciciel_palarni;

create role wlasciciel_palarni;
grant select on roaster.moje_ziarna to wlasciciel_palarni;
grant select on roaster.moja_palarnia to wlasciciel_palarni;
grant select on roaster.moje_paczki to wlasciciel_palarni;

-- dodawanie użytkowników
drop user if exists roaster1@localhost;
drop user if exists roaster2@localhost;

create user roaster1@localhost identified by 'Zaq12wsx';
create user roaster2@localhost identified by 'Zaq12wsx';

grant wlasciciel_palarni to roaster1@localhost;
grant wlasciciel_palarni to roaster2@localhost;

set default role wlasciciel_palarni to roaster1@localhost;
set default role wlasciciel_palarni to roaster2@localhost;