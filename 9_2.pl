flat([H|T], [H|R]):-
  not(var(H)), !,
  flat(T, R).
flat(_, []).
