import Bio.Alphabet
from Bio.Alphabet import IUPAC
from Bio.Seq import Seq
protein_seq=Seq("EVRNK",IUPAC.protein);
dna_seq=Seq("ACGT",IUPAC.unambiguous_dna);
#print(protein_seq+dna_seq);
from Bio.Alphabet import generic_alphabet
protein_seq.alphabet=generic_alphabet;
dna_seq.alphabet=generic_alphabet;
print(protein_seq+dna_seq);
from Bio.Alphabet import generic_nucleotide
nuc_seq=Seq("CATCGATGCA",generic_nucleotide);
dna_seq=Seq("ACGT",IUPAC.ambiguous_dna);
print(nuc_seq+dna_seq);
from Bio.Alphabet import generic_dna
list_of_seqs=[Seq("ACGT",generic_dna),Seq("AACC",generic_dna),Seq("GGTT",generic_dna)];
concatenated=Seq("",generic_dna);
for s in list_of_seqs:
    concatenated +=s;
print(concatenated);





