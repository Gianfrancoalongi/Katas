:NameSpace rn_tests

∇ Z ← one_to_roman_TEST
        #.UT.expect ← 'I',⍬
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

∇ Z ← four_to_roman_TEST
        #.UT.expect ← 'IV'
        Z ← #.roman.numeral 4
∇

∇ Z ← five_to_roman_TEST
        #.UT.expect ← 'V',⍬
        Z ← #.roman.numeral 5
∇

∇ Z ← six_to_roman_TEST
        #.UT.expect ← 'VI'
        Z ← #.roman.numeral 6
∇

∇ Z ← seven_to_roman_TEST
        #.UT.expect ← 'VII'
        Z ← #.roman.numeral 7
∇

∇ Z ← nine_to_roman_TEST
        #.UT.expect ← 'IX'
        Z ← #.roman.numeral 9
∇

:EndNameSpace