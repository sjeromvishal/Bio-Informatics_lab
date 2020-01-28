#!/usr/bin/perl
print"type the file name of the protein sequence:";
$proteinfilename=<STDIN>;
chomp $proteinfilename;
unless(open(PROTEINFILE,$proteinfilename)){print "cannot open file\"$proteinfilename\"\n\n";
exit;}
@protein = <PROTEINFILE>;
closePROTEINFILE;
$protein = join('',@protein);
$protein=~ s/\s//g;
do{
print " Enter a motif to search for : ";
$motif=<STDIN>;
chomp$motif;
if($protein =~ /$motif/)
{
print "yes ";
}
else 
{
print "no ";
}
}
until($motif =~ /^\s*$/);

