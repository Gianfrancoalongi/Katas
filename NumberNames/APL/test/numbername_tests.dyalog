:NameSpace numbername_tests

∇ Z ← zero_TEST
  #.UT.expect ← 'zero'
  Z ← #.numbername.convert 0
∇

∇ Z ← one_TEST
  #.UT.expect ← 'one'
  Z ← #.numbername.convert 1
∇

:EndNameSpace