:NameSpace treasure_tests

∇ Z ← validate_split_pattern_no_broken_chain_horizontal_TEST
  #.UT.expect ← 1
  Z ← #.treasure.is_split_pattern_valid 'AB'
∇

∇ Z ← validate_split_pattern_broken_chain_horizontal_TEST
  #.UT.expect ← 0
  Z ← #.treasure.is_split_pattern_valid 'ABA'
∇

∇ Z ← validate_split_pattern_no_broken_longer_chain_TEST
  #.UT.expect ← 1
  Z ← #.treasure.is_split_pattern_valid 'AABBCC'
∇

∇ Z ← validate_split_pattern_broken_chain_vertically_TEST
  #.UT.expect ← 0
  Z ← #.treasure.is_split_pattern_valid ↑ 'AB' 'CB' 'AB'
∇

:EndNameSpace
