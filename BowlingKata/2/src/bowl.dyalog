:NameSpace bowl

      parse←{
          ⎕ML←3 ⋄ g←(⍵≠'|')⊂⍵ ⋄ ⎕ML←0
          (frame¨10↑g),(frame¨,¨⊃10↓g)
      }

      frame←{
          ⍵≡,'X':10
          n←⊃,/2∘⊃¨⎕VFI¨⍵
          1=⍴⍵:n
          '/'≡2⊃⍵:(⊃n)(10-⊃n)
          n
      }
       
      game_score←{
          gc←⍵
          ⊃+/score¨{3↑⍵↓gc}¨¯1+⍳10
      }

      score←{
          10≡⊃⍵:⊃+/⊃,/3↑⊃,/⍵
          10=+/⊃⍵:10+⊃+/1↑⊃,/1↓⍵
          ⊃+/⊃⍵
      }

:EndNameSpace
