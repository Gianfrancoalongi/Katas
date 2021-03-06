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
			       {60,"LX"},
			       {65,"LXV"},
			       {70,"LXX"},
			       {80,"LXXX"},
			       {90,"XC"},
			       {95,"XCV"},
			       {99,"XCIX"},
			       {100,"C"},
			       {105,"CV"},
			       {110,"CX"},
			       {120,"CXX"},
			       {300,"CCC"},
			       {399,"CCCXCIX"},
			       {400,"CD"},
			       {405,"CDV"},
			       {499,"CDXCIX"},
			       {500,"D"},
			       {550,"DL"},
			       {899,"DCCCXCIX"},
			       {900,"CM"},
			       {999,"CMXCIX"},
			       {1000,"M"},
			       {1998,"MCMXCVIII"},
			       {2013,"MMXIII"}
			      ]).

make_test({Input,Expected}) ->
    fun() -> 
	    ?assertEqual(Expected,rn:to_roman(Input))
    end.
