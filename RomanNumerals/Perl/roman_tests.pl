use Test::Simple tests => 1;
use strict;
use warnings;
use roman;

ok( roman::to(1) eq "I", "I");
