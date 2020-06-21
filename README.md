# RoasterDB
A mysql database for a roastery owner
## Plan działania
Podzielimy sobie tę bazę na pliki dla przejrzystości.

__main.sql__ odpalamy na początku pracy z bazą po pobraniu commita. Tam są odpalane pozostałe pliki.
Niestety nie udało mi się zrobić tego tak, żeby działało niezależnie od środowiska,
więc każde z was będzie musiało wstawić dokładną ścieżkę do pliku w odpowiednim miejscu przy każdym zapytaniu `source` (jest zaznaczone w pliku).
Dajcie znać jak będziecie mieli gotowe, to wywalę go ze śledzenia, żeby nie generował konfliktów.

Wszystkie nasze zmiany wprowadzamy jako ciąg zapytań do odpowiedniego pliku.

- **tables.sql** deklaracje tablic
- **views.sql** deklaracje widoków
- **funcs.sql** deklaracje funkcji
- **users.sql** deklaracje użytkowników
- **data.sql** wprowadzenie danych

W miarę możliwości ładnie formatujcie kod. Piszcie jakby to były funkcje w jakimś języku programowania np.

```
create table roastery
(
	id int ... ,
	name text ... ,
	...
)
```
wiecie o co chodzi.