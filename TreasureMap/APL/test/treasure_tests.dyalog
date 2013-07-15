:NameSpace treasure_tests

∇ Z ← legal_horizontal_split_pattern_TEST
  #.UT.expect ← 1
  Z ← #.treasure.is_split_pattern_valid 'AB'
∇

∇ Z ← illegal_horizontal_broken_chain_TEST
  #.UT.expect ← 0
  Z ← #.treasure.is_split_pattern_valid 'ABA'
∇

∇ Z ← legal_longer_horizontal_chain_TEST
  #.UT.expect ← 1
  Z ← #.treasure.is_split_pattern_valid 'AABBCC'
∇

∇ Z ← illegal_vertically_broken_chain_TEST
  #.UT.expect ← 0
  Z ← #.treasure.is_split_pattern_valid ↑ 'AB' 'CB' 'AB'
∇

:EndNameSpace
