#source ./global_config.sh
# ROOT_DIR=/DCEG/Projects/PopulationExome/EAGLE
# GLB_DIR_REF=/DCEG/Projects/PopulationExome/EAGLE/b37
# DBSNP=${GLB_DIR_REF}/dbsnp_138.b37.vcf
# ROOT_DIR=/DCEG/Projects/PopulationExome/EAGLE
# MUTECT_JAR=$ROOT_DIR/mutect/muTect-1.1.4.jar
# COSMIC=${GLB_DIR_REF}/b37_cosmic_v54_120711.vcf
# REFERENCE_GENOME=${GLB_DIR_REF}/human_g1k_v37.fasta

BARCODE=$1
DIR_VCF1=$2

DIR_VCF=${DIR_VCF1}_parts
DIR_LOG=/home/wangm6/dream/mutect2/variant_calling_logs

if [[ ! -d ${DIR_VCF1} ]]; then
  mkdir ${DIR_VCF1}
fi

echo "$(date): starting merging all parts ..."
BED_DIR=/DCEG/Projects/Exome/SequencingData/variant_scripts_ji_prototyping_wgs_REBC/variant_calling_intervals
# BAM_DIR=/DCEG/Projects/Exome/SequencingData/BAM_recalibrated/REBC

# TumorVsNormal
# TumorVsBlood
# TYPE=$2 
MERGED_FILE=${DIR_VCF1}/${BARCODE}.vcf
echo $MERGED_FILE
cd $BED_DIR
#  read -p " ... "
FIRST="1" 
for BED_FILE in variant_calling_intervals.*.intervals; do
  PART=`echo $BED_FILE | awk -F "." '{print $2}'`
  OUT_STATS=${DIR_VCF}/${BARCODE}.${PART}
  if [[ "$FIRST" == "1" ]]; then
    if [[ -f $OUT_STATS ]] && [[ -f ${DIR_VCF}/${PART}.DONE ]]; then
      echo "the first:"$OUT_STATS
      awk '$1~/^#/ || $7~/PASS/ {print}' $OUT_STATS > $MERGED_FILE
    else
      echo "Error: $OUT_STATS is missing!"
      exit 1
    fi	 	
    FIRST="2"
  else
    echo $OUT_STATS
    if [[ -f $OUT_STATS ]] && [[ -f ${DIR_VCF}/${PART}.DONE ]]; then
      awk '$7~/PASS/ {print}' $OUT_STATS >> $MERGED_FILE
    else
      echo "Error: $OUT_STATS is missing!"
      exit 1
    fi
  fi
done
echo "$(date): Done!"
