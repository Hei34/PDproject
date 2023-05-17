menu :-
    write('Menu:'), nl,
    write('1. Zenskie'), nl,
    write('2. Meskie'), nl,
    write('3. Unisex'), nl,
    write('Wybierz opcjê (wpisz numer): '),
    read(Opcja),
    wykonaj(Opcja).

wykonaj(1) :-
    write('Wybrano opcjê pierwsz¹.'), nl.

wykonaj(2) :-
    write('Wybrano opcjê drug¹.'), nl,
    menu_druga_opcja.

wykonaj(3) :-
    write('Wybrano opcjê trzeci¹.'), nl.

wykonaj(_) :-
    write('Niepoprawny wybór.'), nl.

menu_druga_opcja :-
    write('Perfumy meskie:'), nl,
    write('1. Pokaz wszystkie'), nl,
    write('2. Wybierz po zapachu'), nl,
    write('3. Wybierz po intensywnosci zapachu'), nl,
    write('Wybierz opcjê (wpisz numer): '),
    read(Opcja),
    wykonaj_druga_opcja(Opcja).

wykonaj_druga_opcja(1) :-
    write('Wybrano opcjê A.'), nl.

wykonaj_druga_opcja(2) :-
    write('Wybrano opcjê B.'), nl.

wykonaj_druga_opcja(3) :-
    write('Wybrano opcjê C.'), nl.

wykonaj_druga_opcja(_) :-
    write('Niepoprawny wybór.'), nl.
