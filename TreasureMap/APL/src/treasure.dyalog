:NameSpace treasure

∇ Z ← split (pattern text)
  :if (a_scalar pattern) ∨ one_letter_array pattern
    Z ← text
  :endif
∇

a_scalar ← {0=⊃⍴⍴⍵}
one_letter_array ← {1=⊃⍴∪⍵}

:EndNameSpace
