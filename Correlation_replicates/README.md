### All input/output data are stored in Zenodo(10.5281/zenodo.3841089)

## Count read number for common peak regions for each rep

script: read_count.sh

| treat  | input | output |
|---|---|---|
| 10k_leaf_ATAC | rep1.narrowPeak, rep2.narrowPeak, rep1.sorted.bam, rep2.sorted.bam | rep1_readcount.txt, rep2_readcount.txt, intersect.bed |
| 20k_leaf_ATAC | " | " |
| 50k_leaf_ATAC | " | " |
| 80k_leaf_ATAC | " | " |

## Visualize correlation plot

script: correlation.R

* input: rep1_readcount.txt, rep2_readcount.txt
* output: correlation.html
