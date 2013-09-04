:NameSpace bowl

      frame←{
          ⍵≡,'X':10
          n←⊃,/2∘⊃¨⎕VFI¨⍵
          '/'≡2⊃⍵:(⊃n)(10-2⊃n)
          n
      }

:EndNameSpace
