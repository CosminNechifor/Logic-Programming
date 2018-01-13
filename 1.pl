cmmdc(X,X,X).
cmmdc(X,Y,Z):-
  X>Y, !,
  Diff is X-Y,
  cmmdc(Diff, Y, Z).
cmmdc(X,Y,Z):-
  Diff is Y-X,
  cmmdc(X, Diff, Z).


cmmdc2(X, 0, X).
cmmdc2(X, Y, Z):-
  Rest is X mod Y,
  cmmdc2(Y, Rest, Z).
