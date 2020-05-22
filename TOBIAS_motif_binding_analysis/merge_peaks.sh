# make bed files (formatted for TOBIAS)
labelA="treatA"
labelB="treatB"
label_both="treatA_vs_treatB"
treatA="treatA_peaks.narrowPeak.bed"
treatB="treatB_peaks.narrowPeak.bed"

# ACRs specific for treat A
bedtools subtract -a $treatA -b $treatB -A > "${labelA}_tmp.bed"
cat "${labelA}_tmp.bed" | awk '{print $1 "	" $2 "	" $3 "	" "'"$labelA"'"}' > "${labelA}.bed"

# ACRs specific for treat B
bedtools subtract -a $treatB -b $treatA -A > "${labelB}_tmp.bed"
cat "${labelB}_tmp.bed" | awk '{print $1 "	" $2 "	" $3 "	" "'"$labelB"'"}' > "${labelB}.bed"

# ACRs common in treat A & treat B
bedtools intersect -a $treatA -b $treatB > common_tmp.bed
cat common_tmp.bed | awk '{print $1 "	" $2 "	" $3 "	" "'"$labelA,$labelB"'"}' > common.bed

# remove chloroplast/mitochondria
# not labeled (for ATACorrect)
cat "${labelA}_tmp.bed" "${labelB}_tmp.bed" common_tmp.bed > "${label_both}.bed"
sed '/chloroplast/d' "${label_both}.bed" > "${label_both}_tmp.bed"
sed '/mitochondria/d' "${label_both}_tmp.bed" > "${label_both}.bed"
bedtools sort -i "${label_both}.bed" > "${label_both}_sorted.bed"

# labeled (for BINDetect)
cat "${labelA}.bed" "${labelB}.bed" common.bed > "${label_both}.bed"
sed '/chloroplast/d' "${label_both}.bed" > "${label_both}_tmp.bed"
sed '/mitochondria/d' "${label_both}_tmp.bed" > "${label_both}.bed"
bedtools sort -i "${label_both}.bed" > "${label_both}_annotated_sorted.bed"

rm -rf "${labelA}_tmp.bed"
rm -rf "${labelA}.bed"
rm -rf "${labelB}_tmp.bed"
rm -rf "${labelB}.bed"
rm -rf common_tmp.bed
rm -rf common.bed
rm -rf "${label_both}.bed"
rm -rf "${label_both}_tmp.bed"