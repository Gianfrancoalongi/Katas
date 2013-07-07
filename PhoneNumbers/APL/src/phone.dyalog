:NameSpace phone

∇ Z ← numbers phone_book;t;v
  :If 0 = ⍴⍴ phone_book 
          Z ← 'consistent'
  :Else        
          v ← subset_comparison phone_book
          b ← ∨ / { (0=1⌷⌽⍵) ∧ (1 = 1⌷⍵) } ¨ v
          :If b
                  Z ← 'inconsistent'
          :Else
                  Z ← 'consistent'
          :EndIf
  :EndIf
∇

∇ Z ← subset_comparison phone_book;t
  t ← ↓ ↑ ⍕ ¨ 2∘⌷ ¨ phone_book          
  Z ← ∪ ,N ∘.= N ← t          
∇

:EndNameSpace