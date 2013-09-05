:NameSpace bowl

      frame←{
          ⍵≡,'X':10
          n←⊃,/2∘⊃¨⎕VFI¨⍵
          '/'≡2⊃⍵:(⊃n)(10-⊃n)
          n
      }
      
      score←{
          10≡⊃⍵:⊃+/⊃,/3↑⍵
      }

:EndNameSpace
