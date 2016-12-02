# BARCODE=set1
# DIR_VCF=/home/wangm6/dream/mutect2/dream1_vcf

# BARCODE=set2
# DIR_VCF=/home/wangm6/dream/mutect2/dream2_vcf

# BARCODE=set3
# DIR_VCF=/home/wangm6/dream/mutect2/dream3_vcf

BARCODE=set4
DIR_VCF=/home/wangm6/dream/mutect2/dream4_vcf

QUEUE=seq*.q
ROOT_DIR=/home/wangm6/dream
DIR_LOG=/home/wangm6/dream/mutect2/variant_calling_logs


SGE_LOG=${DIR_LOG}/select_snps_${BARCODE}
CMD="qsub -cwd -q $QUEUE -o ${SGE_LOG}.stdout -e  ${SGE_LOG}.stderr -N snps_${BARCODE} -b y \
         \"module load vcftools; vcftools --vcf ${DIR_VCF}/${BARCODE}.vcf --remove-indels --recode --recode-INFO-all --out ${DIR_VCF}/${BARCODE}_snps \""
echo $CMD
eval $CMD    		
	
SGE_LOG=${DIR_LOG}/select_indels_${BARCODE}
	
CMD="qsub -cwd -q $QUEUE -o ${SGE_LOG}.stdout -e  ${SGE_LOG}.stderr -N indels_${BARCODE} -b y \
         \"module load vcftools; vcftools --vcf ${DIR_VCF}/${BARCODE}.vcf --keep-only-indels --recode --recode-INFO-all --out  ${DIR_VCF}/${BARCODE}_indels\""
echo $CMD
eval $CMD
