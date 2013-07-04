:NameSpace gameoflife

∇ Z ← neighbor_matrix board;p;m
  p ← '*' = board
  m ← 1↓, (0 ¯1 1) ∘., (0 ¯1 1)
  Z ← ⊃ +/ { ⍵[1] ⌽ ⍵[2] ⊖ p } ¨ m
∇

∇ Z ← next_generation board;dm;lm;i
  dm ← death_matrix board
  lm ← life_matrix board
  i ← ,⍳ ⍴ board
  board[ i /⍨,dm ] ← '.'
  board[ i /⍨,lm ] ← '*'
  Z ← board
∇

death_matrix ← { (underpopulation ⍵) ∨ overcrowding ⍵ }

underpopulation ← { ( 2 > neighbor_matrix ⍵) × '*' = ⍵ }

overcrowding ←  { ( 3 < neighbor_matrix ⍵) × '*' = ⍵ }

life_matrix ← { (keeps_on ⍵) ∨ born ⍵ }

keeps_on ← { ({ (⍵ = 2) ∨ (⍵ = 3)} neighbor_matrix ⍵) × '*' = ⍵ }

born ← { ( 3 = neighbor_matrix ⍵) × '.' = ⍵ }

:EndNameSpace