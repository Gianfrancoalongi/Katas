:NameSpace cdd

    disp_heading←{ '▲▶▼◀'[⍵] }
    turn_left←{(1⌽⍳4) ⍳ ⍵ }
    turn_right←{(¯1⌽⍳4) ⍳ ⍵}
    u_turn←{(2⌽⍳4)⍳⍵}
    forward←{⍺+⍵⊃(¯1 0) (0 1) (1 0) (0 ¯1)}
    backward←{⍺+⍵⊃(1 0) (0 ¯1) (¯1 0) (0 1)}
      disp_game←{
          b←⍺⍴'⎕'
          b[⊂⊃⍵]←disp_heading 2⊃⍵
          b
      }
      interpret←{
          'DF'≡⍵:((⊃⍺)forward(2⊃⍺))(2⊃⍺)
          'DB'≡⍵:((⊃⍺)backward(2⊃⍺))(2⊃⍺)
          'TL'≡⍵:(⊃⍺)(turn_left 2⊃⍺)
      }


:EndNameSpace
