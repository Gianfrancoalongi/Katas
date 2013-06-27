:NameSpace diamond_tests

∇ Z ← layer_number_1_for_input_character_B_TEST
  #.UT.expect ← (0 1 0)
  Z ← #.diamond.layer 'B' 1
∇

∇ Z ← layer_number_1_for_input_character_C_TEST
  #.UT.expect ← (0 0 1 0 0)
  Z ← #.diamond.layer 'C' 1
∇

∇ Z ← layer_number_1_for_iput_character_D_TEST
  #.UT.expect ← (0 0 0 1 0 0 0)
  Z ← #.diamond.layer 'D' 1
∇

∇ Z ← layer_number_2_for_input_character_B_TEST
  #.UT.expect ← (2 0 2)
  Z ← #.diamond.layer 'B' 2
∇

∇ Z ← layer_number_2_for_input_character_C_TEST
  #.UT.expect ← (0 2 0 2 0)
  Z ← #.diamond.layer 'C' 2
∇

∇ Z ← layer_number_2_for_input_character_D_TEST
  #.UT.expect ← (0 0 2 0 2 0 0)
  Z ← #.diamond.layer 'D' 2
∇

∇ Z ← layer_number_3_for_input_character_C_TEST
  #.UT.expect ← (3 0 0 0 3)
  Z ← #.diamond.layer 'C' 3
∇

∇ Z ← layer_number_3_for_input_character_D_TEST
  #.UT.expect ← (0 3 0 0 0 3 0)
  Z ← #.diamond.layer 'D' 3
∇

∇ Z ← layer_number_4_for_input_character_D_TEST
  #.UT.expect ← (4 0 0 0 0 0 4)
  Z ← #.diamond.layer 'D' 4
∇

∇ Z ← layer_number_4_for_input_character_E_TEST
  #.UT.expect ← (0 4 0 0 0 0 0 4 0)
  Z ← #.diamond.layer 'E' 4
∇

∇ Z ← layer_number_array_from_input_character_B_TEST
  #.UT.expect ← 1 2 1
  Z ← #.diamond.layer_array 'B'
∇

∇ Z ← layer_number_array_from_input_character_C_TEST
  #.UT.expect ← 1 2 3 2 1
  Z ← #.diamond.layer_array 'C'
∇

∇ Z ← layer_number_array_from_input_character_D_TEST
  #.UT.expect ← 1 2 3 4 3 2 1
  Z ← #.diamond.layer_array 'D'
∇

∇ Z ← diamond_from_character_B_TEST
  #.UT.expect ← ↑ ' A ' 'B B' ' A '
  Z ← #.diamond.diamond 'B'
∇

∇ Z ← diamond_from_character_C_TEST
  #.UT.expect ← ↑ '  A  ' ' B B ' 'C   C' ' B B ' '  A  '
  Z ← #.diamond.diamond 'C'
∇

:EndNameSpace
