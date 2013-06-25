:NameSpace diamond_tests

∇ Z ← width_from_alphabetic_B_TEST
  #.UT.expect ← 3
  Z ← #.diamond.width 'B'
∇

∇ Z ← width_from_alphabetic_C_TEST
  #.UT.expect ← 5
  Z ← #.diamond.width 'C'
∇

∇ Z ← height_from_alphabetic_B_TEST
  #.UT.expect ← 3
  Z ← #.diamond.height 'B'
∇

∇ Z ← height_from_alphabetic_C_TEST
  #.UT.expect ← 5
  Z ← #.diamond.height 'C'
∇

∇ Z ← layer_number_1_for_input_character_B_TEST
  #.UT.expect ← ↑ (0 1 0)
  Z ← #.diamond.layer 1 'B'
∇

:EndNameSpace
