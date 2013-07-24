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
          Z ← { text[;⍵] } ¨ indices_from_pattern_letters pattern (2⊃⍴text)
  :endif
∇

∇ Z ← split_array_text (pattern text)
  :if can_be_expressed_as_one_letter pattern
          Z ← text
  :else
          Z ← { text[⍵] } ¨ indices_from_pattern_letters pattern (⍴text)
  :endif
∇

∇ Z ← matrix_based_split (pattern text);splits
  :if same_letter_in_whole_matrix pattern
          Z ← text
  :else
          splits ← {split ⍵[1],⍵[2]} ¨ ↓(↓pattern),[1.5](↓text)
          Z ← ↑ ¨ ↓ ⍉ ↑ splits
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
