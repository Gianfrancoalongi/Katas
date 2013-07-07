:NameSpace phone_tests

∇ Z ← one_number_is_a_consistent_list_TEST
  #.UT.expect ← 'consistent'
  Z ← #.phone.numbers ⊂('Bob' 91125426)
∇

∇ Z ← two_inconsistent_numbers_list_TEST
  #.UT.expect ← 'inconsistent'
  Z ← #.phone.numbers ('Bob' 91125426) ('Emergency' 911)
∇


:EndNameSpace