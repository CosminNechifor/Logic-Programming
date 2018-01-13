run_length_encodeing([H1, H2|T], N, R):-
  H1 == H2, !,
  N1 is N + 1,
  run_length_encodeing([H2|T], N1, R).

run_length_encodeing([H1, H2|T], N, [(H1,N)|R]):-
  run_length_encodeing([H2|T], 1, R).

run_length_encodeing([H], N, [(H,N)]).

run_length_encodeing(List, R):-
  run_length_encodeing(List, 1, R).
