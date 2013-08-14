package phone;
use strict;
use warnings;

sub check_numbers
{
    my $l = $_[0];
    if (scalar(@{$l}) > 1) {
	return "err";
    }else{	
	return "ok"
    }
}

1;
