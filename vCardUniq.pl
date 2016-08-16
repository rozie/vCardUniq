#!/usr/bin/perl

use strict;
use warnings;

my%vcards=();
my $vcard="";

while (<>){
	if (/^BEGIN\:VCARD/){
		$vcard="";
		print "Begin\n";
	}
	elsif (/^END\:VCARD/){
		print "End\n";
		$vcards{$vcard}=1;
	}
	else {
		print "Body\n";
		$vcard.=$_;
	}
}

foreach $vcard (keys %vcards){
	print "BEGIN:VCARD\n";
	print "$vcard";
	print "END:VCARD\n";
}
