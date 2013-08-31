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

:EndNameSpace
