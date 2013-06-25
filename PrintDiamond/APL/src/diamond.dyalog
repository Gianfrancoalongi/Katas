:NameSpace diamond

∇ Z ← zeroes Alphabetic
  Z ← ¯1 + 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' ⍳ Alphabetic
∇

∇ Z ← layer (number Alphabetic);zero
  zero ← (zeroes Alphabetic) ⍴ 0
  Z ← zero,1,zero
∇

:EndNameSpace