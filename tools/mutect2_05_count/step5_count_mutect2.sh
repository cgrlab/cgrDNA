# mutect2 results
awk '$1!~/^#/ {print}' /home/wangm6/dream/mutect2/dream1_vcf/set1_snps.recode.vcf | wc -l  > /home/wangm6/dream/mutect2/total_count.txt
awk '$1!~/^#/ {print}' /home/wangm6/dream/mutect2/dream2_vcf/set2_snps.recode.vcf | wc -l  >> /home/wangm6/dream/mutect2/total_count.txt
awk '$1!~/^#/ {print}' /home/wangm6/dream/mutect2/dream3_vcf/set3_snps.recode.vcf | wc -l  >> /home/wangm6/dream/mutect2/total_count.txt
awk '$1!~/^#/ {print}' /home/wangm6/dream/mutect2/dream4_vcf/set4_snps.recode.vcf | wc -l  >> /home/wangm6/dream/mutect2/total_count.txt