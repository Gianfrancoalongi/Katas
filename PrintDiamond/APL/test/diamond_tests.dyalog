:NameSpace diamond_tests

∇ Z ← layer_number_1_for_input_character_B_TEST
  #.UT.expect ← (0 1 0)
  Z ← #.diamond.layer 1 'B'
∇

∇ Z ← layer_number_1_for_input_character_C_TEST
  #.UT.expect ← (0 0 1 0 0)
  Z ← #.diamond.layer 1 'C'
∇

∇ Z ← layer_number_1_for_iput_character_D_TEST
  #.UT.expect ← (0 0 0 1 0 0 0)
  Z ← #.diamond.layer 1 'D'
∇

:EndNameSpace
