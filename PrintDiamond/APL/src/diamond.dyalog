:NameSpace diamond

∇ Z ← zeroes Alphabetic
  Z ← ¯1 + 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' ⍳ Alphabetic
∇

∇ Z ← layer (number Alphabetic);zero
 :IF 1 = number
         zero ← (zeroes Alphabetic) ⍴ 0
         Z ← zero,1,zero
 :ElseIf 2 = number
         zero ← ((zeroes Alphabetic) + ¯1) ⍴ 0
         Z ← zero,2,0,2,zero
 :Else
         zero ← ((zeroes Alphabetic) + ¯1) ⍴ 0
         Z ← 3,zero,0,zero,3
 :EndIf
∇

:EndNameSpace