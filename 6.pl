delete_K([H|T], Index, DI, R):-
  0 is Index mod DI, !,
  Index1 is Index + 1,
  delete_K(T, Index1, DI, R).

delete_K([H|T], Index, DI, [H|R]):-
  Index1 is Index + 1,
  delete_K(T, Index1, DI, R).

delete_K([], _, _, []).

delete_K(LIST, INDEX, R):-
  delete_K(LIST, 1, INDEX, R).
