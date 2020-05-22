label1="treatA"
label2="treatB"
label_vs="treatA_vs_treatB"
motifs="treatA_upregulated_motifs.meme"
file1="treatA_1"
file2="treatB_1"
peaks="treatA_vs_treatB_sorted.bed"
peaks_annot="treatA_vs_treatB_annotated_sorted.bed"
outdir="treatA_vs_treatB"


#treat1
TOBIAS ATACorrect --bam "tobias/bam/${file1}.bam" --genome tobias/TAIR10_chr_all.fas --peaks $peaks --outdir $outdir --cores 4

TOBIAS FootprintScores --signal "${outdir}/${file1}_corrected.bw" --regions $peaks --output "${outdir}/${label1}_footprints.bw" --cores 4

#treat2
TOBIAS ATACorrect --bam "tobias/bam/${file2}.bam" --genome tobias/TAIR10_chr_all.fas --peaks $peaks --outdir $outdir --cores 4

TOBIAS FootprintScores --signal "${outdir}/${file2}_corrected.bw" --regions $peaks --output "${outdir}/${label2}_footprints.bw" --cores 4

#bind detect
TOBIAS BINDetect --motifs $motifs --signals "${outdir}/${label1}_footprints.bw" "${outdir}/${label2}_footprints.bw" --genome tobias/TAIR10_chr_all.fas --peaks $peaks_annot --peak_header tobias/annotated_peaks_header.txt --outdir "tobias/BINDetect_output/${label_vs}" --cond_names $label1 $label2 --cores 2
