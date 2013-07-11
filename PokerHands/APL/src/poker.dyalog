:NameSpace poker

∇ Z ← classify hand;values;suites
  suites ← ¯1∘↑ ¨ hand
  values ← ⊃,/ from_text_to_value ¨ ¯1∘↓ ¨ hand
  values ← values[ ⍒ values]
  :if (all_same suites) ∧ (1=∧/¯1×2-/values)
          Z ← 'straight flush' values
  :elseif (all_same values[1+⍳4])  ∨ (all_same values[⍳4])
          Z ← 'four of a kind' values
  :elseif ((all_same values[⍳2]) ∧ (all_same values[2+⍳3])) ∨ ((all_same values[⍳3]) ∧ (all_same values[3+⍳2]))
          Z ← 'full house' values
  :endif          
∇

∇ Z ← from_text_to_value text
  Z ← 1 + '23456789TJQKA' ⍳ text
∇

∇ Z ← all_same values
  Z ← 1 = ∧/ 2 ≡/ values
∇



:EndNameSpace
