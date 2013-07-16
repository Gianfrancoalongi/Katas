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

∇ Z ← legal_matrix_split_pattern_TEST
  #.UT.expect ← 1
  Z ← #.treasure.is_split_pattern_valid ↑ 'AB' 'AB' 'AB'
∇

∇ Z ← not_legal_letter_pattern_for_A_TEST
  #.UT.expect ← 0
  Z ← #.treasure.is_split_pattern_valid ↑ 'AAA' 'ABB'
∇

∇ Z ← coordinates_indicate_a_row_TEST
  #.UT.expect ← 'row'
  Z ← #.treasure.coordinates_indicate (1 1) (1 2) (1 3)
∇

∇ Z ← coordinates_indicate_a_column_TEST
  #.UT.expect ← 'column'
  Z ← #.treasure.coordinates_indicate (1 1) (2 1) (3 1)
∇

:EndNameSpace
