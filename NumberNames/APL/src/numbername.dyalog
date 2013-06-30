:NameSpace numbername

numbers ← 'zero' 'one' 'two' 'three' 'four' 'five' 'six' 'seven' 'eight' 'nine' 'ten'
numbers,← 'eleven' 'twelve' 'thirteen' 'fourteen' 'fifteen' 'sixteen' 'seventeen' 'eighteen' 'nineteen'
numbers,← ⊂'twenty'

∇ Z ← convert number  
  :If number ≤ 20
          Z ← ⊃  numbers [ number + 1 ]
  :Else
          Z ← 'twenty ',convert number - 20
  :EndIf
∇

:EndNameSpace