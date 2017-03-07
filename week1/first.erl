-module(first).
% name of module should correspond to filename
-export([double/1, mult/2, area/3]).
% export list of function names with arity

mult(X,Y) ->
  X*Y.

double(X) ->
  mult(2,X).

area(A,B,C) ->
  S = (A+B+C)/2,
  math:sqrt(S*(S-A)*(S-B)*(S-C)).
  % function body is sequence of expressions, delimited by comma
  % result of the function is the final expression in the sequence
