:NameSpace diamond

∇ Z ← diamond Alphabetic;m
  m ← 1 + ↑ { layer Alphabetic ⍵ }¨ layer_array Alphabetic 
  Z ← ' ABCDEFGHIJKLMNOPQRSTUVWXYZ'[m]
∇

∇ Z ← layer_array Alphabetic;p;s
  p ← position Alphabetic
  s ← ⍳ ¯1 + p
  Z ← s,p,⌽s
∇

∇ Z ← position Alphabetic
  Z ← 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' ⍳ Alphabetic
∇

∇ Z ← zeroes Alphabetic
  Z ← ¯1 + position Alphabetic
∇

∇ Z ← layer (Alphabetic number);zero;edge;middle
        :If 1 = number
                zero ← (zeroes Alphabetic) ⍴ 0
                Z ← zero,1,zero
        :Else                
                edge ← ((zeroes Alphabetic) + (¯1 × number - 1)) ⍴ 0
                middle ← (¯3 + number × 2) ⍴ 0
                Z ← edge,number,middle,number,edge
        :EndIf
∇

:EndNameSpace