:NameSpace diamond_tests

∇ Z ← width_from_alphabetic_B_TEST
  #.UT.expect ← 1
  Z ← #.diamond.width 'B'
∇

∇ Z ← width_from_alphabetic_C_TEST
  #.UT.expect ← 2
  Z ← #.diamond.width 'C'
∇

:EndNameSpace