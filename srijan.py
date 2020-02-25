import Bio.Alphabet
from Bio.Alphabet import IUPAC
from Bio.Seq import Seq
my_seq= Seq("AGTACACCTGGT");
print(my_seq.complement());
print(my_seq.reverse_complement());
my_seq.count("T")
GC_count=100*float(my_seq.count("G")+my_seq.count("C"))/len(my_seq);
print(GC_count);

