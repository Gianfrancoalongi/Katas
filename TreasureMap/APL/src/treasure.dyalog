:NameSpace treasure

∇ Z ← split (pattern text)
  :if 1=⍴⍴pattern
          :if (a_scalar pattern) ∨ one_letter_array pattern
                  Z ← text
          :endif
  :else
          :if 1=⊃⍴∪∪/pattern
                  Z ← text
          :endif
  :endif
∇

a_scalar ← {0=⊃⍴⍴⍵}
one_letter_array ← {1=⊃⍴∪⍵}

:EndNameSpace
