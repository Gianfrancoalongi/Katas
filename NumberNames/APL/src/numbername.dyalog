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
  :ElseIf number < 1000
          p ← c_prefix number
          :If 0 = 100 | number
                  Z ← p
          :Else
                  Z ← p,' and ',convert (number -  (100 × ⌊ (number ÷ 100)))
          :EndIf
  :Else
          Z ← (⊃numbers[ 1 + ⌊ number ÷ 1000 ]),' thousand'
          :If 0 ≠ 1000 | number 
                  Z,← ', ',convert number - 1000 × ⌊ (number ÷ 1000)
          :EndIf
  :EndIf
∇

∇ Z ← prefix number
  Z ← ⊃ 'twenty' 'thirty' 'forty' 'fifty' 'sixty' 'seventy' 'eighty' 'ninety' [ ¯1 + ⌊ number ÷ 10 ]
∇

∇ Z ← c_prefix number
  Z ← (⊃numbers[ 1 + ⌊number ÷ 100 ]),' hundred'
∇

:EndNameSpace