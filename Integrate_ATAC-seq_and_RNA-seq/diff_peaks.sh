treatA_rep1="treatA_rep1.bam"
treatA_rep2="treatA_rep2.bam"
treatB_rep1="treatB_rep1.bam"
treatB_rep2="treatB_rep2.bam"
out_name="output_name"

# call ACRs enriched in treatA compared to treatB
macs2 callpeak -t $treatA_rep1 $treatA_rep2 \
			   -c $treatB_rep1 $treatB_rep2 \
			   -f BAM \
			   -g 130000000 \
			   -B \
			   -q 0.05 \
			   --bw=200 \
			   -n $out_name \
			   --nomodel \
			   --extsize 74

# make bdg file of fold enrichment
macs2 bdgcmp -m FE \
			 --o-prefix "treatA_vs_treatB" \
			 -t "${out_name}_treat_pileup.bdg" \
			 -c "${out_name}_control_lambda.bdg"
			 
# convert narrow peak file to bed format 
cut -f1-3 "${out_name}_peaks.narrowPeak" > "${out_name}_peaks.narrowPeak.bed"

# extract chromosome peaks
sed '/chloroplast/d' "${out_name}_peaks.narrowPeak.bed" > "${out_name}_peaks.narrowPeak.bed.tmp"
sed '/mitochondria/d' "${out_name}_peaks.narrowPeak.bed.tmp" > "${out_name}_peaks.narrowPeak.bed"
rm -rf "${out_name}_peaks.narrowPeak.bed.tmp"
