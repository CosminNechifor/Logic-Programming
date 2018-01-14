rotate_k([H|T], K, Temp, Result):-
  length(T, ListLength),
  K < ListLength, !,
  append(Temp, [H], NewTemp),
  rotate_k(T, K, NewTemp, Result).

rotate_k(List, _, Temp, Result):-
  append(List, Temp, Result).


rotate_k(List, K, R):-
  NewK is K - 1,
  rotate_k(List, NewK, [], R).
