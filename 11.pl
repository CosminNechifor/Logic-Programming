tree(t(6, t(4, t(2, nil, nil), t(5, nil, nil)), t(9, t(7, nil, nil), nil))).

collect(nil, []).
collect(t(K, L, R), Result):-
  collect(L, Result1),
  collect(R, Result2),
  append(Result1, [K|Result2], Result).
