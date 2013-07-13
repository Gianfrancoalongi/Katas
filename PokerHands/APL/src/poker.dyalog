:NameSpace poker

∇ Z ← rank Hands;bvals;wvals
  (Black White) ← classify ¨ Hands
  :if (strength Black) ≡ strength White
          bvals ← 2 ⊃ Black
          wvals ← 2 ⊃ White
          bhigh ← (∨ ⌿ bvals ∘.> wvals) ⍳ 1
          whigh ← (∨ ⌿ wvals ∘.> bvals) ⍳ 1
          :if bhigh < whigh
                  Z ← 'Black wins - high card ',card_name bhigh ⊃ bvals
          :endif
  :endif
∇

∇ Z ← strength classified
  Z ← 'high card' 'pair' 'two pairs' 'three of a kind' 'straight' 'flush' 'full house' 'four of a kind' 'straight flush' ⍳ ⊃ classified
∇

∇ Z ← card_name value
  Z ← (¯1 + value) ⊃ 'Two' 'Three' 'Four' 'Five' 'Six' 'Seven' 'Eight' 'Nine' 'Ten' 'Jack' 'Queen' 'King' 'Ace'
∇

∇ Z ← classify hand;values;suites
  suites ← ¯1∘↑ ¨ hand
  values ← ⊃,/ from_text_to_value ¨ ¯1∘↓ ¨ hand
  values ← values[ ⍒ values]
  :if (same suites) ∧ (ascending values)
          Z ← 'straight flush' values
  :elseif there_are_four_of_a_kind_amongst_the values
          Z ← 'four of a kind' values
  :elseif there_is_a_full_house_amongest_the values
          Z ← 'full house' values
  :elseif same suites
          Z ← 'flush' values
  :elseif ascending values
          Z ← 'straight' values
  :elseif there_are_three_of_a_kind_amongst_the values
          Z ← 'three of a kind' values
  :elseif there_are_two_pairs_amongst_the values
          Z ← 'two pairs' values
  :elseif there_is_a_pair_amongst_the values
          Z ← 'pair' values
  :else
          Z ← 'high card' values
  :endif
∇

∇ Z ← there_is_a_pair_amongst_the values
  Z ← { (same ⍵[⍳2]) ∨ (same ⍵[1+⍳2]) ∨ (same ⍵[2+⍳2]) ∨ (same ⍵[3+⍳2]) } values
∇

∇ Z ← there_are_four_of_a_kind_amongst_the values
  Z ← (same values[1+⍳4])  ∨ same values[⍳4]
∇

∇ Z ← there_is_a_full_house_amongest_the values
  Z ← {((same ⍵[⍳2]) ∧ (same ⍵[2+⍳3])) ∨ ((same ⍵[⍳3]) ∧ (same ⍵[3+⍳2]))} values
∇

∇ Z ← there_are_three_of_a_kind_amongst_the values
  Z ← {(same ⍵[1+⍳3]) ∨ (same ⍵[⍳3]) ∨ (same ⍵[2+⍳3]) } values
∇

∇ Z ← there_are_two_pairs_amongst_the values
  Z ← { (two_pairs_left ⍵) ∨ (two_pairs_right ⍵) ∨ (two_pairs_edges values) } values
∇

∇ Z ← two_pairs_left values
  Z ← (same values[⍳2]) ∧ same values[2+⍳2]
∇

∇ Z ← two_pairs_right values
  Z ← (same values[1+⍳2]) ∧ same values[3+⍳2]
∇

∇ Z ← two_pairs_edges values
  Z ← (same values[⍳2]) ∧ same values[3+⍳2]
∇

∇ Z ← ascending values
  Z ← 1=∧/¯1×2-/ values
∇

∇ Z ← from_text_to_value text
  Z ← 1 + '23456789TJQKA' ⍳ text
∇

∇ Z ← same values
  Z ← 1 = ∧/ 2 ≡/ values
∇

:EndNameSpace
