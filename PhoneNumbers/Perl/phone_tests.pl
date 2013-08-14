use Test::Simple tests => 4;
use strict;
use warnings;
use phone;

my @numbers = ();
ok( phone::check_numbers(\@numbers) eq "ok", "No numbers");

@numbers = ("911");
ok( phone::check_numbers(\@numbers) eq "ok", "One number is okay");

@numbers = ("911", "9112");
ok( phone::check_numbers(\@numbers) eq "err", "Two numbers that collide");

@numbers = ("911", "822");
ok( phone::check_numbers(\@numbers) eq "ok", "Two numbers that do not collide");
