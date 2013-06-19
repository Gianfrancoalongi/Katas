-module(rn_tests).
-include_lib("eunit/include/eunit.hrl").

roman_numeral_test_() ->
    lists:map(fun make_test/1,[
			       {1,"I"},
			       {2,"II"},
			       {3,"III"},
			       {4,"IV"},
			       {5,"V"},
			       {6,"VI"},
			       {7,"VII"},
			       {8,"VIII"},
			       {9,"IX"}
			      ]).

make_test({Input,Expected}) ->
    fun() -> 
	    ?assertEqual(Expected,rn:to_roman(Input))
    end.
