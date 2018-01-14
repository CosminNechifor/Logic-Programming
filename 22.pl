tree(t(6, t(4, t(2, nil, nil), t(5, nil, nil)), t(9, t(7, nil, nil), nil))).
collect_k(nil, []).
collect_k(t(K, _, _), LEVEL, LEVEL, [K]).
collect_k(t(_, L, R), TempLvL, LEVEL, Result):-
    NewTemp is TempLvL + 1,
    collect_k(L, NewTemp, LEVEL, R1),
    collect_k(R, NewTemp, LEVEL, R2),
    append(R1, R2, Result).
collect_k(Tree, LEVEL, R):-
    collect_k(Tree, 1, LEVEL, R).
