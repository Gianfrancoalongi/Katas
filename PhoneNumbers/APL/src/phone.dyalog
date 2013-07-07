:NameSpace phone

∇ Z ← numbers phone_book;b;v
  Z ← 'consistent'
  :If more_than_one_number_in_the phone_book
          :If any_indication_of_match_after subset_comparison_of phone_book
                  Z ← 'in',Z
          :EndIf
  :EndIf
∇

∇ Z ← more_than_one_number_in_the phone_book
  Z ← 0 ≠ ⍴⍴ phone_book
∇

∇ Z ← subset_comparison_of phone_book;t
  t ← ↓ ↑ ⍕ ¨ 2∘⌷ ¨ phone_book          
  Z ← ∪ ,N ∘.= N ← t          
∇

∇ Z ← any_indication_of_match_after subset_comparison
  Z ← ∨ / ⊃∘bit_pattern_indicates_subset_match ¨ subset_comparison
∇

∇ Z ← bit_pattern_indicates_subset_match bit_pattern;pos;first;last;ascending
  pos ← (0 = bit_pattern) / ⍳ ⍴ bit_pattern  
  :If 0 = ⊃ ⍴ pos
          Z ← 0
  :Else
          first ← 1 = ⊃ bit_pattern
          last ← 0=1 ⊃ ⌽bit_pattern
          ascending ← ∧ / ¯1 = 2 -/ pos
          Z ← first ∧ last ∧ ascending
  :EndIf
∇

:EndNameSpace