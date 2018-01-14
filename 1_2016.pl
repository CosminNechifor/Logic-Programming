extract_k([H|_], Index, Index, H).
extract_k([_|T], TempIndex, Index, R):-
  TempIndex1 is TempIndex + 1,
  extract_k(T, TempIndex1, Index, R).
extract_k([], _, _, nil).

extract_k(L, K, X):-
  extract_k(L, 0, K, X).


diag_extract([H|T], Index, [E|R]):-
  extract_k(H, Index, E),
  Index1 is Index + 1,
  diag_extract(T, Index1, R).
diag_extract([], _, []).

diag_extract(List, R):-
  diag_extract(List, 0, R).
