:NameSpace bowling

∇ Z ← parse input;frames
  ⎕ML←3
  frames ← (input≠'|') ⊂ input
  ⎕ML←0
  parsed ← parse_frame ¨ frames
  Z ← (,/10↑parsed),(10↓parsed)
∇

∇ Z ← parse_frame frame 
  Z ← ( 10 × frame='X')
∇

:EndNameSpace
