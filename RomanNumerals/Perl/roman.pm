package roman;
use strict;
use warnings;

sub to
{
    if ( $_[0] == 4 ) { return "IV"; } 
    if ( $_[0] == 5 ) { return "V";  }
    if ( $_[0] > 5 )  { return "V".to($_[0]-5);}
    return 'I' x $_[0];
}

1;
