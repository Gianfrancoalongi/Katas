:NameSpace poker

∇ Z ← classify hand;values;suites
  suites ← ¯1∘↑ ¨ hand
  values ← ⍎ ¨ ¯1∘↓ ¨ hand
  values ← values[ ⍒ values]
  :if (1 = ∧/ 2 ≡ / suites) ∧ (1=∧/¯1×2-/values)
          Z ← 'straight flush' values
  :elseif (1 = ∧/ 2 =/ values[1+⍳4])  ∨ (1 = ∧/ 2 =/ values[⍳4])
          Z ← 'four of a kind' values
  :endif
∇

:EndNameSpace
