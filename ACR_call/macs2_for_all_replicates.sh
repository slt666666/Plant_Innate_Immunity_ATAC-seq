#!/bin/bash

treat_rep1="input_rep1.bam"
treat_rep2="input_rep2.bam"
# treat_rep3="input_rep3.bam"
control_rep1="gDNA_1.bam"
control_rep2="gDNA_2.bam"
control_rep3="gDNA_3.bam"
out_name="output_name"

# call ACRs by MACS2
macs2 callpeak -t $treat_rep1 $treat_rep2 \ # $treat_rep1 $treat_rep2 $treat_rep3 \
			   -c $control_rep1 $control_rep2 $control_rep3 \
			   -f BAM \
			   -g 130000000 \
			   -B \
			   -q 0.05 \
			   --bw=200 \
			   --nomodel \
			   --extsize 74 \
			   -n $out_name

# make bdg files of fold enrichment
macs2 bdgcmp -m FE \
			 --o-prefix $out_name \
			 -t "${out_name}_treat_pileup.bdg" \
			 -c "${out_name}_control_lambda.bdg"

# convert narrow peak file to bed format 
cut -f1-3 "${out_name}_peaks.narrowPeak" > "${out_name}_peaks.narrowPeak.bed"

# extract chromosome peaks
sed '/chloroplast/d' "${out_name}_peaks.narrowPeak.bed" > "${out_name}_peaks.narrowPeak.bed.tmp"
sed '/mitochondria/d' "${out_name}_peaks.narrowPeak.bed.tmp" > "${out_name}_peaks.narrowPeak.bed"
rm -rf "${out_name}_peaks.narrowPeak.bed.tmp"
