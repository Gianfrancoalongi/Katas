:NameSpace bowling

∇ Z ← score parsed;also
  :if 1=≡parsed
          Z ← ⊃parsed
  :else
          also ← +/ ⊃ ¨ 1 ↓ parsed
          Z ← 10 + also
  :endif
∇

∇ Z ← parse input;frames;bonus
  frames ← split input
  throws ← parse_frame ¨ 10↑frames
  bonus ← parse_bonus ¨ 10↓frames
  Z ← throws,bonus
∇

∇ Z ← split input 
  ⎕ML←3
  Z ← (input≠'|') ⊂ input
  ⎕ML←0
∇

∇ Z ← parse_frame frame
  :if 1=⍴frame
          Z ← (10 2)
  :elseif (2⊃frame) ≡ '-'
          Z ← ((⍎⊃frame) 0)
  :elseif (2⊃frame) ≡ '/'
          Z ← (10 1)
  :endif
∇

∇ Z ← parse_bonus frame
  :if 'XX'≡frame
          Z ← ((10 0) (10 0))
  :elseif 1=⍴frame
          Z ← ((⍎frame) 0)
  :else
          Z ← ⍬
  :endif
∇

:EndNameSpace
