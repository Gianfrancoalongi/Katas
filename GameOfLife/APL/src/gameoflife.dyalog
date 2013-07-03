:NameSpace gameoflife

∇ Z ← neighbor_matrix board;p;m
  p ← '*' = board
  m ← 1↓, (0 ¯1 1) ∘., (0 ¯1 1)
  Z ← ⊃ +/ { ⍵[1] ⌽ ⍵[2] ⊖ p } ¨ m
∇

∇ Z ← next_generation board
  Z ← '.*' [ 1 + (2 ≤ neighbor_matrix board) × '*'=board ]
∇

:EndNameSpace