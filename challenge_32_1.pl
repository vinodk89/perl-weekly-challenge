#!/usr/bin/perl
use Data::Dumper;

my %fruits;
while(<DATA>){
	chomp($_);
	$fruits{$_} += 1;
}
foreach my $fruit( sort keys %fruits){
	print "$fruit,$fruits{$fruit}\n";
}

#print Dumper(\%fruits);

__DATA__
apple
banana
apple
cherry
cherry
apple