:NameSpace poker_tests

∇ Z ← is_straight_flush_TEST
  #.UT.expect ← ('straight flush' (10 9 8 7 6))
  Z ← #.poker.classify '6H' '7H' '8H' '9H' '10H'
∇

∇ Z ←is_four_of_a_kind_TEST
  #.UT.expect ← ('four of a kind' (6 4 4 4 4))
  Z ← #.poker.classify '4H' '6S' '4C' '4D' '4S'
∇

:EndNameSpace
