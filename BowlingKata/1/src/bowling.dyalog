:NameSpace bowling
     
    score_from_game ← { score parse_game ⍵ }

      parse_frame←{
          n←,↑2⊃¨⎕VFI¨⍵
          ⍵≡,'X':10
          '/'∊⍵:|0 10-⊃n
          n
      }
      
      parse_game←{
          ⎕ML←3 ⋄ f←(⍵≠'|')⊂⍵ ⋄ ⎕ML←0
          s←parse_frame¨(10⌊⍴f)↑f
          b←{10<⍴⍵:parse_frame¨{⍬≡⍴⍵:⍵ ⋄ ,¨⊃⍵}10↓⍵
              ⍬}f
          s,b
      }
      
      score←{
          s←⍵
          a←{10<2⊃⍵:0
              10≡⊃⍵:10+(2⊃⍵)score_of_next 2 s
              10=+/⊃⍵:10+(2⊃⍵)score_of_next 1 s
              (10>+/⊃⍵):+/⊃⍵
          }¨↓s,[1.5]⍳⍴⍵
          ⊃+/a
      }
      
    score_of_next ← { ⊃+/(⊃⍵)↑⊃,/ ⍺ at_least_two (2⊃⍵)}
  
    at_least_two←{⍺≥⍴⍵:0 0 ⋄ ⍺↓⍵ }
:EndNameSpace
