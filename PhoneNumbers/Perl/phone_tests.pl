use Test::Simple tests => 1;
use strict;
use warnings;
use phone;

my @numbers = ();
ok( phone::check_numbers(\@numbers) eq "ok", "No numbers");
