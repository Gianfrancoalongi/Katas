:NameSpace treasure

∇ Z ← is_split_pattern_valid pattern
  Z ← does_any_outer_product_indicate_broken_chain  ∪ ↓ pattern ∘.= pattern
∇

∇ Z ← does_any_outer_product_indicate_broken_chain products
  Z ← ~∨/1≠{∧/¯1×2-/⍵/⍳⍴⍵} ¨ products
∇

:EndNameSpace
