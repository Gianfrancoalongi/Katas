:NameSpace treasure_tests

∇ Z ← text_partition_on_one_row_by_pattern_TEST
  #.UT.expect ← 'HELLO ' 'WORLD!'
  pattern ← 'AB'
  text ← 'HELLO WORLD!'
  Z ← #.treasure.split_with_pattern text pattern
∇

∇ Z ← text_partition_on_one_row_by_one_letter_TEST
  #.UT.expect ← 'HELLO WORLD!'
  pattern ← 'A'
  text ← 'HELLO WORLD!'
  Z ← #.treasure.split_with_pattern text pattern
∇

∇ Z ← text_partition_on_row_with_differing_sizes_TEST
  #.UT.expect ← 'HELLO WO' 'RLD!'
  pattern ← 'AAB'
  text ← 'HELLO WORLD!'
  Z ← #.treasure.split_with_pattern text pattern
∇

∇ Z ← text_partition_on_row_with_3_files_TEST
  #.UT.expect ← 'HELL' 'O ' 'WORLD!'
  pattern ← 'AABCC'
  text ← 'HELLO WORLD!'
  Z ← #.treasure.split_with_pattern text pattern
∇

∇ Z ← text_partition_matrix_with_two_columns_TEST
  #.UT.expect ← (↑'HEL' 'WOR') (↑'LO ' 'LD!')
  pattern ← ↑ 'AB' 'AB'
  text ← 'HELLO WORLD!'
  Z ← #.treasure.split_with_pattern text pattern
∇

∇ Z ← text_partition_matrix_with_two_small_rectangles_TEST
  #.UT.expect ← 'HELLO ' 'WORLD!'
  pattern ← ↑ 'A' 'B'
  text ← 'HELLO WORLD!'
  Z ← #.treasure.split_with_pattern text pattern
∇

:EndNameSpace
