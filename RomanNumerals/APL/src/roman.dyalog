:NameSpace roman

∇ Z ← numeral Number
        :If Number ≤ 3
                Z ← Number ⍴ 'I'
        :Else
                Z ← 'IV',⍬
        :EndIf
∇

:EndNameSpace