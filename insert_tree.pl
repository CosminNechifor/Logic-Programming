tree(t(5, t(1, t(9, nil, nil), t(6, nil, t(4, t(3, nil,nil), t(10, nil, nil)))), t(8, t(2, nil, nil), nil))).

insert(nil, E, t(E, nil, nil)).
insert(t(K, L, R), K, t(K, L, R)):- !.
insert(t(K, L, R), E, t(K, Result, R)):-
    E < K, !,
    insert(L, E, Result).
insert(t(K, L, R), E, t(K, L, Result)):-
    insert(R, E, Result).
