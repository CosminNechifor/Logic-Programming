cmmdc2(X, 0, X).
cmmdc2(X, Y, Z):-
  Rest is X mod Y,
  cmmdc2(Y, Rest, Z).

cmmmc(X, Y, Z):-
  Prod is X * Y,
  cmmdc2(X, Y, CMMDC),
  Z is Prod/CMMDC.
