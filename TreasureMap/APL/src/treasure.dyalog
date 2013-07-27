:NameSpace treasure

∇ Z ← split (pattern text)
  :if is_array pattern
          Z ← array_based_split pattern text
  :elseif a_scalar pattern
          Z ← text
  :else
          Z ← matrix_based_split pattern text
  :endif
∇

∇ Z ← array_based_split (pattern text)
  :if is_array text
          Z ← split_array_text pattern text
  :else
          Z ← split_matrix_text pattern text
  :endif
∇

∇ Z ← matrix_based_split (pattern text)
  :if same_letter_in_whole_matrix pattern
          Z ← text
  :else
          Z ← matrix_pattern_with_matrix_text pattern text
  :endif
∇

∇ Z ← matrix_pattern_with_matrix_text (pattern text);letter_indices;index_shapes;pc;splits
  letter_indices ← {(,⍵=pattern)/(,⍳⍴pattern)} ¨ ∪,pattern
  index_shapes ← shape ¨ letter_indices
  pc ← 2 ⊃ ⍴ pattern
  splits ← {split_text_into_fragments ⍵ pc} ¨ ↓ text
  Z ← { collapse (⊃⍵[1]) ⍴ (↑splits)[⊃⍵[2]] } ¨ ↓ index_shapes,[1.5]letter_indices
∇

∇ Z ← split_array_text (pattern text)
  :if can_be_expressed_as_one_letter pattern
          Z ← text
  :else
          Z ← { text[⍵] } ¨ indices_from_pattern_letters pattern (⍴text)
  :endif
∇

∇ Z ← split_matrix_text (pattern text)
  Z ← { text[;⍵] } ¨ indices_from_pattern_letters pattern (2⊃⍴text)
∇

∇ Z ← collapse nested
  (r c) ← ⍴ nested
  :if r = c
          Z ← ↑ {⊃,/⍵} ¨ ↓ nested
  :elseif 1=c
          Z ← ↑,/nested
  :elseif 1=r
          Z ← ⊃,/nested
  :endif
∇

∇ Z ← split_text_into_fragments (text pc);tc;d;s;q;w
  tc ← ⍴text
  :if 0≠pc|tc
          d ← ⌊ tc ÷ pc
          s ← (¯1+pc) ⍴ d
          s,← (pc|tc)+d
  :else
          d ← tc ÷ pc
          s ← pc ⍴ d
  :endif
  q ← +\¯1↓0,s
  w ← ⍉ ↑ s q
  Z ← {⍵[1]↑⍵[2]↓text}¨↓w
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

can_be_expressed_as_one_letter ← {(a_scalar ⍵) ∨ one_letter_array ⍵}
is_array ← {1=⍴⍴⍵}
a_scalar ← {0=⊃⍴⍴⍵}
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
