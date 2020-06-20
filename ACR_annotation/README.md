### All input/output data are stored in Zenodo(10.5281/zenodo.3841089)

## Extract TTS regions from TAIR10 gff file

script: Arabi_TTS_bed.py

| input  | output  |
|---|---|
| TAIR10_GFF3_genes.gff | TTS.bed |

## Visualize profile of ACRs binding TSS/TTS & Overlap of ACRs and annotated genes

script: peak_annotation.R

| treat  | input bed files <br> (.narrowPeak_removeCM.bed) <br> from ACR_call | additional_input (TTS regions) |  output  |
|---|---|---|---|
| Wild type | wt_a4_4h <br> wt_kv_4h <br> wt_mk_4h <br> wt_un | TTS.bed | wt_original_peak_removeCM.html |
| SETI wild type | setiwt_e2 <br> setiwt_mk <br> setiwt_un | TTS.bed | setiwt_original_peak_removeCM.html |
| SETI mutant type | setikv_e2 <br> setikv_mk <br> setikv_un | TTS.bed | setikv_original_peak_removeCM.html |

## Heatmap of profile of ACRs binding TSS/TTS for each replicate

script: heatmap_for_each_replicate.R

| treat  | input bed files <br> (.narrowPeak_removeCM.bed) <br> from ACR_call | output |
|---|---|---|
| Wild type | wt_a4_4h_1, wt_a4_4h_2 <br> wt_kv_4h_1, wt_kv_4h_2 <br> wt_mk_4h_1, wt_mk_4h_2 <br> wt_un_1, wt_un_2 | wt_each_reps_original_peak_removeCM.html |
| SETI wild type | setiwt_e2_1, setiwt_e2_2, setiwt_e2_3 <br> setiwt_mk_1, setiwt_mk_2, setiwt_mk_3 <br> setiwt_un_1, setiwt_un_2, setiwt_un_3 | setiwt_each_reps_original_peak_removeCM.html |
| SETI mutant type | setikv_e2_1, setikv_e2_2 <br> setikv_mk_1, setikv_mk_2 <br> setikv_un_1, setikv_un_2 | setikv_each_reps_original_peak_removeCM.html |
