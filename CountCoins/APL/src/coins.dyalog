:NameSpace coins

∇ Z ← change coins
  Z ← ⌽ ¨ (change2 (25 10 5 1) coins)
∇

∇ Z ← change2 (limit coins);l;p;r;z
  :if limit ≡ 1,⍬
      Z ← coins
  :else
      l ← ⊃ limit
      p ← 0,⍳ ⌊ coins ÷ l
      Z ← ⊃,/ { ⍵∘, ¨ change2 (1↓limit) (coins - ⍵ × l) } ¨ p 
  :endif
∇

:EndNameSpace