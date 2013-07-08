:NameSpace coins_tests

∇ Z ← changing_1_cent_TEST
  #.UT.expect ← ⊂(1 'cent'),⍬
  Z ← #.coins.change (1 'cent')
∇

:EndNameSpace
