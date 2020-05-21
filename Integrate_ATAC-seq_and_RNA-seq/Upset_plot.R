# load package
library(UpSetR)

# load input table
input_file <- "/Users/toshiyuk/Desktop/atac/diff_peaks/Gene_list_for_venn.csv"
gene_table <- read.table(
                      input_file,
                      sep=",",
                      header=1,
                      row.names=1
                      )

### For a4 vs un & kv vs un
list_input <- list(
  a4_DEGs=rownames(gene_table)[gene_table$a4_DEGs == "True"],
  a4_ACRs=rownames(gene_table)[gene_table$a4_ACRs == "True"],
  kv_DEGs=rownames(gene_table)[gene_table$kv_DEGs == "True"],
  kv_ACRs=rownames(gene_table)[gene_table$kv_ACRs == "True"]
)
upset(fromList(list_input), order.by = "freq")

### For setiwt_e2 vs setiwt_un
list_input <- list(
  setiwt_e2_DEGs=rownames(gene_table)[gene_table$setiwt_e2_DEGs == "True"],
  setiwt_e2_ACRs=rownames(gene_table)[gene_table$setiwt_e2_ACRs == "True"]
)
upset(fromList(list_input), order.by = "freq")

### For DEGs
list_input <- list(
  a4_DEGs=rownames(gene_table)[gene_table$a4_DEGs == "True"],
  kv_DEGs=rownames(gene_table)[gene_table$kv_DEGs == "True"],
  setiwt_e2_DEGs=rownames(gene_table)[gene_table$setiwt_e2_DEGs == "True"]
)
upset(fromList(list_input), order.by = "freq")

### For ACRs
list_input <- list(
  a4_ACRs=rownames(gene_table)[gene_table$a4_ACRs == "True"],
  kv_ACRs=rownames(gene_table)[gene_table$kv_ACRs == "True"],
  setiwt_e2_ACRs=rownames(gene_table)[gene_table$setiwt_e2_ACRs == "True"]
)
upset(fromList(list_input), order.by = "freq")

### For common in DEGs & ACRs
list_input <- list(
  a4_common=rownames(gene_table)[(gene_table$a4_ACRs == "True") & (gene_table$a4_DEGs == "True")],
  kv_common=rownames(gene_table)[(gene_table$kv_ACRs == "True") & (gene_table$kv_DEGs == "True")],
  setiwt_e2_common=rownames(gene_table)[(gene_table$setiwt_e2_ACRs == "True") & (gene_table$setiwt_e2_DEGs == "True")]
)
upset(fromList(list_input), order.by = "freq")
