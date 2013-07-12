:NameSpace poker

∇ Z ← classify hand;values;suites
  suites ← ¯1∘↑ ¨ hand
  values ← ⊃,/ from_text_to_value ¨ ¯1∘↓ ¨ hand
  values ← values[ ⍒ values]
  :if (same suites) ∧ (ascending values)
          Z ← 'straight flush' values
  :elseif (same values[1+⍳4])  ∨ (same values[⍳4])
          Z ← 'four of a kind' values
  :elseif {((same ⍵[⍳2]) ∧ (same ⍵[2+⍳3])) ∨ ((same ⍵[⍳3]) ∧ (same ⍵[3+⍳2]))} values
          Z ← 'full house' values
  :elseif same suites
          Z ← 'flush' values
  :elseif ascending values
          Z ← 'straight' values
  :elseif {(same ⍵[1+⍳3]) ∨ (same ⍵[⍳3]) ∨ (same ⍵[2+⍳3]) } values
          Z ← 'three of a kind' values
  :elseif {((same ⍵[⍳2]) ∧ same ⍵[2+⍳2]) ∨ ((same ⍵[1+⍳2])∧same ⍵[3+⍳2]) ∨ ((same ⍵[⍳2]) ∧ same ⍵[3+⍳2])} values
          Z ← 'two pairs' values
  :endif
∇

∇ Z ← ascending values
  Z ← 1=∧/¯1×2-/ values
∇

∇ Z ← from_text_to_value text
  Z ← 1 + '23456789TJQKA' ⍳ text
∇

∇ Z ← same values
  Z ← 1 = ∧/ 2 ≡/ values
∇



:EndNameSpace
