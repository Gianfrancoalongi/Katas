:NameSpace coins

∇ Z ← change coins
  Z ← ⊂(coins 0 0 0)
  :if 0 = 5 | coins 
          Z,← ⊂(0 1 0 0)
  :elseif coins > 5
          Z,← ⊂((5|coins) 1 0 0)
  :endif
∇

:EndNameSpace