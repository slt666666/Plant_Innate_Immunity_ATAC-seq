### All input/output data are stored in Zenodo(https://~~~~)

## Call DARs treatment_A vs treatment_B

script: diff_peaks.sh

| treatA  | treatB | input(treat)  | input(control) |  output  |
|---|---|---|---|---|
| WT_a4 | WT_untreat | wt_a4_4h_1_PDJJ0025 <br> wt_a4_4h_2_PDJJ0033 | wt_un_1_PDJJ0022 <br> wt_un_2_PDJJ0030 | wt_a4_vs_un |
| WT_a4 | WT_mock | wt_a4_4h_1_PDJJ0025 <br> wt_a4_4h_2_PDJJ0033 | wt_mk_4h_1_PDJJ0023 <br> wt_mk_4h_2_PDJJ0031 | wt_a4_vs_mk |
| WT_kv | WT_untreat | wt_kv_4h_1_PDJJ0024 <br> wt_kv_4h_2_PDJJ0032 | wt_un_1_PDJJ0022 <br> wt_un_2_PDJJ0030 | wt_kv_vs_un |
| WT_kv | WT_mock | wt_kv_4h_1_PDJJ0024 <br> wt_kv_4h_2_PDJJ0032 | wt_mk_4h_1_PDJJ0023 <br> wt_mk_4h_2_PDJJ0031 | wt_kv_vs_mk |
| SETI_WT_e2 | SETI_WT_mock | setiwt_e2_1_PDJJ0003 <br> setiwt_e2_2_PDJJ0012 <br> setiwt_e2_3_PDJJ0018 | setiwt_mk_1_PDJJ0002 <br> setiwt_mk_2_PDJJ0011 <br> setiwt_mk_3_PDJJ0017 | setiwt_e2_vs_mk |
| SETI_WT_e2 | SETI_MT_e2 | setiwt_e2_1_PDJJ0003 <br> setiwt_e2_2_PDJJ0012 <br> setiwt_e2_3_PDJJ0018 | setikv_e2_1_PDJJ0006 <br> setikv_e2_2_PDJJ0015 | setiwt_e2_vs_setikv_e2 |
* WT: Wild type, MT: Mutant type

## Annotate target genes with enriched ACRs

script: annotate_target_genes.R

| input(.narrowPeak.bed) |  output  |
|---|---|
| wt_a4_vs_un | wt_a4_vs_un_peaks_annotation.txt |
| wt_kv_vs_un | wt_kv_vs_mk_peaks_annotation.txt |
| setiwt_e2_vs_mk | setiwt_e2_vs_mk_peaks_annotation.txt |
| setiwt_e2_vs_setikv_e2 | setiwt_e2_vs_setikv_e2_peaks_annotation.txt |
