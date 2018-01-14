replace([H|T], H, Y, [Y|R]):-
  atomic(H), !,
  replace(T, H, Y, R).

replace([H|T], X, Y, [H|R]):-
  atomic(H), !,
  replace(T, X, Y, R).

replace([H|T], X, Y, R):-
  replace(H, X, Y, R1),
  replace(T, X, Y, R2),
  append([R1], R2, R).

replace([], _, _, []).
