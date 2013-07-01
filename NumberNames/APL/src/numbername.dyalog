:NameSpace numbername

numbers ← 'zero' 'one' 'two' 'three' 'four' 'five' 'six' 'seven' 'eight' 'nine' 'ten'
numbers,← 'eleven' 'twelve' 'thirteen' 'fourteen' 'fifteen' 'sixteen' 'seventeen' 'eighteen' 'nineteen'

∇ Z ← convert number;p;n;d;t;s
  :If number ≤ 19
          Z ← ⊃  numbers [ number + 1 ]
  :ElseIf number < 100
          Z ← prefix number
          :If 0 ≠ 10 | number
                  Z,← ' ',convert number - (⌊ (number ÷ 10)) × 10
          :EndIf
  :Else
          n ← number < 1000 100000
          d ← ⊃ n / 100 1000
          t ← ⊃ n / 'hundred' 'thousand'
          s ← ⊃ n / ' and ' ', '
          Z ← (⊃numbers[ 1 + ⌊number ÷ d ]),' ',t
          :If 0 ≠ d | number
                  Z,← s,convert (number -  (d × ⌊ (number ÷ d)))
          :EndIf
  :EndIf
∇

∇ Z ← prefix number
  Z ← ⊃ 'twenty' 'thirty' 'forty' 'fifty' 'sixty' 'seventy' 'eighty' 'ninety' [ ¯1 + ⌊ number ÷ 10 ]
∇

:EndNameSpace