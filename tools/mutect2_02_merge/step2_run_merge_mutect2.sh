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
SGE_LOG=${DIR_LOG}/merge_${BARCODE}
CMD="${ROOT_DIR}/mutect2/merge_wgs_mutect2.sh ${BARCODE} ${DIR_VCF}"
SGE_CMD="qsub -q $QUEUE -cwd -j y -o ${SGE_LOG}.stdout -e ${SGE_LOG}.stderr -N Merge.${BARCODE} -S /bin/sh -b y '$CMD'"
echo $SGE_CMD
eval $SGE_CMD
		
