package phone;
use strict;
use warnings;

sub check_numbers
{
    my $l = $_[0];
    if (scalar(@{$l}) == 2) {
	my $first = ${$l}[0];
	my $second = ${$l}[1];
	if($second =~ /^$first.*/) {
	    return "err";
	}else{
	    return "ok";
	}
    }else{
	return "ok"
    }
}

1;
