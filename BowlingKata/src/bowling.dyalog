:NameSpace bowling

      parse_frame←{
          ⍵≡'X':10
          '/'=2⊃⍵:⊃,/(2⊃⎕VFI⊃⍵)(10-(2⊃⎕VFI⊃⍵))
      }

:EndNameSpace
