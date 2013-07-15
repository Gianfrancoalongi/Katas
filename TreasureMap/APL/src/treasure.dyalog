:NameSpace treasure

∇ Z ← is_split_pattern_valid pattern
  :if 1 = ⊃⍴⍴ pattern
          Z ← is_chain_unbroken pattern
  :else
          Z ← is_matrix_split_pattern_valid pattern
  :endif
∇

∇ Z ← is_matrix_split_pattern_valid pattern;rows;cols;a;b
  rows ← ↓ pattern
  cols ← ↓⍉pattern
  Z ← ∧/ ⊃,/ (is_chain_unbroken ¨ rows) (is_chain_unbroken ¨ cols)
∇

∇ Z ← is_chain_unbroken chain
  Z ← { do_all_products_indicate_unbroken_chain  ∪ ↓ ⍵ ∘.= ⍵ } chain
∇

∇ Z ← do_all_products_indicate_unbroken_chain products
  Z ← ~∨/1≠{∧/¯1×2-/⍵/⍳⍴⍵} ¨ products
∇

:EndNameSpace
