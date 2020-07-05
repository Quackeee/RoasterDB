set global log_bin_trust_function_creators = 1;

delimiter //
create procedure sprzedaj(ktore int, ile int)
begin
update moje_paczki set liczba = cast(liczba as signed) - ile where ID = ktore;
update moja_palarnia set budzet = budzet + ile * (select sum(temp.cena) from (select cena from moje_paczki where ID = ktore) temp);
end//

create procedure wypal(ktore int, ile int, z_jaka_obrobka enum('washed','natural','honey'), jak_mocno enum('jasne','średnie','ciemne'), pod_metode char(40), bedzie_speciality enum ("1","0"), ile_punktow float, jakie_wady text, jakie_body text, jaka_kwasowosc text, jaka_slodycz text)
begin
update ziarna set waga = waga - ile where id_z = ktore;
update moja_palarnia set budzet = budzet - ile * (select sum(temp.cena) from (select cena from ziarna where id_z = ktore) temp);
insert into wypalone (waga, zalecana_metoda, jest_speciality, punktacja, wady, body, kwasowosc, slodycz)
values (ile, pod_metode, bedzie_speciality, ile_punktow, jakie_wady, jakie_body, jaka_kwasowosc, jaka_slodycz);
insert into palenie
values (
(select max(temp.id_r) from (select id_r from wypalone) temp),
(select temp.nazwa from (select nazwa from moja_palarnia) temp),
ktore, jak_mocno, z_jaka_obrobka, now());
end//


delimiter ;