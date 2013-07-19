:NameSpace treasure

∇ Z ← split (pattern text)
  :if is_array pattern
          :if (a_scalar pattern) ∨ one_letter_array pattern
                  Z ← text
          :endif
  :else
          :if one_letter_matrix pattern
                  Z ← text
          :endif
  :endif
∇

is_array ← {1=⍴⍴⍵}
a_scalar ← {0=⊃⍴⍴⍵}
one_letter_array ← {1=⊃⍴∪⍵}
one_letter_matrix ← {1=⊃⍴∪∪/⍵}

:EndNameSpace
