package roman;
use strict;
use warnings;

sub to
{
    if ( $_[0] == 4 ) { return "IV"; } 
    return 'I' x $_[0];
}

1;
