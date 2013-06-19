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
			       {9,"IX"},
			       {10,"X"},
			       {11,"XI"},
			       {12,"XII"},
			       {13,"XIII"},
			       {14,"XIV"},
			       {15,"XV"},
			       {16,"XVI"},
			       {17,"XVII"},
			       {18,"XVIII"},
			       {19,"XIX"},
			       {20,"XX"},
			       {21,"XXI"},
			       {29,"XXIX"},
			       {30,"XXX"},
			       {40,"XL"},
			       {41,"XLI"},
			       {45,"XLV"},
			       {50,"L"},
			       {51,"LI"},
			       {55,"LV"},
			       {60,"LX"}
			      ]).

make_test({Input,Expected}) ->
    fun() -> 
	    ?assertEqual(Expected,rn:to_roman(Input))
    end.
