set global log_bin_trust_function_creators = 1;

delimiter //
create procedure sprzedaj(ktore int, ile int)
begin
update moje_paczki set liczba = cast(liczba as signed) - ile where ID = ktore;
update moja_palarnia set budzet = budzet + ile * (select sum(temp.cena) from (select cena from moje_paczki where ID = ktore) temp);
end//

delimiter ;