use Test::Simple tests => 2;
use strict;
use warnings;
use phone;

my @numbers = ();
ok( phone::check_numbers(\@numbers) eq "ok", "No numbers");

@numbers = ("911");
ok( phone::check_numbers(\@numbers) eq "ok", "One number is okay");
