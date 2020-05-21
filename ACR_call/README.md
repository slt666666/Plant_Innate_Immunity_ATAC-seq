### All input/output data are stored in Zenodo(https://~~~~)

## Call ACRs for each treatment using genomic DNA as control

script: macs2_for_all_replicates.sh

| treat  | input(treat)  | input(control) |  output  |
|---|---|---|---|
| WT_a4(SRMI+IRMI)  | wt_a4_4h_1_PDJJ0025 <br> wt_a4_4h_2_PDJJ0033 | gdna_tagmen_1_SHXF032G <br> gdna_tagmen_2_SHXF032H <br> gdna_tagmen_3_SHXF032I | wt_a4_4h |
| WT_kv(SRMI) |  wt_kv_4h_1_PDJJ0024 <br> wt_kv_4h_2_PDJJ0032 |  " | wt_kv_4h |
| WT_mock |  wt_mk_4h_1_PDJJ0023 <br> wt_mk_4h_2_PDJJ0031 |  " | wt_mk_4h |
| WT_untreat |  wt_un_1_PDJJ0022 <br> wt_un_2_PDJJ0030 |  " | wt_un |
| SETI_WT_e2(IRMI)  | setiwt_e2_1_PDJJ0003 <br> setiwt_e2_2_PDJJ0012 <br> setiwt_e2_3_PDJJ0018 | " | setiwt_e2 |
| SETI_WT_mock  | setiwt_mk_1_PDJJ0002 <br> setiwt_mk_2_PDJJ0011 <br> setiwt_mk_3_PDJJ0017 | " | setiwt_mk |
| SETI_WT_untreat  | setiwt_un_1_PDJJ0001 <br> setiwt_un_2_PDJJ0010 <br> setiwt_un_3_PDJJ0016 | " | setiwt_un |
| SETI_MT_e2 | setikv_e2_1_PDJJ0006 <br> setikv_e2_2_PDJJ0015 | " | setikv_e2 |
| SETI_MT_mock  | setikv_mk_1_PDJJ0005 <br> setikv_mk_2_PDJJ0014 | " | setikv_mk |
| SETI_MT_untreat  | setikv_un_1_PDJJ0004 <br> setikv_un_2_PDJJ0013 | " | setikv_un |
* WT: Wild type, MT: Mutant type

## Call ACRs for each replicate using genomic DNA as control

script: macs2_for_each_replicate.sh

| treat  | input(treat)  | input(control) |  output  |
|---|---|---|---|
| WT_a4 rep1 | wt_a4_4h_1_PDJJ0025 | gdna_tagmen_1_SHXF032G_sorted <br> gdna_tagmen_2_SHXF032H_sorted <br> gdna_tagmen_3_SHXF032I_sorted | wt_a4_4h_1 |
| WT_a4 rep2 | wt_a4_4h_2_PDJJ0033 | " | wt_a4_4h_2 |
| WT_kv rep1 |  wt_kv_4h_1_PDJJ0024_sorted |  " | wt_kv_4h_1 |
| WT_kv rep2 |  wt_kv_4h_2_PDJJ0032_sorted |  " | wt_kv_4h_2 |
| WT_mock rep1 |  wt_mk_4h_1_PDJJ0023 |  " | wt_mk_4h_1 |
| WT_mock rep2 |  wt_mk_4h_2_PDJJ0031 |  " | wt_mk_4h_2 |
| WT_untreat rep1 |  wt_un_1_PDJJ0022 |  " | wt_un_1 |
| WT_untreat rep2 |  wt_un_2_PDJJ0030 |  " | wt_un_2 |
| SETI_WT_e2 rep1 | setiwt_e2_1_PDJJ0003_sorted | " | setiwt_wt_1 |
| SETI_WT_e2 rep2 | setiwt_e2_2_PDJJ0012_sorted | " | setiwt_wt_2 |
| SETI_WT_e2 rep3 | setiwt_e2_3_PDJJ0018_sorted | " | setiwt_wt_3 |
| SETI_WT_mock rep1 | setiwt_mk_1_PDJJ0002 | " | setiwt_mk_1 |
| SETI_WT_mock rep2 | setiwt_mk_2_PDJJ0011 | " | setiwt_mk_2 |
| SETI_WT_mock rep3 | setiwt_mk_3_PDJJ0017 | " | setiwt_mk_3 |
| SETI_WT_untreat rep1 | setiwt_un_1_PDJJ0001 | " | setiwt_un_1 |
| SETI_WT_untreat rep2 | setiwt_un_2_PDJJ0010 | " | setiwt_un_2 |
| SETI_WT_untreat rep3 | setiwt_un_3_PDJJ0016 | " | setiwt_un_3 |
| SETI_MT_e2 rep1 | setikv_e2_1_PDJJ0006 | " | setikv_e2_1 |
| SETI_MT_e2 rep2 | setikv_e2_2_PDJJ0015 | " | setikv_e2_2 |
| SETI_MT_mock rep1 | setikv_mk_1_PDJJ0005 | " | setikv_mk_1 |
| SETI_MT_mock rep2 | setikv_mk_2_PDJJ0014 | " | setikv_mk_2 |
| SETI_MT_untreat rep1 | setikv_un_1_PDJJ0004 | " | setikv_un_1 |
| SETI_MT_untreat rep2 | setikv_un_2_PDJJ0013 | " | setikv_un_2 |
