use Test::Simple tests => 9;
use strict;
use warnings;
use roman;

ok( roman::to(1) eq "I", "I");

ok( roman::to(2) eq "II","II");

ok( roman::to(4) eq "IV","IV");

ok( roman::to(5) eq "V","V");

ok( roman::to(6) eq "VI","VI");

ok( roman::to(9) eq "IX","IX");

ok( roman::to(10) eq "X","X");

ok( roman::to(11) eq "XI","XI");

ok( roman::to(40) eq "XL","XL");
