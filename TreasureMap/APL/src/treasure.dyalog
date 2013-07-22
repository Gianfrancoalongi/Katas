:NameSpace treasure

∇ Z ← split (pattern text)
  :if is_array pattern
          :if can_be_expressed_as_one_letter pattern
                  Z ← text
          :else
                  indices ← indices_from_pattern_letters pattern (⍴text)
                  Z ← { text[⍵] } ¨ indices
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

∇ Z ← indices_from_pattern_letters (pattern textlen)
  :if 2=⊃⍴∪pattern
          a ← ⍳(textlen÷2)
          b ← (textlen÷2)+a
          Z ← a b
  :endif
∇

:EndNameSpace
