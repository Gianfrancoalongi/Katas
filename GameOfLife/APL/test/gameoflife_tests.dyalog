:NameSpace gameoflife_tests

∇ Z ← neighbor_matrix_TEST
  #.UT.expect ← ↑ (1 1 1 0) (1 0 1 0) (1 1 1 0)
  Z ← #.gameoflife.neighbor_matrix ↑ '....' '.*..' '....'
∇

∇ Z ← neighbor_matrix_2_TEST
  #.UT.expect ← ↑ (1 1 1 0 0) (1 0 2 1 1) (1 1 2 0 1) (0 0 1 1 1) 
  Z ← #.gameoflife.neighbor_matrix ↑ '.....' '.*...' '...*.' '.....'
∇




:EndNameSpace