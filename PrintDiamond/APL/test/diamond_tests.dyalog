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

∇ Z ← layer_number_2_for_input_character_B_TEST
  #.UT.expect ← (2 0 2)
  Z ← #.diamond.layer 2 'B'
∇

∇ Z ← layer_number_2_for_input_character_C_TEST
  #.UT.expect ← (0 2 0 2 0)
  Z ← #.diamond.layer 2 'C'
∇

∇ Z ← layer_number_2_for_input_character_D_TEST
  #.UT.expect ← (0 0 2 0 2 0 0)
  Z ← #.diamond.layer 2 'D'
∇

∇ Z ← layer_number_3_for_input_character_C_TEST
  #.UT.expect ← (3 0 0 0 3)
  Z ← #.diamond.layer 3 'C'
∇

∇ Z ← layer_number_3_for_input_character_D_TEST
  #.UT.expect ← (0 3 0 0 0 3 0)
  Z ← #.diamond.layer 3 'D'
∇

∇ Z ← layer_number_4_for_input_character_D_TEST
  #.UT.expect ← (4 0 0 0 0 0 4)
  Z ← #.diamond.layer 4 'D'
∇

∇ Z ← layer_number_4_for_input_character_E_TEST
  #.UT.expect ← (0 4 0 0 0 0 0 4 0)
  Z ← #.diamond.layer 4 'E'
∇

∇ Z ← layer_number_array_from_input_character_B_TEST
  #.UT.expect ← 1 2 1
  Z ← #.diamond.layer_array 'B'
∇

∇ Z ← layer_number_array_from_input_character_C_TEST
  #.UT.expect ← 1 2 3 2 1
  Z ← #.diamond.layer_array 'C'
∇

:EndNameSpace
