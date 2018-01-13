max(A, B, A):- A > B, !.
max(_, B, B).

depth([], 1).
depth([H|T], R):-
  atomic(H), !,
  depth(T, R).
depth([H|T], R):-
  depth(H, R1),
  depth(T, R2),
  R3 is R1 + 1,
  max(R3, R2, R).
