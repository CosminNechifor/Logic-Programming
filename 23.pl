node(1). node(2). node(3). edge(2,1). edge(1,2). edge(3,1).
:-dynamic visited/1.

internal(X):-
  edge(Y, X),
  not(visited(Y)),
  assert(visited(Y)),
  internal(X).

getInternal(X, _):-
  internal(X).
getInternal(_, R):- !, collectList(R).

collectList(Internal):-
  retract(visited(X)), !,
  collectList(Internal1),
  Internal is Internal1 + 1.
collectList(0).
