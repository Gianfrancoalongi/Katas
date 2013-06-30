:NameSpace numbername

numbers ← 'zero' 'one' 'two' 'three' 'four' 'five' 'six' 'seven' 'eight' 'nine' 'ten'
numbers,← 'eleven' 'twelve' 'thirteen' 'fourteen' 'fifteen' 'sixteen' 'seventeen' 'eighteen' 'nineteen'

∇ Z ← convert number;p
  :If number ≤ 19
          Z ← ⊃  numbers [ number + 1 ]
  :ElseIf number = 20
          Z ← prefix number
  :ElseIf number ≤ 29
          Z ← (prefix number),' ',convert number - 20
  :ElseIf number = 30
          Z ← prefix number
  :ElseIf number ≤ 39
          Z ← (prefix number),' ',convert number - 30
  :ElseIf number = 40
          Z ← prefix number
  :Else
          Z ← (prefix number),' ',convert number - 40
  :EndIf
∇

∇ Z ← prefix number
  Z ← ⊃ 'twenty' 'thirty' 'forty' [ ¯1 + ⌊ number ÷ 10 ]
∇

:EndNameSpace