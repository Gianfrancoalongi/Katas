package roman;
use strict;
use warnings;

sub to
{
    if ( $_[0] == 0 ) { return ""; }
    if ( $_[0] == 4 ) { return "IV"; }
    if ( $_[0] == 9)  { return "IX"; }
    my @limits =  ([400,"CD"],[100,"C"],[90,"XC"],[50,"L"],[40,"XL"],[10,"X"],[5,"V"]);
    foreach my $lim (@limits) {
	if ($_[0] >= $lim->[0]) {
	    return $lim->[1].to($_[0]-$lim->[0]);
	}
    }
    return 'I' x $_[0];
}

1;
