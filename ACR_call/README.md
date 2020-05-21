### All input/output data are stored in Zenodo(https://~~~~)

# Call ACRs for each treatment using genomic DNA as control

script: macs2_for_all_replicates.sh

| treat  | input(treat)  | input(control) |  output  |
|---|---|---|---|
| SRMI+IRMI  | wt_a4_4h_1_PDJJ0025 <br> wt_a4_4h_2_PDJJ0033 | gdna_tagmen_1_SHXF032G <br> gdna_tagmen_2_SHXF032H <br> gdna_tagmen_3_SHXF032I | wt_a4_4h |
| SRMI |  wt_kv_4h_1_PDJJ0024 <br> wt_kv_4h_2_PDJJ0032 |  " | wt_kv_4h |
| WildType_Mock |  wt_mk_4h_1_PDJJ0023 <br> wt_mk_4h_2_PDJJ0031 |  " | wt_mk_4h |
| WildType_Untreat |  wt_un_1_PDJJ0022 <br> wt_un_2_PDJJ0030 |  " | wt_un |
| IRMI(SETI_E2)  | setiwt_e2_1_PDJJ0003 <br> setiwt_e2_2_PDJJ0012 <br> setiwt_e2_3_PDJJ0018 | " | setiwt_e2 |
| SETI_mock  | setiwt_mk_1_PDJJ0002 <br> setiwt_mk_2_PDJJ0011 <br> setiwt_mk_3_PDJJ0017 | " | setiwt_mk |
| SETI_untreat  | setiwt_un_1_PDJJ0001 <br> setiwt_un_2_PDJJ0010 <br> setiwt_un_3_PDJJ0016 | " | setiwt_un |

# Call ACRs for each replicate using genomic DNA as control

script: macs2_for_each_replicate.sh

| treat  | input(treat)  | input(control) |  output  |
|---|---|---|---|
| SRMI+IRMI rep1 | wt_a4_4h_1_PDJJ0025 | gdna_tagmen_1_SHXF032G_sorted <br> gdna_tagmen_2_SHXF032H_sorted <br> gdna_tagmen_3_SHXF032I_sorted | wt_a4_4h_1 |
| SRMI+IRMI rep2 | wt_a4_4h_2_PDJJ0033 | " | wt_a4_4h_2 |
| SRMI rep1 |  wt_kv_4h_1_PDJJ0024_sorted |  " | wt_kv_4h_1 |
| SRMI rep2 |  wt_kv_4h_2_PDJJ0032_sorted |  " | wt_kv_4h_2 |
| WildType_Mock rep1 |  wt_mk_4h_1_PDJJ0023 |  " | wt_mk_4h_1 |
| WildType_Mock rep2 |  wt_mk_4h_2_PDJJ0031 |  " | wt_mk_4h_2 |
| WildType_Untreat rep1 |  wt_un_1_PDJJ0022 |  " | wt_un_1 |
| WildType_Untreat rep2 |  wt_un_2_PDJJ0030 |  " | wt_un_2 |
| IRMI rep1 | setiwt_e2_1_PDJJ0003_sorted | " | setiwt_wt_1 |
| IRMI rep2 | setiwt_e2_2_PDJJ0012_sorted | " | setiwt_wt_2 |
| IRMI rep3 | setiwt_e2_3_PDJJ0018_sorted | " | setiwt_wt_3 |
| SETI_mock  | setiwt_mk_1_PDJJ0002 | " | setiwt_mk_1 |
| SETI_mock  | setiwt_mk_2_PDJJ0011 | " | setiwt_mk_2 |
| SETI_mock  | setiwt_mk_3_PDJJ0017 | " | setiwt_mk_3 |
| SETI_untreat  | setiwt_un_1_PDJJ0001 | " | setiwt_un_1 |
| SETI_untreat  | setiwt_un_2_PDJJ0010 | " | setiwt_un_2 |
| SETI_untreat  | setiwt_un_3_PDJJ0016 | " | setiwt_un_3 |
