:NameSpace phone

∇ Z ← numbers phone_book;b;v
  Z ← 'consistent'
  :If 0 ≠ ⍴⍴ phone_book 
          v ← subset_comparison phone_book
          b ← any_indication_of_subset_match v
          :If b
                  Z ← 'in',Z
          :EndIf
  :EndIf
∇

∇ Z ← subset_comparison phone_book;t
  t ← ↓ ↑ ⍕ ¨ 2∘⌷ ¨ phone_book          
  Z ← ∪ ,N ∘.= N ← t          
∇

∇ Z ← any_indication_of_subset_match subset_comparison
  Z ← ∨ / { (0=1⌷⌽⍵) ∧ (1 = 1⌷⍵) } ¨ subset_comparison
∇

:EndNameSpace