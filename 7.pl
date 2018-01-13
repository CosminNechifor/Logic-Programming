push(E, L, [E|L]).

reverseList([], R, R).
reverseList([H|T], TEMP, R):-
  push(H, TEMP, TEMP1),
  reverseList(T, TEMP1, R).

reverseList(List, R):-
  reverseList(List, [], R).
