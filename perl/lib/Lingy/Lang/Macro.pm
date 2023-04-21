use strict; use warnings;
package Lingy::Lang::Macro;

use base 'Lingy::Lang::Class';

sub new {
    my ($class, $function) = @_;
    XXX $function unless ref($function) eq 'Lingy::Lang::Function';
    bless sub { goto &$function }, $class;
}

1;