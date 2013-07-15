:NameSpace treasure

∇ Z ← is_split_pattern_valid pattern
  Z ← (check_chains pattern)
∇

∇ Z ← check_chains pattern
  :if is_just_a_row pattern
          Z ← is_chain_unbroken pattern
  :else
          Z ← is_matrix_split_pattern_valid pattern
  :endif
∇

is_just_a_row ← { 1 = ⊃⍴⍴ ⍵ }

∇ Z ← is_matrix_split_pattern_valid pattern;rows;cols;a;b
  rows ← ↓ pattern
  cols ← ↓⍉pattern
  Z ← ∧/ ⊃,/ { is_chain_unbroken ¨ ⍵ } ¨ rows cols
∇

∇ Z ← is_chain_unbroken chain
  Z ← { do_all_products_indicate_unbroken_chain  ∪ ↓ ⍵ ∘.= ⍵ } chain
∇

∇ Z ← do_all_products_indicate_unbroken_chain products
  Z ← ~∨/1≠{∧/¯1×2-/⍵/⍳⍴⍵} ¨ products
∇

:EndNameSpace
