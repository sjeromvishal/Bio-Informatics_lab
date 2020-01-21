#!/usr/bin/perl
@bases=('A','C','G','T');
$bases1=pop@bases;
print"here's an element removed from the end:";
print$bases1,"\n\n";
print"here's the remaining array of bases:";
print"@bases\n";
unshift("@bases,$bases1");
print"here's the element from the end put on the end:";

