use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Lingua::AR::Abgad',
    AUTHOR              => q{Moosa <moosa@cpan.org>},
    VERSION_FROM        => 'lib/Lingua/AR/Abgad.pm',
    ABSTRACT_FROM       => 'lib/Lingua/AR/Abgad.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Lingua-AR-Abgad-*' },
);
