package phone;
use strict;
use warnings;

sub check_numbers
{
    my $l = $_[0];
    if (scalar(@{$l}) > 1) {
	for(my $i = 0; $i < scalar(@{$l}); $i++) {
	    my $first = ${$l}[$i];
	    for (my $j = $i+1; $j < scalar(@{$l}); $j++) {
		my $second = ${$l}[$j];
		if ( any_prefixes_the_other($first, $second) ) {
		    return "err";
		}
	    }	    
	}
    }
    return "ok"
}

sub any_prefixes_the_other
{
    if($_[1] =~ /^$_[0].*/) {
	return 1;
    }elsif($_[0] =~ /^$_[1].*/){
	return 1;
    }
    return 0;
}

1;
