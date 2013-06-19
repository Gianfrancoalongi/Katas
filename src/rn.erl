-module(rn).
-export([to_roman/1]).

to_roman(1) ->
    "I";
to_roman(2) ->
    "II";
to_roman(3) ->
    "III";
to_roman(4) ->
    "IV";
to_roman(5) ->
    "V";
to_roman(X) when X > 5 andalso X < 9 ->
    to_roman(5)++to_roman(X-5);
to_roman(X) when X < 10 ->
    "IX";
to_roman(X) when X == 10 ->
    "X".


    





