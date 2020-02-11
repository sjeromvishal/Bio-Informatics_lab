#!/usr/bin/perl
use strict;use warning;
my$dna='AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA';
my@i;
my$mutant;
srand(time|$$);
$mutant=mutate($dna);
print"\n mutate dna\n\n";
print"\n here is the original dna:\n\n";
print"$dna\n";
print"\n here is the mutant dna:\n\n";
print"$mutant\n";
print"\n here are 10 more successive mutation:\n\n";
for($i=0;$i<10;++$i)
{
$mutant=mutate($mutant);
print"$mutant\n";
}
exit;
sub mutate {
my($dna)=a_;
my(@nucleotides)=('A','C','G','T');
my($position)= randomposition($dna);
my($newbase)=randomnucleotide(@nucleotides);
substr($dna,$position,1,$newbase);
return$dna;
}
sub randomelement{
my(@array)=@_;
return$array [rand@array];
}
