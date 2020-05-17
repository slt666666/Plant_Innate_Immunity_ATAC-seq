#!/bin/bash

treat="input_rep1.bam" # input_rep2.bam input_rep3.bam
control_rep1="gDNA_1.bam"
control_rep2="gDNA_2.bam"
control_rep3="gDNA_3.bam"
out_name="output_name"

macs2 callpeak -t $treat \
			   -c $control_rep1 $control_rep2 $control_rep3 \
			   -f BAM \
			   -g 130000000 \
			   -B \
			   -q 0.05 \
			   --bw=200 \
			   --nomodel \
			   --extsize 74 \
			   -n $out_name

macs2 bdgcmp -m FE \
			 --o-prefix $out_name \
			 -t "${out_name}_treat_pileup.bdg" \
			 -c "${out_name}_control_lambda.bdg"
			 
