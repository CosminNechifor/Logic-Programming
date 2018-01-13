delete_all([], _, []).
delete_all([H|T], H, R):-
  delete_all(T, H, R).
delete_all([H|T], E, [H|R]):-
  delete_all(T, E, R).

delete_duplicates([], []).

delete_duplicates([H|T], [H|R]):-
  delete_all(T, H, Result),
  delete_duplicates(Result, R).
