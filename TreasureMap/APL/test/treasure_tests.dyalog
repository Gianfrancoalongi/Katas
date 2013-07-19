:NameSpace treasure_tests

∇ Z ← one_letter_pattern_TEST
  text ← 'HELLO WORLD!'
  #.UT.expect ← text
  pattern ← 'A'
  Z ← #.treasure.split pattern text
∇

:EndNameSpace
