BARCODE=$1
PART=$2
NORMAL_BAM_NAME=$3
TUMOR_BAM_NAME=$4
DIR_VCF=$5

GLB_DIR_REF=/DCEG/Projects/PopulationExome/EAGLE/b37
DBSNP=${GLB_DIR_REF}/dbsnp_138.b37.vcf
COSMIC=${GLB_DIR_REF}/b37_cosmic_v54_120711.vcf
REFERENCE_GENOME=${GLB_DIR_REF}/human_g1k_v37_decoy.fasta

BED_DIR=/DCEG/Projects/Exome/SequencingData/variant_scripts_ji_prototyping_wgs_REBC/variant_calling_intervals
BAM_NORMAL=${NORMAL_BAM_NAME}
BAM_TUMOR=${TUMOR_BAM_NAME}
OUT_VCF=${DIR_VCF}/${BARCODE}.${PART}
	
BED_FILE=${BED_DIR}/variant_calling_intervals.${PART}.intervals
module load jdk
date

CMD="/home/wangm6/resource/jre1.8.0_91/bin/java -Xmx16g -jar /home/wangm6/resource/GenomeAnalysisTK.jar -T MuTect2 \
-R $REFERENCE_GENOME --cosmic $COSMIC --dbsnp $DBSNP -L $BED_FILE -I:normal $BAM_NORMAL -I:tumor $BAM_TUMOR --normal_panel /DCEG/Projects/BB/BinBB/ICGC_Sep2016/TCGA/merged_snps_all.vcf -o $OUT_VCF"
touch ${DIR_VCF}/${PART}.WORKING
echo $CMD
eval $CMD
if [[ $? -ne 0 ]]; then
  echo "Error: in Mutect calling!"
  exit 1
fi
date
rm ${DIR_VCF}/${PART}.WORKING
touch ${DIR_VCF}/${PART}.DONE
echo "Done!"
