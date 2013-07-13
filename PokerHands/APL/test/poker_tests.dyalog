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

∇ Z ← is_flush_TEST
  #.UT.expect ← ('flush' (8 6 5 3 2))
  Z ← #.poker.classify '5H' '8H' '2H' '3H' '6H'
∇

∇ Z ← is_straight_TEST
  #.UT.expect ← ('straight' (10 9 8 7 6))
  Z ← #.poker.classify '8S' 'TC' '9H' '7D' '6S'
∇

∇ Z ← is_three_of_a_kind_TEST
  #.UT.expect ← ('three of a kind' (4 3 3 3 2))
  Z ← #.poker.classify '3S' '2H' '3C' '4D' '3D'
∇

∇ Z ← is_three_of_a_kind_left_edge_TEST
  #.UT.expect ← ('three of a kind' (4 4 4 3 2))
  Z ← #.poker.classify '3S' '4H' '4C' '2D' '4S'
∇

∇ Z ← is_three_of_a_kind_right_edge_TEST
  #.UT.expect ← ('three of a kind' (4 3 2 2 2))
  Z ← #.poker.classify '2S' '4H' '3C' '2C' '2H'
∇

∇ Z ← is_two_pair_left_heavy_TEST
  #.UT.expect ← ('two pairs' (5 5 3 3 2))
  Z ← #.poker.classify '5C' '3C' '2H' '5H' '3D'
∇

∇ Z ← is_two_pair_right_heavy_TEST
  #.UT.expect ← ('two pairs' (6 5 5 3 3))
  Z ← #.poker.classify '5C' '3H' '6D' '3S' '5S'
∇

∇ Z ← is_two_pairs_edge_heavy_TEST
  #.UT.expect ← ('two pairs' (5 5 4 3 3))
  Z ← #.poker.classify '5H' '3C' '5S' '4D' '3H'
∇

∇ Z ← is_pair_leftmost_TEST
  #.UT.expect ← ('pair' (6 6 5 4 3))
  Z ← #.poker.classify '5S' '6H' '4C' '3D' '6C'
∇

∇ Z ← is_pair_left_TEST
  #.UT.expect ← ('pair' (6 5 5 4 3))
  Z ← #.poker.classify '5S' '4C' '3D' '6S' '5D'
∇

∇ Z ← is_pair_right_TEST
  #.UT.expect ← ('pair' (6 5 4 4 3))
  Z ← #.poker.classify '5S' '4C' '3D' '6D' '4S'
∇

∇ Z ← is_rightmost_pair_TEST
  #.UT.expect ← ('pair' (6 5 4 3 3))
  Z ← #.poker.classify '5S' '3C' '4D' '6H' '3S'
∇

∇ Z ← is_high_card_TEST
  #.UT.expect ← ('high card' (9 6 5 3 2))
  Z ← #.poker.classify '6S' '5S' '3C' '2D' '9H'
∇

∇ Z ← rank_equal_winning_on_high_card_TEST
  #.UT.expect ← 'Black wins - high card Ten'
  Black ← '6H' '7H' '8H' '9H' 'TH'
  White ← '5H' '6H' '7H' '8H' '9H'
  Z ← #.poker.rank Black White
∇

∇ Z ← rank_winning_on_hand_TEST
  #.UT.expect ← 'White wins - straight flush'
  Black ← '5H' '3C' '5S' '4D' '3H'
  White ← '5H' '6H' '7H' '8H' '9H'
  Z ← #.poker.rank Black White
∇

:EndNameSpace
