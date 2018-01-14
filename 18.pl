getMin([H|T], Min, Result):-
  H < Min, !,
  getMin(T, H, Result).
getMin([_|T], Min, Result):-
  getMin(T, Min, Result).
getMin([], Min, Min).

getMin([H|T], R):-
  getMin(T, H, R).

delete([H|T], H, T).
delete([H|T], E, [H|R]):-
  delete(T, E, R).

insertion([], []).

insertion(List, [E|R]):-
  getMin(List, E),
  delete(List, E, NewList),
  insertion(NewList, R).
