use strict;
use warnings;
use utf8;

use Test::More tests => 5;

use_ok 'Lingua::AR::Abgad';

is Lingua::AR::Abgad::kabeer( "علي قد الغسق"), 1405, 'Yes, my birthdate!';
is Lingua::AR::Abgad::kabeer( "علي"), 110, 'Ok, my name should be 110!';
is Lingua::AR::Abgad::sagheer( "Zero"), 0, 'Ok, non Arabic chars are 0s';
is Lingua::AR::Abgad::sagheer( "علي"), 69, 'Ok, my name should now be 69!';