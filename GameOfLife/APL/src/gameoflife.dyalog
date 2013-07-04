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

∇ Z ← death_matrix board;underpopulation;overcrowding
  underpopulation ← ( 2 > neighbor_matrix board) × '*' = board
  overcrowding ← ( 3 < neighbor_matrix board) × '*' = board
  Z ← underpopulation ∨ overcrowding
∇

∇ Z ← life_matrix board;lives;born
  lives ← ({ (⍵ = 2) ∨ (⍵ = 3)} neighbor_matrix board) × '*' = board 
  born ← ( 3 = neighbor_matrix board) × '.' = board
  Z ← lives ∨ born
∇

:EndNameSpace