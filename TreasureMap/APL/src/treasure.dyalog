:NameSpace treasure

∇ Z ← is_split_pattern_valid pattern;rows;cols;a;b
  :if 1 = ⊃⍴⍴ pattern
          Z ← check_if_chain_is_unbroken pattern
  :else
          rows ← ↓ pattern
          cols ← ↓⍉pattern
          a ← check_if_chain_is_unbroken ¨ rows
          b ← check_if_chain_is_unbroken ¨ cols
          Z ← ∧/ a,b
  :endif
∇

∇ Z ← check_if_chain_is_unbroken chain
  Z ← { do_all_products_indicate_unbroken_chain  ∪ ↓ ⍵ ∘.= ⍵ } chain
∇

∇ Z ← do_all_products_indicate_unbroken_chain products
  Z ← ~∨/1≠{∧/¯1×2-/⍵/⍳⍴⍵} ¨ products
∇

:EndNameSpace
