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

:EndNameSpace
