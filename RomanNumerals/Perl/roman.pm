package roman;
use strict;
use warnings;

sub to
{
    if ( $_[0] == 0 ) { return ""; }
    if ( $_[0] == 4 ) { return "IV"; }
    if ( $_[0] == 9)  { return "IX"; }
    if ( $_[0] >= 90) { return "XC".to($_[0]-90);}
    if ( $_[0] >= 50) { return "L".to($_[0]-50);}
    if ( $_[0] >= 40) { return "XL".to($_[0]-40);}
    if ( $_[0] >= 10) { return "X".to($_[0]-10);}
    if ( $_[0] >= 5 ) { return "V".to($_[0]-5);}
    return 'I' x $_[0];
}

1;
