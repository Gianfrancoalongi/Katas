:NameSpace treasure

∇ Z ← split (pattern text)
  :if is_array pattern
          Z ← array_pattern pattern text
  :elseif is_scalar pattern
          Z ← text
  :else
          Z ← matrix_pattern pattern text
  :endif
∇

∇ Z ← array_pattern (pattern text)
  :if is_array text
          Z ← array_pattern_with_array_text pattern text
  :else
          Z ← array_pattern_with_matrix_text pattern text
  :endif
∇

∇ Z ← matrix_pattern (pattern text)
  :if same_letter_in_whole_matrix pattern
          Z ← text
  :else
          Z ← matrix_pattern_with_matrix_text pattern text
  :endif
∇

∇ Z ← matrix_pattern_with_matrix_text (pattern text);letter_indices;index_shapes;splits
  letter_indices ← {(,⍵=pattern)/(,⍳⍴pattern)} ¨ ∪,pattern
  index_shapes ← shape ¨ letter_indices
  splits ← split_according_to_pattern_matrix pattern text
  Z ← { take_and_shape splits ⍵} ¨ ↓ index_shapes,[1.5]letter_indices
∇

∇ Z ← take_and_shape (splits shape_indices);s;rows;cols
  s ← splits[⊃shape_indices[2]]
  s ← (⊃shape_indices[1]) ⍴ s
  rows ← (∪+/ ¨ ⊃ ¨¨ ↓ ⍉ (⍴ ¨ s))
  cols ← (⊃+/ ∪ ¨ 2∘⊃ ¨¨ ↓ ⍉ (⍴ ¨ s))
  Z ← (rows,cols) ⍴ ⊃,/,¨,s
  :if 1=rows
          Z ← ,Z
  :endif
∇

∇ Z ← split_according_to_pattern_matrix (pattern text);blocks;pc
  blocks ← split_vertically pattern text
  pc ← 2⊃⍴ pattern
  Z ← ↑ {split_horizontally ⍵ pc} ¨ ↑ ¨ blocks
∇

∇ Z ← split_vertically (pattern text);w;rows
  w ← generate_drop_and_take_sizes (⊃⍴ pattern) (⊃⍴ text)
  rows ← ↓ text
  Z ← { ⍵[2] ↑ ⍵[1] ↓ rows } ¨ ↓ w
∇

∇ Z ← split_horizontally (text pc);w
  w ← generate_drop_and_take_sizes pc (2⊃⍴text)
  Z ← {⍵[2]↑[2]⍵[1]↓[2]text}¨↓w
∇

∇ Z ← generate_drop_and_take_sizes (pr tr);c;t;d
  c ← ⌊ tr ÷ pr
  :if 0 ≠ pr | tr
          t ← (¯1 + pr) ⍴ c
          t,← (pr | tr) + c
  :else
          t ← pr ⍴ c
  :endif
  d ← +\0,(¯1 ↓ t)
  Z ← d,[1.5]t
∇

∇ Z ← array_pattern_with_array_text (pattern text)
  :if can_be_expressed_as_one_letter pattern
          Z ← text
  :else
          Z ← { text[⍵] } ¨ indices_from_pattern_letters pattern (⍴text)
  :endif
∇

∇ Z ← array_pattern_with_matrix_text (pattern text)
  Z ← { text[;⍵] } ¨ indices_from_pattern_letters pattern (2⊃⍴text)
∇

∇ Z ← shape coordinates;rows;sqrt;a
  :if #.treasure_pattern.is_row coordinates
          Z ← 1 (⊃⍴coordinates)
  :elseif #.treasure_pattern.is_row ⍉ ¨ coordinates
          Z ← (⊃⍴coordinates) 1
  :elseif #.treasure_pattern.is_rectangle coordinates
          rows ← ⊃⍴∪⊃¨ coordinates
          Z ← rows ((⊃⍴coordinates)÷rows)
  :elseif #.treasure_pattern.is_rectangle ⍉ ¨ coordinates
          rows ← ⊃⍴∪⊃¨ coordinates
          Z ← ((⊃⍴coordinates)÷rows) rows
  :else
          sqrt ← ⊃ (⍴ coordinates) * 0.5
          Z ← (⌊sqrt) (⌊sqrt) ⍴ coordinates
  :endif
∇

can_be_expressed_as_one_letter ← {(is_scalar ⍵) ∨ one_letter_array ⍵}
is_array ← {1=⍴⍴⍵}
is_scalar ← {0=⊃⍴⍴⍵}
one_letter_array ← {1=⊃⍴∪⍵}
same_letter_in_whole_matrix ← {1=⊃⍴⊃∪∪/⍵}

∇ Z ← indices_from_pattern_letters (pattern textlen);p;s;index_groups
  p ← ⊃⍴pattern
  :if 0 = p | textlen
          s ← (textlen÷p)
          index_groups ← (⍳s)∘+ ¨ s × 0,⍳¯1+p
  :else
          s ← ⌊(textlen÷p)
          index_groups ← (⍳s)∘+ ¨ s × 0,⍳¯2+p
          index_groups,← ⊂(s×(¯1+p))+⍳(s+p|textlen)
  :endif
  Z ← merge_groups_from_same_letter pattern index_groups
∇

∇ Z ← merge_groups_from_same_letter (pattern index_groups);indices
  indices ← {(⍵=pattern)/⍳⍴pattern}¨ ∪pattern
  Z ← {⊃,/index_groups[⍵]} ¨ indices
∇

:EndNameSpace
