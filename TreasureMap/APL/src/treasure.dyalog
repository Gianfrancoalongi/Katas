:NameSpace treasure

∇ Z ← split (pattern text)
  :if is_array pattern
          :if can_be_expressed_as_one_letter pattern
                  Z ← text
          :else
                  Z ← { text[⍵] } ¨ indices_from_pattern_letters pattern (⍴text)
          :endif
  :else
          :if one_letter_matrix pattern
                  Z ← text
          :endif
  :endif
∇

can_be_expressed_as_one_letter ← {(a_scalar ⍵) ∨ one_letter_array ⍵}
is_array ← {1=⍴⍴⍵}
a_scalar ← {0=⊃⍴⍴⍵}
one_letter_array ← {1=⊃⍴∪⍵}
one_letter_matrix ← {1=⊃⍴∪∪/⍵}

∇ Z ← indices_from_pattern_letters (pattern textlen);p;s;a;b
  p ← ⊃⍴pattern
  :if 0 = p | textlen
          s ← (textlen÷p)
          Z ← (⍳s)∘+ ¨ s × 0,⍳¯1+p
  :else
          s ← ⌊(textlen÷p)
          a ← (⍳s)∘+ ¨ s × 0,⍳¯2+p
          b ← (s×(¯1+p))+⍳(s+p|textlen)
          Z ← a,⊂b
  :endif
∇

:EndNameSpace
