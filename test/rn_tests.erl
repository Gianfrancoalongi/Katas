-module(rn_tests).
-include_lib("eunit/include/eunit.hrl").

one_to_roman_test() ->
    ?assertEqual("I",rn:to_roman(1)).
