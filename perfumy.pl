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

%regu³y do wyszukiwañ
znajdz_dla_plec(Perfumy, Plec):-
    perfumy(Perfumy,_,_,Plec).
znajdz_dla_zapach(Perfumy, Zapach):-
    perfumy(Perfumy,_,Zapach,_).
wyswietl_wszystkie(Perfum):-
    perfumy(Perfum,_,_,_).


