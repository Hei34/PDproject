%fakty : perfumy
perfumy(ogorkowe, kwiatowe, swieze, unisex).
perfumy(woda_kolonska, drzewne, intensywne, meskie).
perfumy(og_kush, kwiatowe, intensywne, unisex).
perfumy(pomaranczowe,owocowe, lagodne, damskie).
perfumy(czekoladazbananem, owocowe, ekscentryczne, unisex).
perfumy(cytusowe, owocowe, lagodne, unisex).
perfumy(wisnia, kwiatowe, swieze, damskie).
perfumy(sandaly, drzewne, ekscentryczne, meskie).
perfumy(olej_rzep, kwiatowe, lagodne, damskie).
perfumy(owocelesne, owocowe, intensywne, unisex).
perfumy(black_orchid, kwiatowe, intensywne, damskie).
perfumy(velvet_rose, kwiatowe, lagodne, damskie).
perfumy(citrus_splash, owocowe, swieze, unisex).


%regu³y do wyszukiwañ
znajdz_dla_plec(Perfumy, Plec):-
    perfumy(Perfumy,_,_,Plec).
znajdz_dla_zapach(Perfumy, Zapach):-
    perfumy(Perfumy,_,Zapach,_).
wyswietl_wszystkie(Perfum):-
    perfumy(Perfum,_,_,_).
%regu³y do wyœwietlania z menu
%
wyswietl_wedlug_plec(Plec):-
    perfumy(Perfum,_,_,Plec),
    write(Perfum),
    nl,
    fail.
wyswietl_wedlug_intensywnosc(Intensywnosc,Plec):-
    perfumy(Perfum,_,Intensywnosc,Plec),
    write(Perfum),
    nl,
    fail.

wyswietl_wedlug_pochodzenia(Pochodzenie,Plec):-
    perfumy(Perfum,Pochodzenie,_,Plec),
    write(Perfum),
    nl,
    fail.

%menu do wygodnego wyszukiwania perfum
menu :-
    write('Menu:'), nl,
    write('1. Zenskie'), nl,
    write('2. Meskie'), nl,
    write('3. Unisex'), nl,
    write('Wybierz opcjê (wpisz numer): '),
    read(Opcja),
    wykonaj(Opcja).

wykonaj(1) :-
    write('ZENSKIE.'), nl,
    menu_druga_opcja(damskie).

wykonaj(2) :-
    write('MESKIE.'), nl,
    menu_druga_opcja(meskie).

wykonaj(3) :-
    write('UNISEX'), nl,
    menu_druga_opcja(unisex).

menu_druga_opcja(Plec) :-
    write('1. Pokaz wszystkie'), nl,
    write('2. Wybierz po pochodzeniu'), nl,
    write('3. Wybierz po intensywnosci zapachu'), nl,
    write('Wybierz opcjê (wpisz numer): '),
    read(Opcja),
    wykonaj_druga_opcja(Opcja, Plec).

wykonaj_druga_opcja(1 ,Plec) :-
    write('Wszystkie.'), nl,
    wyswietl_wedlug_plec(Plec).

wykonaj_druga_opcja(2, Plec) :-
    pomaluj("WEDLUG POCHODZENIA:"),
    menu_pochodzenie(Plec).

wykonaj_druga_opcja(3, Plec) :-
    pomaluj("WEDLUG INTENSYWNOSCI:"),
    menu_zapach(Plec).

% todo cofanie w menu,
% komentarze do funkcji i menu
menu_zapach(Plec) :-
    write('1. Pokaz wszystkie'), nl,
    write('2. Lagodne'), nl,
    write('3. Intensywne'), nl,
    write('4. Ekscentryczne'), nl,
    write('5. Swierze'), nl,
    write('Wybierz opcjê (wpisz numer): '),
    read(Opcja),
    wykonaj_trzecia_opcja(Opcja, Plec).

wykonaj_trzecia_opcja(1 ,Plec) :-
    pomaluj("==WSZYSTKIE=="),
    wyswietl_wedlug_plec(Plec).

wykonaj_trzecia_opcja(2, Plec) :-
    pomaluj('==LAGODNE=='),
    wyswietl_wedlug_intensywnosc(lagodne,Plec).

wykonaj_trzecia_opcja(3, Plec) :-
    pomaluj('==INTENSYWNE=='),
    wyswietl_wedlug_intensywnosc(intensywne,Plec).

wykonaj_trzecia_opcja(4, Plec) :-
    pomaluj('==EKSCENTRYCZNE=='),
    wyswietl_wedlug_intensywnosc(ekscentryczne,Plec).

wykonaj_trzecia_opcja(5, Plec) :-
    pomaluj("==SWIERZE=="),
    wyswietl_wedlug_intensywnosc(swierze,Plec).

%funkcja do kolorowania i wyœwietlania tekstu
pomaluj(String):-
    nl,
    format('\e[35m'),
    write(String),
    format('\e[0m'),
    nl.

menu_pochodzenie(Plec):-
    write('1. Pokaz wszystkie'), nl,
    write('2. Owocowe'), nl,
    write('3. Drzewne'), nl,
    write('4. Kwiatowe'), nl,
    write('5. Korzenne'), nl,
    write('Wybierz opcjê (wpisz numer): '),
    read(Opcja),
    wykonaj_czwarta_opcja(Opcja, Plec).

wykonaj_czwarta_opcja(1, Plec):-
    pomaluj("==WSZYSTKIE=="),
    wyswietl_wedlug_plec(Plec).

wykonaj_czwarta_opcja(2, Plec):-
    pomaluj("==OWOCOWE=="),
    wyswietl_wedlug_pochodzenia(owocowe,Plec).

wykonaj_czwarta_opcja(3, Plec):-
    pomaluj("==DRZEWNE=="),
    wyswietl_wedlug_pochodzenia(drzewne,Plec).

wykonaj_czwarta_opcja(4, Plec):-
    pomaluj("==KWIATOWE=="),
    wyswietl_wedlug_pochodzenia(kwiatowe,Plec).

wykonaj_czwarta_opcja(5, Plec):-
    pomaluj("==KORZENNE=="),
    wyswietl_wedlug_pochodzenia(korzenne,Plec).



