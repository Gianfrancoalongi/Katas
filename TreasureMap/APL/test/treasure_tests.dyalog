:NameSpace treasure_tests

∇ Z ← validate_split_pattern_no_broken_chain_horizontal_TEST
  #.UT.expect ← 1
  Z ← #.treasure.is_split_pattern_valid 'AB'
∇

∇ Z ← validate_split_pattern_broken_chain_horizontal_TEST
  #.UT.expect ← 0
  Z ← #.treasure.is_split_pattern_valid 'ABA'
∇

:EndNameSpace
