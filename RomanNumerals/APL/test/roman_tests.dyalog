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

∇ Z ← ten_to_roman_TEST
        #.UT.expect ← 'X',⍬
        Z ← #.roman.numeral 10
∇

∇ Z ← eleven_to_roman_TEST
        #.UT.expect ← 'XI'
        Z ← #.roman.numeral 11
∇

∇ Z ← forty_to_roman_TEST
        #.UT.expect ← 'XL'
        Z ← #.roman.numeral 40
∇

∇ Z ← forty_five_to_roman_TEST
        #.UT.expect  ← 'XLV'
        Z ← #.roman.numeral 45
∇

∇ Z ← fifty_to_toman_TEST
        #.UT.expect ← 'L',⍬
        Z ← #.roman.numeral 50
∇

∇ Z ← eighty_nine_to_roman_TEST
        #.UT.expect ← 'LXXXIX'
        Z ← #.roman.numeral 89
∇

∇ Z ← ninety_to_roman_TEST
        #.UT.expect ← 'XC'
        Z ← #.roman.numeral 90
∇

∇ Z ← ninety_nine_to_roman_TEST
        #.UT.expect ← 'XCIX'
        Z ← #.roman.numeral 99
∇

∇ Z ← one_hundred_to_roman_TEST
        #.UT.expect ← 'C',⍬
        Z ← #.roman.numeral 100
∇

∇ Z ← one_hundred_five_to_roman_TEST
        #.UT.expect ← 'CV'
        Z ← #.roman.numeral 105
∇

∇ Z ← four_hundred_to_roman_TEST
        #.UT.expect ← 'CD'
        Z ← #.roman.numeral 400
∇

∇ Z ← four_hundred_nienty_nine_to_roman_TEST
        #.UT.expect ← 'CDXCIX'
        Z ← #.roman.numeral 499
∇

∇ Z ← five_hundred_to_roman_TEST
        #.UT.expect ← 'D',⍬
        Z ← #.roman.numeral 500
∇

:EndNameSpace