#!/usr/bin/perl

use strict;
use warnings;

my $rows = 11;

my ($i, $j);
for($i=1; $i<=$rows; $i++){
	for($j=1; $j<$i; $j++){
		printf ("%4s", " ");
	}
	for($j=$i; $j<=$rows; $j++){
		printf("%4d", $j*$i);
	}
	printf("\n");
}