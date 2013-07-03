:NameSpace gameoflife_tests

∇ Z ← neighbor_matrix_TEST
  #.UT.expect ← ↑ (1 1 1 0) (1 0 1 0) (1 1 1 0)
  Z ← #.gameoflife.neighbor_matrix ↑ '....' '.*..' '....'
∇

:EndNameSpace