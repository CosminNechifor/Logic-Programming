tree(t(6, t(4, t(2, nil, nil), t(5, nil, nil)), t(9, t(7, nil, nil), nil))).

collect_k(nil, []).
collect_k(t(K, nil, nil), [K]).
collect_k(t(_, L, R), Result):-
  collect_k(L, Result1),
  collect_k(R, Result2),
  append(Result1, Result2, Result).
