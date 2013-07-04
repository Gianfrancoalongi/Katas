:NameSpace gameoflife_tests

∇ Z ← neighbor_matrix_TEST
  #.UT.expect ← ↑ (1 1 1 0) (1 0 1 0) (1 1 1 0)
  Z ← #.gameoflife.neighbor_matrix ↑ '....' '.*..' '....'
∇

∇ Z ← neighbor_matrix_2_TEST
  #.UT.expect ← ↑ (1 1 1 0 0) (1 0 2 1 1) (1 1 2 0 1) (0 0 1 1 1) 
  Z ← #.gameoflife.neighbor_matrix ↑ '.....' '.*...' '...*.' '.....'
∇

∇ Z ← next_gen_less_than_two_neighbors_dies_dead_case_TEST
  #.UT.expect ←  ↑ '...' '...' '...' 
  Z ← #.gameoflife.next_generation ↑ '...' '.*.' '...'
∇

∇ Z ← next_gen_two_or_more_neighbors_lives_TEST
  #.UT.expect ← ↑ '....'  '....'  '.**.' '....'  '....' 
  Z ← #.gameoflife.next_generation ↑ '....' '..*.' '.*..' '.*..' '....'
∇

∇ Z ← next_gen_dies_if_more_than_three_neighbors_TEST
  #.UT.expect ← ↑ '....' '.**.' '*...'  '.**.'  '....' 
  Z ← #.gameoflife.next_generation ↑ '....' '.**.' '.**.' '.*..' '....' 
∇

∇ Z ← live_cell_with_two_or_three_live_neighbors_lives_on_TEST
  #.UT.expect ← ↑ '.....' '..*..' '.**..' '.**..' '.....' '.....' 
  Z ← #.gameoflife.next_generation ↑ '.....' '.*.*.' '..*..' '.*...' '..*..' '.....'
∇

∇ Z ← dead_cell_with_three_live_neighbors_becomes_live_cell_TEST
  #.UT.expect ← ↑ '.....'  '..*..'  '..*..'  '.....'  
  Z ← #.gameoflife.next_generation ↑ '.....' '.*.*.' '..*..' '.....' 
∇

:EndNameSpace





