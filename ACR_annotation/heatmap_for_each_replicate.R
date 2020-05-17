# loading packages
library(ChIPseeker)
library(TxDb.Athaliana.BioMart.plantsmart28)
library(clusterProfiler)

input_file_1 <- "treat_A_rep1.narrowPeak.bed"
input_file_2 <- "treat_B_rep2.narrowPeak.bed"

files <- c(input_file_1, input_file_2)

# make promoter regions & fix seqlevels
txdb <- TxDb.Athaliana.BioMart.plantsmart28
promoter <- getPromoters(TxDb=txdb, upstream=2000, downstream=2000)
seqlevels(promoter) <- c("Chr1", "Chr2", "Chr3", "Chr4", "Chr5", "mitochondria", "chloroplast")

# Heatmap of Atac peak data binding to TSS region for each replicate
tagMatrixList <- lapply(files, getTagMatrix, windows=promoter)
names(tagMatrixList) <- c("treat_A_rep1", "treat_A_rep2")
tagHeatmap(tagMatrixList, xlim=c(-2000, 2000))