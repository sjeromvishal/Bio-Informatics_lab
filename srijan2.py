import Bio.Alphabet
from Bio.Alphabet import IUPAC
from Bio.Seq import Seq
my_seq1= Seq("AGTAGCGCAAAGCGCAAAGCAGCAGTGCGTAGCCGCTTGACGCACCTGGT",IUPAC.unambiguous_dna);
print(my_seq1[4:12]);
print(my_seq1[0::3]);
print(my_seq1[1::3]);
print(my_seq1[2::3]);
print(my_seq1[::-1]);