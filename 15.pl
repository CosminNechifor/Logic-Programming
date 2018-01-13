push_element(List, E, [E|List]).
reverse([], R, R).
reverse([H|T], Temp, R):-
  push_element(Temp, H, Temp1),
  reverse(T, Temp1, R).

reverse_k([], _, _, []).

reverse_k([H|T], Index, RevIndex, [H|R]):-
  Index < RevIndex, !,
  Index1 is Index + 1,
  reverse_k(T, Index1, RevIndex, R).

reverse_k(List, Index, RevIndex, R):-
  reverse(List, [], R).

reverse_k(List, Index, R):-
  reverse_k(List, 0, Index, R).
