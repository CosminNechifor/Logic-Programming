swap([L1, L2 | T], [L1| R]):-
  length(L1, L1Length),
  length(L2, L2Length),
  L1Length < L2Length, !,
  swap([L2|T], R).
swap([L1, L2 | T], [L2|R]):-
  swap([L1|T], R).
swap([L], [L]).



bubble(List, Length, Result):-
  swap(List, R),
  Length1 is Length - 1,
  Length > 0, !,
  bubble(R, Length1, Result).

bubble(R, _, R):-!.

bubble(List, R):-
  length(List, Length),
  Length1 is Length + 1,
  bubble(List, Length1, R).
