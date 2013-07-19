:NameSpace treasure

∇ Z ← split (pattern text)
  :if 0=⊃⍴⍴pattern
    Z ← text
  :elseif 1=⊃⍴∪pattern
    Z ← text
  :endif
∇

:EndNameSpace
