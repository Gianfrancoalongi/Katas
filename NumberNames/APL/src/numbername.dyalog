:NameSpace numbername

numbers ← 'zero' 'one' 'two' 'three' 'four' 'five' 'six' 'seven' 'eight' 'nine' 'ten'
numbers,← 'eleven' 'twelve' 'thirteen' 'fourteen' 'fifteen' 'sixteen' 'seventeen' 'eighteen' 'nineteen'

∇ Z ← convert number
  :If number ≤ 19
          Z ← convert_small number
  :ElseIf number < 100
          Z ← convert_middle number
  :Else
          Z ← convert_large number
  :EndIf
∇

∇ Z ← convert_small number
  Z ← ⊃  numbers [ number + 1 ]
∇

∇ Z ← convert_middle number
  Z ← prefix number
  :If 0 ≠ 10 | number
          Z,← ' ',convert number - (⌊ (number ÷ 10)) × 10
  :EndIf
∇

∇ Z ← prefix number
  Z ← ⊃ 'twenty' 'thirty' 'forty' 'fifty' 'sixty' 'seventy' 'eighty' 'ninety' [ ¯1 + ⌊ number ÷ 10 ]
∇

∇ Z ← convert_large number;p;n;d;t;s
  n ← (number < 1000 100000 1000000),1
  d ← ⊃ n / 100 1000 1000 1000000
  t ← ⊃ n / 'hundred' 'thousand' 'thousand' 'million'
  s ← ⊃ n / ' and ' ', ' ', ' ', '
  Z ← (convert ⌊ number ÷ d),' ',t
  :If 0 ≠ d | number
          Z,← s,convert number -  d × ⌊ (number ÷ d)
  :EndIf        
∇

:EndNameSpace