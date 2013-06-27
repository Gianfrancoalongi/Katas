:NameSpace diamond

∇ Z ← layer_array Alphabetic
  Z ← 1 2 1
∇

∇ Z ← zeroes Alphabetic
  Z ← ¯1 + 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' ⍳ Alphabetic
∇

∇ Z ← layer (number Alphabetic);zero;edge;middle
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