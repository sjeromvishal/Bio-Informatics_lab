#!/usr/bin/perl
@bases=('A','C','G','T');
$bases1=pop(@bases);
unshift(@bases,$base1);

print"here's an element removed from the end:";
print$base1,"\n\n";
print"here's the remaining array of bases:";
print"@bases\n";
