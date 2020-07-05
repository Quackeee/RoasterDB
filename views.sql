create view moje_ziarna as
select w.id_r ID, f.kraj kraj, f.region region, pl.data 'data palenia', w.waga waga, w.jest_speciality speciality, punktacja, kwasowosc, slodycz, wady
from wypalone w, palarnia plr, palenie pl, ziarna z, farma f, zbior zb
where
plr.wlasciciel = user() and
pl.nazwa_palarni = plr.nazwa and
pl.id_z = z.id_z and
pl.id_r = w.id_r and
zb.id_z = z.id_z and
zb.nazwa_farmy = f.nazwa;

create view moja_palarnia as
select nazwa, budzet
from palarnia
where
wlasciciel = user();

create view moje_paczki as
select p.id_p ID, z.kraj kraj, z.region region, p.waga waga, concat(p.cena, 'zł') cena, liczba
from paczka p, moje_ziarna z
where
p.id_r = z.ID;