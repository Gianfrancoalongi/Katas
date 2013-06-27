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
 :ElseIf 3 = number
         zero ← ((zeroes Alphabetic) + ¯2) ⍴ 0
         Z ← zero,3 0 0 0 3,zero
 :Else
         zero ← ((zeroes Alphabetic) + ¯3) ⍴ 0
         Z ← zero,4 0 0 0 0 0 4,zero
 :EndIf
∇

:EndNameSpace