# Call ACRs for each treatment using genomic DNA as control

script: macs2_for_all_replicates.sh
all input/output data are stored in Zenodo(https://~~~~)

| treat  | input(treat)  | input(control) |  output  |
|---|---|---|---|
| SRMI+IRMI  | wt_a4_4h_1_PDJJ0025 <br> wt_a4_4h_2_PDJJ0033 | gdna_tagmen_1_SHXF032G_sorted.bam <br> gdna_tagmen_2_SHXF032H_sorted.bam <br> gdna_tagmen_3_SHXF032I_sorted.bam | wt_a4_4h |
| SRMI |  wt_kv_4h_1_PDJJ0024_sorted.bam <br> wt_kv_4h_2_PDJJ0032_sorted.bam |  " | wt_kv_4h |
| IRMI  | setiwt_e2_1_PDJJ0003_sorted.bam <br> setiwt_e2_2_PDJJ0012_sorted.bam <br> setiwt_e2_3_PDJJ0018_sorted.bam | " | setiwt_kv_4h |

# output data...

Zenodo ~~~
