node(1). node(2). node(3). edge(2,1). edge(1,2). edge(3,1).
:-dynamic visited/1.

internal(X):-
  edge(Y, X),
  not(visited(Y)),
  assert(visited(Y)),
  internal(X).

getNodes(X, _):-
  internal(X).
getNodes(_, R):- !, collectList(R).

collectList([X|Internal1]):-
  retract(visited(X)), !,
  collectList(Internal1).
collectList([]).
