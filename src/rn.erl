-module(rn).
-export([to_roman/1]).

to_roman(X) when X < 1 -> "";
to_roman(X) ->
    Slices = [{{1,3},"I"},
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
	      {{900,1000},"CM"}
	     ],
    {Xp,Part} = select_matching_slice_and_remove_lower_bound(X,Slices),
    Part++to_roman(Xp).

select_matching_slice_and_remove_lower_bound(X,Slices) ->
    smsarlb(X,Slices).

smsarlb(X,[{{Lb,Ub},Part}|_]) when X >= Lb andalso X =< Ub -> 
    {X-Lb,Part};
smsarlb(X,[_|T]) ->
    smsarlb(X,T).
    
