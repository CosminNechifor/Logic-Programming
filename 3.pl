list_sum([], R, R).
list_sum([H|T], PartialSum, Result):-
  PartialSum1 is PartialSum + H,
  list_sum(T, PartialSum1, Result).
list_sum(LIST, Result):-
  list_sum(LIST, 0, Result).
