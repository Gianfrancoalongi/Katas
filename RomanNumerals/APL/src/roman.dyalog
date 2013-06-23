:NameSpace roman

∇ Z ← numeral Number
        :If Number ≤ 3
                Z ← Number ⍴ 'I'
        :ElseIf Number = 4
                Z ← 'IV'
        :ElseIf Number ≤ 8
                Z ← 'V', numeral Number + ¯5
        :Else
                Z ← 'IX'
        :EndIf
∇

:EndNameSpace