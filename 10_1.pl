max(A, B, A):- A > B, !.
max(_, B, B).


 tree(t(6, t(4, t(2, nil, nil), t(5, nil, nil)), t(9, t(7, nil, nil), nil))).
 depth(nil, 0).
 depth(t(_, L, R), D):-
    depth(L, D1),
    depth(R, D2),
    max(D1, D2, D3),
    D is D3 + 1.
