#!/usr/bin/perl

use strict;
use warnings;

my %vcards = ();
my $vcard  = "";
my $debug  = 0;

while (<>) {
    if (/^BEGIN\:VCARD/) {
        $vcard = "";
        print "Begin\n" if $debug;
    }
    elsif (/^END\:VCARD/) {
        print "End\n" if $debug;
        $vcards{$vcard} = 1;
    }
    else {
        print "Body\n" if $debug;
        $vcard .= $_;
    }
}

foreach $vcard ( keys %vcards ) {
    print "BEGIN:VCARD\n";
    print "$vcard";
    print "END:VCARD\n";
}
