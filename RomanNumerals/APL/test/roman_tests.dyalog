:NameSpace rn_tests

∇ Z ← one_to_roman_TEST
        #.UT.expect ← 'I'
        Z ← #.roman.numeral 1
∇

∇ Z ← two_to_roman_TEST
        #.UT.expect ← 'II'
        Z ← #.roman.numeral 2
∇

∇ Z ← three_to_roman_TEST
        #.UT.expect ← 'III'
        Z ← #.roman.numeral 3
∇

:EndNameSpace