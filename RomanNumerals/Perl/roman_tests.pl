use Test::Simple tests => 3;
use strict;
use warnings;
use roman;

ok( roman::to(1) eq "I", "I");

ok( roman::to(2) eq "II","II");

ok( roman::to(4) eq "IV","IV");
