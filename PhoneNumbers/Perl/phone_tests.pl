use Test::Simple tests => 8;
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

@numbers = ("9112", "911");
ok( phone::check_numbers(\@numbers) eq "err","Two numbers that collide - smallest as second");

@numbers = ("8112", "8113", "8114");
ok( phone::check_numbers(\@numbers) eq "ok", "Three numbers, none collide");

@numbers = ("911", "8113", "9112");
ok( phone::check_numbers(\@numbers) eq "err", "Three numbers, first and last collide");

@numbers = ("911", "8113", "8114", "9112", "81135");
ok( phone::check_numbers(\@numbers) eq "err", "Five numbers, 2 collisions");
