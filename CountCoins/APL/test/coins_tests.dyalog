:NameSpace coins_tests

∇ Z ← changing_1_cent_TEST
  pennies ← 1
  nickles ← 0
  dimes ← 0
  quarters ← 0
  #.UT.expect ← ⊂(pennies nickles dimes quarters),⍬
  Z ← #.coins.change 1
∇

∇ Z ← changing_5_cent_TEST
  #.UT.expect ←  (5 0 0 0) (0 1 0 0)
  Z ← #.coins.change 5
∇

∇ Z ← changing_6_cent_TEST
  #.UT.expect ← (6 0 0 0) (1 1 0 0)
  Z ← #.coins.change 6
∇

∇ Z ← changing_10_cent_TEST
  #.UT.expect ← (10 0 0 0) (5 1 0 0) (0 2 0 0) (0 0 1 0)
  Z ← #.coins.change 10
∇

∇ Z ← changing_11_cent_TEST
  #.UT.expect ← (11 0 0 0) (6 1 0 0) (1 2 0 0) (1 0 1 0)
  Z ← #.coins.change 11
∇

:EndNameSpace
