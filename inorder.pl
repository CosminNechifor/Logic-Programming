tree(t(5, t(1, t(9, nil, nil), t(6, nil, t(4, t(3, nil,nil), t(10, nil, nil)))), t(8, t(2, nil, nil), nil))).

inorder_dl(nil, L, L).
inorder_dl(t(K, L, R), LS, LE):-
    inorder_dl(L, LSL, LEL),
    inorder_dl(R, LSR, LER),
    LS = LSL,
    LEL = [K|LSR],
    LE = LER.
