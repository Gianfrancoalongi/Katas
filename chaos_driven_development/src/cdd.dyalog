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
          'DF 1'≡⍵:((⊃⍺)forward(2⊃⍺))(2⊃⍺)
          'DF 2'≡⍵:(((⊃⍺)forward(2⊃⍺))forward(2⊃⍺))(2⊃⍺)
          'DF 3'≡⍵:((((⊃⍺)forward(2⊃⍺))forward(2⊃⍺))forward(2⊃⍺))(2⊃⍺)
          'DB'≡⍵:((⊃⍺)backward(2⊃⍺))(2⊃⍺)
          'TL'≡⍵:(⊃⍺)(turn_left 2⊃⍺)
          'TR'≡⍵:(⊃⍺)(turn_right 2⊃⍺)
          'UT'≡⍵:(⊃⍺)(u_turn 2⊃⍺)
      }

    ∇ Z←random_commands
      commands←('DF 1' 'DF 2' 'DF 3' 'DB' 'TR' 'TL' 'UT')
      distribution←18 12 6 6 18 18 6
      set←⊃,/{(⊃⍵)⍴(⊂2⊃⍵)}¨↓↑[0.5]distribution commands
      Z←set[9?⍴set]
    ∇

    ∇ Z←play;state;r;c;t
      ⎕←random_commands
      commands←9⍴⊂''
      {commands[⍵]←⊂⍞}¨⍳9
      commands←{(∨\' '≠⍵)/⍵}¨commands
      commands←(''∘≢¨commands)/commands
      state←(12 12)1
      r←⊂state
      :For c :In commands
          t←state interpret c
          r,←⊂t
          state←t
      :EndFor
      Z←(12 12)∘disp_game¨r
    ∇


:EndNameSpace

