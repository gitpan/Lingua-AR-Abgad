#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Lingua::AR::Abgad' ) || print "Bail out!
";
}

diag( "Testing Lingua::AR::Abgad $Lingua::AR::Abgad::VERSION, Perl $], $^X" );
