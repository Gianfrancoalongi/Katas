:NameSpace roman

∇ Z ← numeral Number
        :If Number ≤ 3
                Z ← Number ⍴ 'I'
        :ElseIf Number = 4
                Z ← 'IV'
        :Else
                Z ← 'V', numeral Number + ¯5
        :EndIf
∇

:EndNameSpace