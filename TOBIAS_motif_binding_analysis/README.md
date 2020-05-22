### All input/output data are stored in Zenodo(https://~~~~)

## make bed files formatted for TOBIAS

script: merge_peaks.sh

| vs | input | output(not labeled) |  output(labeled)  |
|---|---|---|---|
| WT_a4_vs_mk | wt_a4_4h_peaks.narrowPeak.bed, wt_mk_4h_peaks.narrowPeak.bed | wt_a4_vs_mk_sorted.bed | wt_a4_vs_mk_annotated_sorted.bed |
| WT_kv_vs_mk | wt_kv_4h_peaks.narrowPeak.bed, wt_mk_4h_peaks.narrowPeak.bed | wt_kv_vs_mk_sorted.bed | wt_kv_vs_mk_annotated_sorted.bed |
| SETI_e2_vs_mk | setiwt_e2_peaks.narrowPeak.bed, setiwt_mk_peaks.narrowPeak.bed | setiwt_e2_vs_mk_sorted.bed | setiwt_e2_vs_mk_annotated_sorted.bed |

## TOBIAS analysis

script: tobias.sh

| vs | input(bam) | input(bed) | input(motifs) | output |
|---|---|---|---|---|
| WT_a4_vs_mk | wt_a4_4h_1_PDJJ0025, wt_mk_4h_1_PDJJ0023 | wt_a4_vs_mk_sorted.bed, wt_a4_vs_mk_annotated_sorted.bed | wt_a4_upregulated_motifs.meme | wt_a4_vs_mk |
| WT_kv_vs_mk | wt_kv_4h_1_PDJJ0024, wt_mk_4h_1_PDJJ0023 | wt_kv_vs_mk_sorted.bed, wt_kv_vs_mk_annotated_sorted.bed | wt_kv_upregulated_motifs.meme | wt_kv_vs_mk |
| SETI_e2_vs_mk | setiwt_e2_1_PDJJ0003, setiwt_mk_1_PDJJ0002 | setiwt_e2_vs_mk_sorted.bed, setiwt_e2_vs_mk_annotated_sorted.bed | setiwt_e2_upregulated_motifs.meme | setiwt_e2_vs_mk |