-module(rn_tests).
-include_lib("eunit/include/eunit.hrl").

one_to_roman_test() ->
    ?assertEqual("I",rn:to_roman(1)).

two_to_roman_test() ->
    ?assertEqual("II",rn:to_roman(2)).

three_to_roman_test() ->
    ?assertEqual("III",rn:to_roman(3)).

four_to_roman_test() ->
    ?assertEqual("IV",rn:to_roman(4)).

five_to_roman_test() ->
    ?assertEqual("V",rn:to_roman(5)).

six_to_roman_test() ->
    ?assertEqual("VI",rn:to_roman(6)).

seven_to_roman_test() ->
    ?assertEqual("VII",rn:to_roman(7)).
