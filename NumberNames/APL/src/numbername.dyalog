:NameSpace numbername

numbers ← 'zero' 'one' 'two' 'three' 'four' 'five' 'six' 'seven' 'eight' 'nine' 'ten'
numbers,← 'eleven' 'twelve' 'thirteen' 'fourteen' 'fifteen' 'sixteen' 'seventeen' 'eighteen' 'nineteen'

∇ Z ← convert number  
  :If number ≤ 19
          Z ← ⊃  numbers [ number + 1 ]
  :ElseIf number = 20
          Z ← 'twenty'
  :ElseIf number ≤ 29
          Z ← 'twenty ',convert number - 20
  :ElseIf number = 30
          Z ← 'thirty'
  :ElseIf number ≤ 39
          Z ← 'thirty ',convert number - 30
  :ElseIf number = 40
          Z ← 'forty'
  :Else
          Z ← 'forty ',convert number - 40
  :EndIf
∇

:EndNameSpace