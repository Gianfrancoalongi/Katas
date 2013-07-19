:NameSpace treasure

∇ Z ← split_with_pattern args;text;pattern;c;t;partitions;r
  (text pattern) ← args
  :if one_letter_only pattern
          Z ← text
  :elseif 1=⊃⍴⍴pattern
          c ← (⊃⍴text) ÷ (⊃⍴pattern)
          :if c = ⌊ c
                  t ← ↓ ((⊃⍴pattern) c) ⍴ text
                  Z ← {⊃,/t[(⍵=pattern)/(⍳⍴pattern)]} ¨ ∪pattern
          :else
                  partitions ← partition_into_slices text (⊃⍴pattern)
                  Z ← {⊃,/partitions[(⍵=pattern)/(⍳⍴pattern)]} ¨ ∪pattern
          :endif
  :else
          r ← ⊃ ⍴ pattern
          r ← ( r ((⊃⍴text)÷r) ) ⍴ text
          s ← (⍴pattern) ⍴ ⊃,/{ partition_into_slices ⍵ (2⊃⍴pattern)} ¨ ↓r
          Z ← {↑s[(,⍵=pattern)/(,⍳⍴pattern)]} ¨ ∪,pattern
  :endif
∇

∇ Z ← partition_into_slices (text amount);d;r;t
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

:EndNameSpace
