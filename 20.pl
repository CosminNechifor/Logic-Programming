sum_lvl([H|T], LEVEL, LEVEL, Sum):-
  atomic(H), !,
  sum_lvl(T, LEVEL, LEVEL, Sum1),
  Sum is Sum1 + H.

sum_lvl([H|T], Temp, LEVEL, Sum):-
  atomic(H), !,
  sum_lvl(T, Temp, LEVEL, Sum).

sum_lvl([H|T], Temp, LEVEL, Sum):-
  sum_lvl(T, Temp, LEVEL, Sum1),
  NewTemp is Temp + 1,
  sum_lvl(H, NewTemp, LEVEL, Sum2),
  Sum is Sum1 + Sum2.

sum_lvl([], _, _, 0).

sum_lvl(List, LEVEL, SUM):-
  sum_lvl(List, 1, LEVEL, SUM).
