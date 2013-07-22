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

∇ Z ← indices_from_pattern_letters (pattern textlen)
  :if 2=⊃⍴∪pattern
          :if 0 = 2 | textlen
                  Z ← { (⍳⍵) (⍵+⍳⍵) } textlen÷2
          :else
                  Z ← { (⍳⌊⍵) ((⌊⍵)+⍳(⌊⍵)+2|textlen) } textlen÷2
          :endif
  :endif
∇

:EndNameSpace
