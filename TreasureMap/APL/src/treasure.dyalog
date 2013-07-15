:NameSpace treasure

∇ Z ← is_split_pattern_valid pattern
  Z ← (check_chains pattern) ∧ (check_indentation pattern)
∇

∇ Z ← check_chains pattern
  :if is_just_a_row pattern
          Z ← is_chain_unbroken pattern
  :else
          Z ← is_matrix_split_pattern_valid pattern
  :endif
∇

∇ Z ← check_indentation pattern;letters;letter_points
  :if is_just_a_row pattern
          Z ← 1
  :else
          letters ← ∪,pattern
          letter_points ← {(,⍵=pattern)/(,⍳⍴pattern)} ¨ letters
          Z ← ∧/⊃,/no_point_start_further_to_right_than_in_next_row ¨ letter_points
  :endif
∇

is_just_a_row ← { 1 = ⊃⍴⍴ ⍵ }

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