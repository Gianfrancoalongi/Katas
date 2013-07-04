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

death_matrix ← { (underpopulation_matrix ⍵) ∨ (overcrowding_matrix ⍵) }

underpopulation_matrix ← { ( 2 > neighbor_matrix ⍵) × '*' = ⍵ }

overcrowding_matrix ←  { ( 3 < neighbor_matrix ⍵) × '*' = ⍵ }

life_matrix ← { (keeps_on_matrix ⍵) ∨ (born_matrix ⍵) }

∇ Z ← keeps_on_matrix board
  Z ← ({ (⍵ = 2) ∨ (⍵ = 3)} neighbor_matrix board) × '*' = board 
∇

∇ Z ← born_matrix board
  Z ← ( 3 = neighbor_matrix board) × '.' = board
∇

:EndNameSpace