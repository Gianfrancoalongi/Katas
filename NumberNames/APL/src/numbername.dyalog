:NameSpace numbername

numbers ← 'zero' 'one' 'two' 'three' 'four' 'five' 'six' 'seven' 'eight' 'nine' 'ten'
numbers,← 'eleven' 'twelve' 'thirteen' 'fourteen' 'fifteen' 'sixteen' 'seventeen' 'eighteen' 'nineteen'

∇ Z ← convert number;p
  :If number ≤ 19
          Z ← ⊃  numbers [ number + 1 ]
  :ElseIf number < 100
          p ← prefix number
          :If 0 = 10 | number
                  Z ← p
          :Else
                  Z ← p,' ',convert number - (⌊ (number ÷ 10)) × 10
          :EndIf
  :ElseIf number = 100
          Z ← hundred_prefix
  :Else
          Z ← hundred_prefix,' and ',convert number - 100
  :EndIf
∇

∇ Z ← prefix number
  Z ← ⊃ 'twenty' 'thirty' 'forty' 'fifty' 'sixty' 'seventy' 'eighty' 'ninety' [ ¯1 + ⌊ number ÷ 10 ]
∇

∇ Z ← hundred_prefix
  Z ← 'one hundred'
∇

:EndNameSpace