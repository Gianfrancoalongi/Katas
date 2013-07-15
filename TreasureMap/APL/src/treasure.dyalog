:NameSpace treasure

∇ Z ← is_split_pattern_valid pattern
  Z ← (check_chains pattern) ∧ (check_indentation pattern)
∇

∇ Z ← check_chains pattern
  :if 1 = ⊃⍴⍴ pattern
          Z ← is_chain_unbroken pattern
  :else
          Z ← is_matrix_split_pattern_valid pattern
  :endif
∇

∇ Z ← check_indentation pattern;letters;points
  :if 1 = ⊃⍴⍴ pattern
          Z ← 1
  :else
          letters ← ∪,pattern
          points ← {(,⍵=pattern)/(,⍳⍴pattern)} ¨ letters
          Z ← ∧/⊃,/no_point_start_further_to_right_than_in_next_row ¨ points
  :endif
∇

∇ Z ← no_point_start_further_to_right_than_in_next_row points;rows;column_of_first_in_every_row
  rows ← ∪⊃¨points
  column_of_first_in_every_row ← { 2 ⊃ ⊃ (⍵∘=∘⊃ ¨ points)/points } ¨ rows
  Z ← ⊃∧/2≤/column_of_first_in_every_row
∇

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
