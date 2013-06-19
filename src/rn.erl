-module(rn).
-export([to_roman/1]).

to_roman(1) ->
    "I";
to_roman(2) ->
    "II";
to_roman(3) ->
    "III";
to_roman(4) ->
    "IIII";
to_roman(5) ->
    "V".



