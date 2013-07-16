:NameSpace treasure

∇ Z ← is_split_pattern_valid pattern
  Z ← (check_chains pattern) ∧  (check_rectangles_and_squares pattern)
∇

∇ Z ← check_rectangles_and_squares pattern;letters;letter_coordinates
  :if is_just_a_row pattern
          Z ← 1
  :else
          letters ← ∪,pattern
          letter_coordinates ← { (,⍵=pattern)/(,⍳⍴pattern) }  ¨ letters
          Z ← ∧/⊃,/coordinates_form_rectangle_or_square ¨ letter_coordinates
  :endif
∇

∇ Z ← coordinates_form_rectangle_or_square coordinates
  Z ← 1
∇

∇ Z ← coordinates_indicate coordinates
  :if only_one_row_in_coordinates coordinates
          :if columns_form_ascending_sequence coordinates
                  Z ← 'row'
          :endif
  :endif
∇

only_one_row_in_coordinates ← { 1 = ⊃ ⍴ ∪ ⊃ ¨ ⍵ }
columns_form_ascending_sequence ← { 1 = ∧/¯1×2-/2∘⊃ ¨ ⍵ }

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
