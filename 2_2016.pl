tree(t(5, t(1, t(9, nil, nil), t(6, nil, t(4, t(3, nil,nil), t(10, nil, nil)))), t(8, t(2, nil, nil), nil))).

extract_even(t(K, L, R), Index, [K|Result]):-
  (   0 is K mod 2,
  0 is Index mod 2), !,
  Index1 is Index + 1,
  extract_even(L, Index1, R1),
  extract_even(R, Index1, R2),
  append(R1, R2, Result).

extract_even(t(_, L, R), Index, Result):-
  Index1 is Index + 1,
  extract_even(L, Index1, R1),
  extract_even(R, Index1, R2),
  append(R1, R2, Result).

extract_even(nil, _, []).

extract_even(Tree, R):-
  extract_even(Tree, 1, R).
