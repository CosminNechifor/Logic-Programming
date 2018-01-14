tree(t(6, t(4, t(2, nil, nil), t(5, nil, nil)), t(9, t(7, nil, nil), nil))).
tree1(t(5, t(1, t(9, nil, nil), t(6, nil, t(4, t(3, nil,nil), t(10, nil, nil)))), t(8, t(2, nil, nil), nil))).

collect(nil, []).
collect(t(K, L, R), Result):-
  collect(L, Result1),
  collect(R, Result2),
  append(Result1, [K|Result2], Result).
