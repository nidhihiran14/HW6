%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Peano arithmetic formalism
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

is_number(0).
is_number(s(X)) :- is_number(X).

add(0, N, N) :- is_number(N).
add(s(N), M, s(Y)) :- add(N, M, Y).

mul(0, N, 0) :- is_number(N).
mul(s(N), M, Y) :-
  mul(N, M, YY),
  add(M, YY, Y).

%%%%%%%%%%%%%%%%%%%%%%
% Your code goes here:
%%%%%%%%%%%%%%%%%%%%%%

exp(X, Y, Z) :- ???

% Example execution:
% swipl peano.pl
% ?- exp(s(s(0)), s(s(0)), Z).
% Z = s(s(s(s(0)))).
% ?- exp(s(s(0)), s(s(s(0))), Z).
% Z = s(s(s(s(s(s(s(s(0)))))))).