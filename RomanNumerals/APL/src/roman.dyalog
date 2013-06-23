:NameSpace roman

∇ Z ← numeral Number
        :If Number ≤ 3
                Z ← Number ⍴ 'I'
        :Else
                Z ← ⊃ (Number + ¯3) ⌷ 'IV' ('V',⍬) 'VI' 'VII'
        :EndIf
∇

:EndNameSpace