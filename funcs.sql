set global log_bin_trust_function_creators = 1;

delimiter //
create procedure sprzedaj(id int, ile int)
begin
update moje_paczki set liczba = cast((cast(liczba as signed) - ile) as unsigned) where ID = id;
update moja_palarnia set budzet = budzet + ile * (select sum(temp.cena) from (select cena from moje_paczki where ID = id) temp);
end//

delimiter ;