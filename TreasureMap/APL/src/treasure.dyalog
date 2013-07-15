:NameSpace treasure

∇ Z ← is_split_pattern_valid pattern;rows;cols;a;b
  :if 1 = ⊃⍴⍴ pattern
          Z ← does_any_outer_product_indicate_unbroken_chain  ∪ ↓ pattern ∘.= pattern
  :else
          rows ← ↓ pattern
          cols ← ↓⍉pattern
          a ← { does_any_outer_product_indicate_unbroken_chain  ∪ ↓ ⍵ ∘.= ⍵ } ¨ rows
          b ← { does_any_outer_product_indicate_unbroken_chain  ∪ ↓ ⍵ ∘.= ⍵ } ¨ cols
          Z ← ∧/ a,b
  :endif
∇

∇ Z ← does_any_outer_product_indicate_unbroken_chain products
  Z ← ~∨/1≠{∧/¯1×2-/⍵/⍳⍴⍵} ¨ products
∇

:EndNameSpace
