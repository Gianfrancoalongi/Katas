:NameSpace phone

∇ Z ← numbers phone_book
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
  t ← ↓↑ ⍕ ¨ 2∘⌷ ¨ phone_book
  Z ← ⊃,/{ ⍵∘matched_with ¨ t ~ ⊂⍵ } ¨ t
∇

∇ Z ← a matched_with b
  Z ← (a = b)[ ⍳ ¯1 + (a⍳' ') ⌊ (b⍳' ') ]
∇

∇ Z ← any_indication_of_match_after subset_comparison
  Z ← ∨ / { ⊃ ∧ / ⍵ }  ¨ subset_comparison
∇

:EndNameSpace