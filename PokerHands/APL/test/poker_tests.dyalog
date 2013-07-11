:NameSpace poker_tests

∇ Z ← is_straight_flush_TEST
  #.UT.expect ← ('straight flush' (10 9 8 7 6))
  Z ← #.poker.classify '6H' '7H' '8H' '9H' 'TH'
∇

∇ Z ← is_four_of_a_kind_TEST
  #.UT.expect ← ('four of a kind' (6 4 4 4 4))
  Z ← #.poker.classify '4H' '6S' '4C' '4D' '4S'
∇

∇ Z ← is_four_of_a_kind_high_TEST
  #.UT.expect ← ('four of a kind' (6 6 6 6 4))
  Z ← #.poker.classify '6H' '4S' '6C' '6D' '6S'
∇

∇ Z ← is_full_house_TEST
  #.UT.expect ← ('full house' (14 14 4 4 4))
  Z ← #.poker.classify 'AS' '4D' 'AC' '4H' '4S'
∇

∇ Z ← is_full_house_three_high_TEST
  #.UT.expect ← ('full house' (14 14 14 4 4))
  Z ← #.poker.classify 'AS' 'AD' '4C' 'AH' '4S'
∇

:EndNameSpace
