
is_number(0).
is_number(s(X)) :- is_number(X).

add(0, N, N) :- is_number(N).
add(s(N), M, s(Y)) :- add(N, M, Y).

mul(0, N, 0) :- is_number(N).
mul(s(N), M, Y) :-
  mul(N, M, YY),
  add(M, YY, Y).

% exp(X, Y, Z) is true when X^Y = Z, with X, Y, Z in Peano representation.
% Base case: any number to the 0th power is 1 (s(0)).
exp(X, 0, s(0)) :-
  is_number(X).

% Recursive case: X^(s(Y)) = X * (X^Y)
exp(X, s(Y), Z) :-
  is_number(X),
  exp(X, Y, Z1),
  mul(X, Z1, Z).

% Example queries:
% ?- exp(s(s(0)), s(s(0)), Z).     % 2^2 = 4
% Z = s(s(s(s(0)))).
% ?- exp(s(s(0)), s(s(s(0))), Z). % 2^3 = 8
% Z = s(s(s(s(s(s(s(s(0)))))))).
