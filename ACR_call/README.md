# Call ACRs for each treatment using genomic DNA as control

script: macs2_for_all_replicates.sh
all input/output data are stored in Zenodo(https://~~~~)

| treat  | input(treat)  | input(control) |  output  |
|---|---|---|---|
| SRMI+IRMI  | wt_a4_4h_1_PDJJ0025 <br> wt_a4_4h_2_PDJJ0033 | gdna_tagmen_1_SHXF032G_sorted <br> gdna_tagmen_2_SHXF032H_sorted <br> gdna_tagmen_3_SHXF032I_sorted | wt_a4_4h |
| SRMI |  wt_kv_4h_1_PDJJ0024_sorted <br> wt_kv_4h_2_PDJJ0032_sorted |  " | wt_kv_4h |
| IRMI  | setiwt_e2_1_PDJJ0003_sorted <br> setiwt_e2_2_PDJJ0012_sorted <br> setiwt_e2_3_PDJJ0018_sorted | " | setiwt_e2 |

# Call ACRs for each replicate using genomic DNA as control

script: macs2_for_each_replicate.sh
all input/output data are stored in Zenodo(https://~~~~)

| treat  | input(treat)  | input(control) |  output  |
|---|---|---|---|
| SRMI+IRMI rep1 | wt_a4_4h_1_PDJJ0025 | gdna_tagmen_1_SHXF032G_sorted <br> gdna_tagmen_2_SHXF032H_sorted <br> gdna_tagmen_3_SHXF032I_sorted | wt_a4_4h_1 |
| SRMI+IRMI rep2 | wt_a4_4h_2_PDJJ0033 | gdna_tagmen_1_SHXF032G_sorted <br> gdna_tagmen_2_SHXF032H_sorted <br> gdna_tagmen_3_SHXF032I_sorted | wt_a4_4h_2 |
| SRMI rep1 |  wt_kv_4h_1_PDJJ0024_sorted |  " | wt_kv_4h_1 |
| SRMI rep1 |  wt_kv_4h_2_PDJJ0032_sorted |  " | wt_kv_4h_2 |
| IRMI rep1 | setiwt_e2_1_PDJJ0003_sorted | " | setiwt_wt_1 |
| IRMI rep2 | setiwt_e2_2_PDJJ0012_sorted | " | setiwt_wt_2 |
| IRMI rep3 | setiwt_e2_3_PDJJ0018_sorted | " | setiwt_wt_3 |
