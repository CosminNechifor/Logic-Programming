flat([H|T], [H|R]):-
  atomic(H), !,
  flat(T, R).
flat([H|T], R):-
  flat(H, R1),
  flat(T, R2),
  append(R1, R2, R).
flat([], []).
