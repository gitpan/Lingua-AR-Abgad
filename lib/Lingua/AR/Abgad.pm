package Lingua::AR::Abgad;

use warnings;
use strict;
use utf8;

use base 'Exporter';
our @EXPORT_OK = qw(kabeer sagheer);
  
=head1 NAME

Lingua::AR::Abgad 

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

The Abjad numerals are a decimal numeral system in which the 28 letters of 
the Arabic alphabet are assigned numerical values. They are used today in many
fields especially poetry.For example, some words when calculated will give a
certain number representing an event. We have two Abjads one is called Kabeer(Big)
and the other is called Sagheer (small).


    use Lingua::AR::Abgad qw(kabeer sagheer);
    use utf8;
    #returns numerical sum of all the chars in the string

    my $result = kabeer("Arabic string"); 
    my $result = sagheer("Arabic string");
 



=head1 SUBROUTINES

=head2 kabeer (Abjad Hawaz)

=cut

sub kabeer {
    my $string = shift;
    my %freq   = (
        "ا" => 1,
        "آ" => 1,
        "أ" => 1,
        "ء" => 1,
        "ب" => 2,
        "ج" => 3,
        "د" => 4,
        "ه" => 5,
        "ة" => 5,
        "و" => 6,
        "ؤ" => 6,
        "ز" => 7,
        "ح" => 8,
        "ط" => 9,
        "ي" => 10,
        "ى" => 10,
        "ئ" => 10,
        "ك" => 20,
        "ل" => 30,
        "م" => 40,
        "ن" => 50,
        "س" => 60,
        "ع" => 70,
        "ف" => 80,
        "ص" => 90,
        "ق" => 100,
        "ر" => 200,
        "ش" => 300,
        "ت" => 400,
        "ث" => 500,
        "خ" => 600,
        "ذ" => 700,
        "ض" => 800,
        "ظ" => 900,
        "غ" => 1000,
    );

    my $string_sum = 0;
    for ( split '', $string ) {
        if ( exists $freq{$_} ) {
            $string_sum += $freq{$_};
        }
        else {
            $freq{$_} += 0;
        }
    }
    return $string_sum;
}

=head2 sagheer (Modern Alphabet order)

=cut

sub sagheer {
    my $string = shift;
    my %freq   = (
        "ا" => 1,
        "آ" => 1,
        "أ" => 1,
        "ء" => 1,
        "ب" => 2,
        "ت" => 3,
        "ث" => 4,
        "ج" => 5,
        "ح" => 6,
        "خ" => 7,
        "د" => 8,
        "ذ" => 9,
        "ر" => 10,
        "ز" => 11,
        "س" => 12,
        "ش" => 13,
        "ص" => 14,
        "ض" => 15,
        "ط" => 16,
        "ظ" => 17,
        "ع" => 18,
        "غ" => 19,
        "ف" => 20,
        "ق" => 21,
        "ك" => 22,
        "ل" => 23,
        "م" => 24,
        "ن" => 25,
        "ه" => 26,
        "ة" => 26,
        "و" => 27,
        "ؤ" => 27,
        "ي" => 28,
        "ى" => 28,
        "ئ" => 28,
    );
    my $string_sum = 0;
    for ( split '', $string ) {
        if ( exists $freq{$_} ) {
            $string_sum += $freq{$_};
        }
        else {
            $freq{$_} += 0;
        }
    }
    return $string_sum;
}


=head1 AUTHOR

Moosa, C<< <moosa at cpan.org> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-lingua-ar-abgad at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Lingua-AR-Abgad>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Lingua::AR::Abgad


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Lingua-AR-Abgad>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Lingua-AR-Abgad>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Lingua-AR-Abgad>

=item * Search CPAN

L<http://search.cpan.org/dist/Lingua-AR-Abgad/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2012 Moosa.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

1; # End of Lingua::AR::Abgad
