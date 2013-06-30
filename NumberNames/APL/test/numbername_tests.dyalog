:NameSpace numbername_tests

∇ Z ← zero_TEST
  #.UT.expect ← 'zero'
  Z ← #.numbername.convert 0
∇

∇ Z ← one_TEST
  #.UT.expect ← 'one'
  Z ← #.numbername.convert 1
∇

∇ Z ← two_TEST
  #.UT.expect ← 'two'
  Z ← #.numbername.convert 2
∇

∇ Z ← three_TEST
  #.UT.expect ← 'three'
  Z ← #.numbername.convert 3
∇

:EndNameSpace