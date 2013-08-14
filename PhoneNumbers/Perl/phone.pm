package phone;
use strict;
use warnings;

sub check_numbers
{
    my $l = $_[0];
    if (scalar(@{$l}) == 2) {
	my $first = ${$l}[0];
	my $second = ${$l}[1];
	if( any_prefixes_the_other($first, $second) ) {
	    return "err";
	}
    }
    return "ok"
}

sub any_prefixes_the_other
{
    if($_[1] =~ /^$_[0].*/) {
	return "err";
    }elsif($_[0] =~ /^$_[1].*/){
	return "err";
    }
}

1;
