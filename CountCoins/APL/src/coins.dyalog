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
          :if (coins ≥ 15)
                  Z,← (0 (⌊coins ÷ 5) 0 0) (0 ((coins - 10) ÷ 5 ) 1 0)
          :endif
          :if (coins ≥ 20)
                  Z,← ((coins - 15) 3 0 0) ((coins - 15) 1 1 0)
          :endif
  :endif
∇

:EndNameSpace
