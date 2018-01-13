getMax([], Max, Max).
getMax([H|T], TempMax, Max):-
    H > TempMax, !,
    getMax(T, H, Max).
getMax([_|T], TempMax, Max):-
    getMax(T, TempMax, Max).
getMax([H|T], Max):-
    getMax(T, H, Max).
    
delete_all([H|T], H, R):-
    delete_all(T, H, R).
delete_all([H|T], Max, [H|R]):-
    delete_all(T, Max, R).
    delete_all([], _, []).

delete_max(List, R):-
    getMax(List, Max),
    delete_all(List, Max, R).
