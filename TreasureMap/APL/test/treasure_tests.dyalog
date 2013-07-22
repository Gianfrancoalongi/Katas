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

∇ Z ← only_one_letter_used_many_times_vertically_TEST
  text ← 'HELLO WORLD!'
  #.UT.expect ← text
  pattern ← ⍪ 'AAA'
  Z ← #.treasure.split pattern text
∇

∇ Z ← mixed_array_TEST
  #.UT.expect ← 'HELLO ' 'WORLD!'
  text ← 'HELLO WORLD!'
  pattern ← 'AB'
  Z ← #.treasure.split pattern text
∇

:EndNameSpace
