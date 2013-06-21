-module(rn).
-export([to_roman/1]).

to_roman(X) when X < 1 -> "";
to_roman(X) ->
    {Bounds,Part} = select_matching_slice_part(X),
    Part++to_roman(subtract_lower_bound(X,Bounds)).

select_matching_slice_part(X) ->
    hd(lists:dropwhile(
	 x_is_not_in_range(X),
	 [{{1,3},"I"},
	  {{4,4},"IV"},
	  {{5,8},"V"},
	  {{9,9},"IX"},
	  {{10,39},"X"},
	  {{40,49},"XL"},
	  {{50,89},"L"},
	  {{90,99},"XC"},
	  {{100,399},"C"},
	  {{400,499},"CD"},
	  {{500,899},"D"},
	  {{900,999},"CM"},
	  {{1000,3000},"M"}
	 ]
	)).

x_is_not_in_range(X) ->
    fun({Range,_}) -> 
	    not is_in_range(X,Range) 
    end.

is_in_range(X,{Lb,Ub}) ->
    X >= Lb andalso X =< Ub.

subtract_lower_bound(X,{Lb,_}) ->
    X - Lb.    
