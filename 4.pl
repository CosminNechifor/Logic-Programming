extrat([], [], []).
extrat([H|T], [H|E], O):-
  0 is H mod 2, !,
  extrat(T, E, O).
extrat([H|T], E, [H|O]):-
  extrat(T, E, O).
