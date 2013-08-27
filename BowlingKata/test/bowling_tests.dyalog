:NameSpace bowling_tests

∇ Z ← parse_all_strikes_TEST
  Z ←#.bowling.parse 'X|X|X|X|X|X|X|X|X|X||XX'
  #.UT.expect ← (10 ⍴ 10),(10 10)
∇

:EndNameSpace
