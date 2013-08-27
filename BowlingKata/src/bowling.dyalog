:NameSpace bowling

∇ Z ← parse input;frames
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
  Z ← (10 2) × frame='X'
∇

∇ Z ← parse_bonus frame
  Z ← ((10 0) (10 0)) × frame='XX'
∇

:EndNameSpace
