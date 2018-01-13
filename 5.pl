replace_all(_, _, [], []).
replace_all(E, NewE, [E|T], [NewE|R]):-
  replace_all(E, NewE, T, R).
replace_all(E, NewE, [H|T], [H|R]):-
  replace_all(E, NewE, T, R).
