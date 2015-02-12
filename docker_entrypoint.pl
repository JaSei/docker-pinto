#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;

my $cmd = join(' ', @ARGV);

if ($ARGV[0] eq 'pintod') {
    my $root_path = $ENV{ PINTO_REPOSITORY_ROOT };
    GetOptions("root|r=s" => \$root_path);

    if(!$root_path) {
        die 'pintod have must specify root dir';
    }
    
    mkdir($root_path);
    if (!-d "$root_path/modules") {
	system "pinto -r $root_path init";
    }
}

exec $cmd;
