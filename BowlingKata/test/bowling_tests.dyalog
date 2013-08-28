:NameSpace bowling_tests

∇ Z ← parse_all_strikes_TEST
  Z ←#.bowling.parse 'X|X|X|X|X|X|X|X|X|X||XX'
  #.UT.expect ← (10 ⍴ ⊂(10 2)),(⊂(10 0) (10 0))
∇

∇ Z ← parse_no_strikes_all_miss_second_ball_TEST
  Z ← #.bowling.parse '9-|9-|9-|9-|9-|9-|9-|9-|9-|9-||'
  #.UT.expect ← (10 ⍴ ⊂(9 0))
∇

∇ Z ← parse_spares_with_one_bonus_ball_TEST
  Z ← #.bowling.parse '5/|5/|5/|5/|5/|5/|5/|5/|5/|5/||5'
  #.UT.expect ← (10 ⍴ ⊂(10 1)),⊂(5 0)
∇

∇ Z ← points_for_one_strike_frame_TEST
  Z ← #.bowling.score (10 2)
  #.UT.expect ← 10
∇

∇ Z ← points_for_one_spare_frame_TEST
  Z ← #.bowling.score (5 1)
  #.UT.expect ← 5
∇

∇ Z ← points_for_one_miss_frame_TEST
  Z ← #.bowling.score (9 0)
  #.UT.expect ← 9
∇

∇ Z ← points_strike_miss_miss_TEST
  Z ← #.bowling.score (10 2) (5 0) (7 0)
  #.UT.expect ← 22
∇

:EndNameSpace
