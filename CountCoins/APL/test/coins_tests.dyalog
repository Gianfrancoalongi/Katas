:NameSpace coins_tests

∇ Z ← changing_1_cent_TEST
  pennies ← 1
  nickles ← 0
  dimes ← 0
  quarters ← 0
  #.UT.expect ← ⊂(pennies nickles dimes quarters),⍬
  Z ← #.coins.change 1
∇

:EndNameSpace
