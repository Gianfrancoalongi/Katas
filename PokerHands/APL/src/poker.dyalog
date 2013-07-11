:NameSpace poker

∇ Z ← classify hand;values
  values ← ⍎ ¨ ¯1∘↓ ¨ hand
  values ← values[ ⍒ values]
  Z ← 'straight flush' values
∇

:EndNameSpace
