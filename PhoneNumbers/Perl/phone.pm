package phone;
use strict;
use warnings;

sub check_numbers
{
    if (scalar(@{$_[0]}) > 1) {
	return check_every_number_against_all_others($_[0]);
    }
    return "ok"
}

sub check_every_number_against_all_others
{
    my $l = $_[0];
    for(my $i = 0; $i < scalar(@$l); $i++) {
	my $first = ${$l}[$i];
	foreach (@$l[($i+1) .. scalar(@$l)-1]) {
	    if ( any_prefixes_the_other($first, $_) ) {
		return "err";
	    }
	}
    }
    return "ok";
}

sub any_prefixes_the_other
{
    return ( ($_[1] =~ /^$_[0].*/) || ($_[0] =~ /^$_[1].*/) );
}

1;
