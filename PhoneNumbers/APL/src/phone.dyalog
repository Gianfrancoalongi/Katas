:NameSpace phone

∇ Z ← numbers phone_book;t;v
  :If 0 = ⍴⍴ phone_book 
          Z ← 'consistent'
  :Else        
          t ← ↓ ↑ ⍕ ¨ 2∘⌷ ¨ phone_book          
          v ← ∪ ,N ∘.= N ← t          
          b ← ∨ / { (0=1⌷⌽⍵) ∧ (1 = 1⌷⍵) } ¨ v
          :If b
                  Z ← 'inconsistent'
          :Else
                  Z ← 'consistent'
          :EndIf
  :EndIf
∇

:EndNameSpace