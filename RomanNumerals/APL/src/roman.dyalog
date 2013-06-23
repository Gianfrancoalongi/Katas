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
        :ElseIf Number ≤ 49
                Z ← 'XL',numeral Number + ¯40
        :ElseIf Number ≤ 89
                Z ← 'L',numeral Number + ¯50
        :ElseIf Number ≤ 99
                Z ← 'XC',numeral Number + ¯90
        :ElseIf Number ≤ 399
                Z ← 'C',numeral Number + ¯100
        :Else
                Z ← 'CD',numeral Number + ¯400
        :EndIf
∇

:EndNameSpace