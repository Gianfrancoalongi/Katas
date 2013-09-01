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
          a←{10≡⊃⍵:10+⊃+/2↑⊃,/⍵ at_least_two s
              (10>+/⊃⍵):+/⊃⍵
          }¨g
          ⊃+/a
      }
      
      at_least_two←{(2⊃⍺)≥⍴⍵:⍬ ⍬
          (2⊃⍺)↓⍵
      }
:EndNameSpace
