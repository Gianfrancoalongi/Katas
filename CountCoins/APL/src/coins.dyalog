:NameSpace coins

∇ Z ← change coins
  Z ← ⊂ (coins 0 0 0),⍬
  :if (coins ≥ 5) ∧ coins < 10
          Z,←  ⊂ ((⌊ 5 | coins) 1 0 0),⍬
  :endif
  :if (coins = 10)
          Z,← (5 1 0 0) (0 2 0 0) (0 0 1 0)
  :endif
  :if (coins > 10)
          Z,← ((coins - 5) 1 0 0) ((coins - 10) 2 0 0) ((coins - 10) 0 1 0)
  :endif
∇

:EndNameSpace
