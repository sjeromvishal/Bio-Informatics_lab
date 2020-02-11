#!/usr/bin/perl
use strict;use warnings;
my$dna='AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA';
my$i;
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
my($dna)=@_;
my(@nucleotides)=('A','C','G','T');
my($position)= randomposition($dna);
my($newbase)=randomnucleotide(@nucleotides);
substr($dna,$position,1,$newbase);
return$dna;
}
sub randomelement{
my(@array)=@_;
return$array [rand @array];
}
sub randomnucleotide{
my(@nucleotide)=('A','C','G','T');
return randomelement(@nucleotide);
}
sub randomposition{
my($string)=@_;
return int(rand(length($string)));
}
