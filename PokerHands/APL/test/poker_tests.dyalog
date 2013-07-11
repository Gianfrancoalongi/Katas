:NameSpace poker_tests

∇ Z ← is_straight_flush_TEST
  #.UT.expect ← ('straight flush' (10 9 8 7 6))
  Z ← #.poker.classify '6H' '7H' '8H' '9H' '10H'
∇

:EndNameSpace
