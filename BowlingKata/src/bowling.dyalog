:NameSpace bowling
     
    score_from_game ← { score parse_game ⍵ }

      parse_frame←{
          ⍵≡,'X':10
          '/'=2⊃⍵:⊃,/(2⊃⎕VFI⊃⍵)(10-(2⊃⎕VFI⊃⍵))
          ⊃,/2∘⊃¨⎕VFI¨⍵
      }
      
      parse_game←{
          ⎕ML←3
          f←(⍵≠'|')⊂⍵
          ⎕ML←0
          s←parse_frame¨(10⌊⍴f)↑f
          b←{10<⍴⍵:parse_frame¨,¨⊃10↓⍵ ⋄ ⍬}f
          s,b
      }
      
      score←{
          d←⍳⍴⍵
          s←⍵
          g←↓s,[1.5]d
          a←{10<2⊃⍵:0
              10≡⊃⍵:10+(2⊃⍵)score_of_next_two_balls s
              10=+/⊃⍵:10+(2⊃⍵)score_of_next_ball s
              (10>+/⊃⍵):+/⊃⍵
          }¨g
          ⊃+/a
      }
      
    score_of_next_two_balls ← { ⊃+/2↑⊃,/ ⍺ at_least_two ⍵}
        
    score_of_next_ball ← { ⊃+/1↑⊃,/ ⍺ at_least_two ⍵}
      
      at_least_two←{⍺≥⍴⍵:⍬ ⍬
          ⍺↓⍵
      }
:EndNameSpace
