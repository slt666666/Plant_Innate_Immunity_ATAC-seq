# input data
rep1="rep1.narrowPeak"
rep2="rep2.narrowPeak"
rep1_bam="rep1_sorted.bam"
rep2_bam="rep2_sorted.bam"

# extract common peak regions
bedtools intersect -a $rep1 -b $rep2 > intersect_tmp.bed

# convert narrowPeak file to bed format
cut -f1-3 intersect_tmp.bed > intersect.bed

# count read number for common peak regions for each rep
bedtools coverage -a intersect.bed -b $rep1_bam > rep1_readcount.txt
bedtools coverage -a intersect.bed -b $rep2_bam > rep2_readcount.txt
