-module(exercise).
-export([xOr/2, maxThree/3, howManyEqual/3]).

xOr(true,false) ->
  true;
xOr(false,true) ->
  true;
% xOr(X,Y) ->
%   X =/= Y;
% xOr(X,Y) ->
%   not (X == Y);
xOr(X,Y) ->
  ((X == true) and (Y == false)) or ((X == false) and (Y == true)).


maxThree(X,Y,Z) ->
  max(max(X,Y),Z).


howManyEqual(A,A,A) ->
  3;
howManyEqual(A,A,_) ->
  2;
howManyEqual(A,_,A) ->
  2;
howManyEqual(_,A,A) ->
  2;
howManyEqual(_,_,_) ->
  0.
