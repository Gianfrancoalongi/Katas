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

:EndNameSpace
