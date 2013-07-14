:NameSpace treasure

∇ Z ← is_split_pattern_valid pattern
  Z ← does_any_outer_product_indicate_broken_chain  ∪ ↓ pattern ∘.= pattern
∇

∇ Z ← does_any_outer_product_indicate_broken_chain products;a;b;c
  a ← {⍵/⍳⍴⍵} ¨ products
  b ← {2-/⍵} ¨ a
  c ← ~∨/1≠{∧/¯1×⍵} ¨ b
  Z ← c
∇

:EndNameSpace
