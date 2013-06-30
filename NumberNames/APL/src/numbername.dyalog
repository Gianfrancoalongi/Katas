:NameSpace numbername

numbers ← 'zero' 'one' 'two' 'three' 'four' 'five' 'six' 'seven' 'eight' 'nine' 'ten'
numbers,← 'eleven' 'twelve' 'thirteen' 'fourteen' 'fifteen' 'sixteen' 'seventeen' 'eighteen' 'nineteen'

∇ Z ← convert number;p
  :If number ≤ 19
          Z ← ⊃  numbers [ number + 1 ]
  :Else
          p ← prefix number
          :If 0 = 10 | number
                  Z ← p
          :Else
                  Z ← p,' ',convert number - (⌊ (number ÷ 10)) × 10
          :EndIf
  :EndIf
∇

∇ Z ← prefix number
  Z ← ⊃ 'twenty' 'thirty' 'forty' 'fifty' 'sixty' [ ¯1 + ⌊ number ÷ 10 ]
∇

:EndNameSpace