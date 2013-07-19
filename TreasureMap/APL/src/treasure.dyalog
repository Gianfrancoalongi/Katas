:NameSpace treasure

∇ Z ← split_with_pattern args;text;pattern
  (text pattern) ← args
  :if one_letter_only pattern
          Z ← text
  :elseif row_pattern pattern
          Z ← split_with_row_pattern text pattern
  :else
          Z ← split_with_matrix_pattern text pattern
  :endif
∇

row_pattern ← {1=⊃⍴⍴⍵}

∇ Z ← split_with_row_pattern args;text;pattern;c;t
  (text pattern) ← args
  c ← (⊃⍴text) ÷ (⊃⍴pattern)
  :if c = ⌊ c
          t ← ↓ ((⊃⍴pattern) c) ⍴ text
  :else
          t ← partition_into_slices text (⊃⍴pattern)
  :endif
  Z ← {⊃,/t[(⍵=pattern)/(⍳⍴pattern)]} ¨ ∪pattern
∇

∇ Z ← partition_into_slices (text amount);d;c;r;t
  d ← ⊃ (⍴text) ÷ amount
  :if { ⍵ = ⌊ ⍵ } d
          Z ← ↓ (amount d) ⍴ text
  :else
          c ← ⌊ d
          r ← (⍴ text) - (c × amount)
          t ← ((¯1+amount) ⍴ c),(c+r)
          Z ← {t[⍵]↑(+/t[⍳(¯1+⍵)])↓text} ¨  ⍳⍴t
  :endif
∇

one_letter_only ← {0=⊃⍴⍴⍵}

∇ Z ← split_with_matrix_pattern args;text;pattern;r;s
  (text pattern) ← args
  r ← ⊃ ⍴ pattern
  r ← ( r ((⊃⍴text)÷r) ) ⍴ text
  s ← (⍴pattern) ⍴ ⊃,/{ partition_into_slices ⍵ (2⊃⍴pattern)} ¨ ↓r
  Z ← {↑s[(,⍵=pattern)/(,⍳⍴pattern)]} ¨ ∪,pattern
  :if only_one_column pattern
          Z ← , ¨ Z 
  :endif
∇

only_one_column ← {1=2⊃⍴⍵}

:EndNameSpace
