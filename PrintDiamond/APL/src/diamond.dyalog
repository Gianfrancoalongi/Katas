:NameSpace diamond

∇ Z ← zeroes Alphabetic
  Z ← ¯1 + 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' ⍳ Alphabetic
∇

∇ Z ← layer (number Alphabetic);zero
 :IF 1 = number
         zero ← (zeroes Alphabetic) ⍴ 0
         Z ← zero,1,zero
 :Else
         zero ← ((zeroes Alphabetic) + ¯1) ⍴ 0
         Z ← 2,zero,0,zero,2
 :EndIf
∇

:EndNameSpace