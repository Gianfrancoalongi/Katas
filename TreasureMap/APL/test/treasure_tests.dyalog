:NameSpace treasure_tests

∇ Z ← one_letter_pattern_TEST
  text ← 'HELLO WORLD!'
  #.UT.expect ← text
  pattern ← 'A'
  Z ← #.treasure.split pattern text
∇

∇ Z ← only_one_letter_used_many_times_horizontally_TEST
  text ← 'HELLO WORLD!'
  #.UT.expect ← text
  pattern ← 'AAA'
  Z ← #.treasure.split pattern text
∇

∇ Z ← mixed_array_TEST
  #.UT.expect ← 'HELLO ' 'WORLD!'
  text ← 'HELLO WORLD!'
  pattern ← 'AB'
  Z ← #.treasure.split pattern text
∇

∇ Z ← mixed_array_with_uneven_length_on_text_TEST
  #.UT.expect ← 'HELLO' 'WORLD!'
  text ← 'HELLOWORLD!'
  pattern ← 'AB'
  Z ← #.treasure.split pattern text
∇

∇ Z ← mixed_array_with_three_letters_in_pattern_TEST
  #.UT.expect ← 'HELL' 'O WO' 'RLD!'
  text ← 'HELLO WORLD!'
  pattern ← 'ABC'
  Z ← #.treasure.split pattern text
∇

∇ Z ← mixed_array_with_three_letters_and_uneven_length_TEST
  #.UT.expect ← 'HEL' 'LOW' 'ORLD!'
  text ← 'HELLOWORLD!'
  pattern ← 'ABC'
  Z ← #.treasure.split pattern text
∇

∇ Z ← mixed_array_with_four_letters_TEST
  #.UT.expect ← 'HEL' 'LO ' 'WOR' 'LD!'
  text ← 'HELLO WORLD!'
  pattern ← 'ABCD'
  Z ← #.treasure.split pattern text
∇

∇ Z ← mixed_array_repetition_for_one_letter_TEST
  #.UT.expect ← 'HELLO WOR' 'LD!'
  text ← 'HELLO WORLD!'
  pattern ← 'AAAB'
  Z ← #.treasure.split pattern text
∇

∇ Z ← mixed_array_repetition_for_several_letters_TEST
  #.UT.expect ← 'HELLO' (' ',⍬) 'WORLD!'
  text ← 'HELLO WORLD!'
  pattern ← 'AAAAABCCCCCC'
  Z ← #.treasure.split pattern text
∇

∇ Z ← one_letter_pattern_for_two_row_input_TEST
  #.UT.expect ← ↑ 'HELLO' 'WORLD'
  text ← ↑ 'HELLO' 'WORLD'
  pattern ← 'A'
  Z ← #.treasure.split pattern text
∇

∇ Z ← two_letter_pattern_test_for_two_row_input_TEST
  #.UT.expect ← (↑'HE' 'WO') (↑'LLO' 'RLD')
  text ← ↑ 'HELLO' 'WORLD'
  pattern ← 'AB'
  Z ← #.treasure.split pattern text
∇

∇ Z ← four_letter_pattern_test_for_two_row_input_TEST
  #.UT.expect ← (↑'HEL' 'WOR') (↑'LO' 'LD')
  text ←  ↑ 'HELLO' 'WORLD'
  pattern ← 'AAAB'
  Z ← #.treasure.split pattern text
∇

∇ Z ← two_parts_two_rows_pattern_for_two_row_input_TEST
  #.UT.expect ← (⍪'HW') (↑'ELLO' 'ORLD')
  text ← ↑ 'HELLO' 'WORLD'
  pattern ← ↑ 'ABB' 'ABB'
  Z ← #.treasure.split pattern text
∇

∇ Z ← same_letter_in_matrix_for_two_rows_TEST
  #.UT.expect ← ↑ 'HELLO' 'WORLD'
  text ← ↑ 'HELLO' 'WORLD'
  pattern ← ↑ 'AA' 'AA'
  Z ← #.treasure.split pattern text
∇

∇ Z ← three_layers_of_letters_TEST
  #.UT.expect ←  (↑ 'HE' 'WO') (↑ 'LLO' 'RLD') 'FOOER'
  text ← ↑ 'HELLO' 'WORLD' 'FOOER'
  pattern ← ↑ 'AAB' 'AAB' 'CCC'
  Z ← #.treasure.split pattern text
∇

∇ Z ← four_layers_of_letters_TEST
  #.UT.expect ← (↑ 'HE' 'WO') (↑ 'LLO' 'RLD') (↑ 'FO' 'HA') (↑ 'OER' 'CKS')
  text ← ↑ 'HELLO' 'WORLD' 'FOOER' 'HACKS'
  pattern ← ↑ 'AABB' 'AABB' 'CCDD' 'CCDD'
  Z ← #.treasure.split pattern text
∇

∇ Z ← matrix_pattern_smaller_than_text_TEST
  #.UT.expect ←  'HE' (↑ 'LLO' 'RLD' 'OER') (↑ 'WO' 'FO')
  text ← ↑ 'HELLO' 'WORLD' 'FOOER'
  pattern ← ↑ 'AB' 'CB'
  Z ← #.treasure.split pattern text
∇
:EndNameSpace
