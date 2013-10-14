:NameSpace cdd

      display←{
          b←'⎕ '[1+⊃⍵]
          b[2⊃⍵]←'▲▶▼◀'[3⊃⍵]
          b
      }

:EndNameSpace
