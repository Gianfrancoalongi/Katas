:NameSpace treasure

∇ Z ← split (pattern text)
  :if is_array pattern
          :if can_be_expressed_as_one_letter pattern
                  Z ← text
          :else
                  Z ← { text[⍵] } ¨ indices_from_pattern_letters pattern (⍴text)
          :endif
  :else
          Z ← text
  :endif
∇

can_be_expressed_as_one_letter ← {(a_scalar ⍵) ∨ one_letter_array ⍵}
is_array ← {1=⍴⍴⍵}
a_scalar ← {0=⊃⍴⍴⍵}
one_letter_array ← {1=⊃⍴∪⍵}
one_letter_matrix ← {1=⊃⍴∪∪/⍵}

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
