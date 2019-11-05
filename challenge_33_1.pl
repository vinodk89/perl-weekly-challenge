#!/usr/bin/perl

#########################################################
#														#		
# Execution method : perl <script_name> <file1> <file2>	#
#														#
#########################################################

use strict;
use warnings;
use File::Slurp;
use Data::Dumper;
use List::Util qw(sum);


foreach my $file( @ARGV ){
	if(!-e $file){
		print "File - $file doesn't exits\n";
		next;
	} else {
		print "Processing counts for $file\n";
	}
	
	my @lines = read_file($file, chomp => 1);
	
	my %counts;
	
	foreach ( @lines ){
		foreach my $char ( split //, $_ ){ 
			next unless ($char =~ /[a-zA-Z]/);
			$counts{lc($char)}++;
		}		
	}
	
	foreach my $key(sort keys %counts){
		print "$key : $counts{$key}\n";
	}
}