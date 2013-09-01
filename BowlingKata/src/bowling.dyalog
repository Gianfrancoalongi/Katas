:NameSpace bowling

      parse_frame←{
          ⍵≡,'X':10
          '/'=2⊃⍵:⊃,/(2⊃⎕VFI⊃⍵)(10-(2⊃⎕VFI⊃⍵))
          ⊃,/2∘⊃¨⎕VFI¨⍵
      }
      
      parse_game←{
          b←¯1⌽⍵='|'
          parse_frame¨¯1↓¨b⊂⍵
      }
      
      score←{
          d←⍳⍴⍵
          s←⍵
          g←↓s,[1.5]d
          a←{10≡⊃⍵:10+(2⊃⍵)score_of_next_two_balls s
              (10>+/⊃⍵):+/⊃⍵
              10+(2⊃⍵)score_of_next_ball s
          }¨g
          ⊃+/a
      }
      
    score_of_next_two_balls ← { ⊃+/2↑⊃,/ ⍺ at_least_two ⍵}
    
    score_of_next_ball ← { ⊃+/1↑⊃,/ ⍺ at_least_two ⍵}
      
      at_least_two←{⍺≥⍴⍵:⍬ ⍬
          ⍺↓⍵
      }
:EndNameSpace
