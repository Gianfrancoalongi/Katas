:NameSpace bowling_tests

∇ Z ← parse_all_strikes_TEST
  Z ←#.bowling.parse 'X|X|X|X|X|X|X|X|X|X||XX'
  #.UT.expect ← (10 ⍴ ⊂(10 2)),(⊂(10 0) (10 0))
∇

∇ Z ← parse_no_strikes_all_miss_second_ball_TEST
  Z ← #.bowling.parse '9-|9-|9-|9-|9-|9-|9-|9-|9-|9-||'
  #.UT.expect ← (10 ⍴ ⊂(9 0))
∇

:EndNameSpace
