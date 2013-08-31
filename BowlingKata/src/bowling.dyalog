:NameSpace bowling

      parse_frame←{
          ⍵≡'X':10
          '/'=2⊃⍵:((⍎⊃⍵)(10-(⍎⊃⍵)))
      }

:EndNameSpace
