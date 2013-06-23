:NameSpace roman

∇ Z ← numeral Number;i;mark;sub
        :If Number ≤ 0
                Z ← ⍬
        :Else
                i ← (Number∘≤ 3 4 8 9 39 49 89 99 399 499 899 999) ⍳ 1
                mark ← i ⌷ 'I' 'IV' 'V' 'IX' 'X' 'XL' 'L' 'XC' 'C' 'CD' 'D' 'CM' 'M'                
                sub ← i ⌷ 1 4 5 9 10 40 50 90 100 400 500 900 1000
                Z ← ⊃ ,/ mark, numeral Number - sub
        :EndIf
∇

:EndNameSpace