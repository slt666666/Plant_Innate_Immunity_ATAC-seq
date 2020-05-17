import numpy as np
import pandas as pd

upstream = 2000
downstream = 2000

TAIR10_gff = pd.read_csv("TAIR10_GFF3_genes.gff", sep="\t")
TAIR10_gff.columns = ["chr", "TAIR10", "type", "start", "end", "x1", "strand", "x2", "x"]
TAIR10_gff = TAIR10_gff.loc[TAIR10_gff["type"]=="gene", :]
TAIR10_gff = TAIR10_gff.loc[:, ["chr", "start", "end", "strand"]]

TTS_data = []
for i in range(TAIR10_gff.shape[0]):
    each_line = TAIR10_gff.iloc[i, :]
    if each_line["strand"] == "+":
        TTS_data.append([each_line["chr"], each_line["end"] - upstream, each_line["end"] + downstream, each_line["strand"]])
    else:
        TTS_data.append([each_line["chr"], each_line["start"] - upstream, each_line["start"] + downstream, each_line["strand"]])
TTS_data = pd.DataFrame(TTS_data)
TTS_data.to_csv("TTS.bed", header=None, index=None, sep="\t")

print(TTS_data.head())
