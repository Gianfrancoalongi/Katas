:NameSpace roman

∇ Z ← numeral Number
        :If Number ≤ 3
                Z ← Number ⍴ 'I'
        :ElseIf Number = 4
                Z ← 'IV'
        :ElseIf Number ≤ 8
                Z ← 'V', numeral Number + ¯5
        :ElseIf Number = 9
                Z ← 'IX'
        :ElseIf Number ≤ 39
                Z ← 'X', numeral Number + ¯10
        :Else
                Z ← 'XL'
        :EndIf
∇

:EndNameSpace