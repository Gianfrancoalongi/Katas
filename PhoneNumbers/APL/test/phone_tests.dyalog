:NameSpace phone_tests

∇ Z ← one_number_is_a_consistent_list_TEST
  #.UT.expect ← 'consistent'
  Z ← #.phone.numbers ⊂('Bob' 91125426)
∇

∇ Z ← two_inconsistent_numbers_list_TEST
  #.UT.expect ← 'inconsistent'
  Z ← #.phone.numbers ('Bob' 91125426) ('Emergency' 911)
∇

∇ Z ← three_numbers_consistent_list_TEST
  #.UT.expect ← 'consistent'
  Z ← #.phone.numbers ('Bob' 91125426) ('Alice' 97625992) ('Ellie' 912289822)
∇

∇ Z ← consistent_with_partial_match_TEST
  #.UT.expect ← 'consistent'
  Z ← #.phone.numbers ('Bob' 91125426) ('Alan' 9112333)
∇

:EndNameSpace