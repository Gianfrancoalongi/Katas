-module(rn_tests).
-include_lib("eunit/include/eunit.hrl").

one_to_roman_test() ->
    ?assertEqual("I",rn:to_roman(1)).

two_to_roman_test() ->
    ?assertEqual("II",rn:to_roman(2)).

three_to_roman_test() ->
    ?assertEqual("III",rn:to_roman(3)).
