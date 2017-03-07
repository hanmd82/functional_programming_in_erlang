-module(second).
-export([hypotenuse/2, right_triangle_perimeter/2, right_triangle_area/2]).

hypotenuse(X,Y) ->
  math:sqrt(first:square(X) + first:square(Y)).

right_triangle_perimeter(X,Y) ->
  X + Y + hypotenuse(X,Y).

right_triangle_area(X,Y) ->
  first:area(X, Y, hypotenuse(X,Y)).
