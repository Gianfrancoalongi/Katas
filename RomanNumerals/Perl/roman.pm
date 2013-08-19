package roman;
use strict;
use warnings;

sub to
{
    if ( $_[0] == 4 ) { return "IV"; } 
    if ( $_[0] == 5 ) { return "V"; }
    return 'I' x $_[0];
}

1;
