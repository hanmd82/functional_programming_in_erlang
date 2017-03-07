-module(first).
-export([double/1, mult/2]).
% export list of function names with arity

mult(X,Y) ->
  X*Y.

double(X) ->
  mult(2,X).
