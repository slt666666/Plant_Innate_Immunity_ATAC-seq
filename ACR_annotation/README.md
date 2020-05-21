### All input/output data are stored in Zenodo(https://~~~~)

## Extract TTS regions from TAIR10 gff file

script: Arabi_TTS_bed.py

| input  | output  |
|---|---|
| TAIR10_GFF3_genes.gff | TTS.bed |

## Visualize profile of ACRs binding TSS/TTS & Overlap of ACRs and annotated genes

script: peak_annotation.R

| treat  | input (ACRs file)  | additional_input(bed) |  output  |
|---|---|---|---|
| Wild type | wt_a4_4h_peaks.narrowPeak_removeCM.bed <br> wt_kv_4h_peaks.narrowPeak_removeCM.bed <br> wt_mk_4h_peaks.narrowPeak_removeCM.bed <br> wt_un_peaks.narrowPeak_removeCM.bed | TTS.bed | wt_original_peak_removeCM.html |
| SETI wild type | setiwt_e2_peaks.narrowPeak_removeCM.bed <br> setiwt_mk_peaks.narrowPeak_removeCM.bed <br> setiwt_un_peaks.narrowPeak_removeCM.bed | TTS.bed | setiwt_original_peak_removeCM.html |
| SETI mutant type | setikv_e2_peaks.narrowPeak_removeCM.bed <br> setikv_mk_peaks.narrowPeak_removeCM.bed <br> setikv_un_peaks.narrowPeak_removeCM.bed | TTS.bed | setikv_original_peak_removeCM.html |
