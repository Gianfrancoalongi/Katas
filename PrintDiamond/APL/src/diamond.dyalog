:NameSpace diamond

alphabet ← 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'

∇ Z ← diamond Alphabetic;m
  m ← 1 + ↑ { layer Alphabetic ⍵ }¨ layer_array Alphabetic 
  Z ← (' ',alphabet) [m]
∇

∇ Z ← layer_array Alphabetic;p
  p ← position Alphabetic
  Z ← { ⍵,p,⌽⍵ } ⍳ ¯1 + p
∇

∇ Z ← position Alphabetic
  Z ← alphabet ⍳ Alphabetic
∇

∇ Z ← zeroes Alphabetic
  Z ← ¯1 + position Alphabetic
∇

∇ Z ← layer (Alphabetic number);edge;middle
        :If 1 = number
                edge ← (zeroes Alphabetic) ⍴ 0
                Z ← edge,1,edge
        :Else                
                edge ← ((zeroes Alphabetic) + (¯1 × number - 1)) ⍴ 0
                middle ← (¯3 + number × 2) ⍴ 0
                Z ← edge,number,middle,number,edge
        :EndIf
∇

:EndNameSpace