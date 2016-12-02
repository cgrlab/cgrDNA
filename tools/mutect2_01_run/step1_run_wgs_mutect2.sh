


DIR_VCF=/home/wangm6/dream/mutect2/dream4_vcf_parts
DIR_LOG=/home/wangm6/dream/mutect2/variant_calling_logs/dream4_parts
BAM_DIR=/DCEG/Resources/Data/dream/synthetic/set4
BARCODE=set4




BED_DIR=/DCEG/Projects/Exome/SequencingData/variant_scripts_ji_prototyping_wgs_REBC/variant_calling_intervals
QUEUE=seq*.q
cd $BED_DIR

for PART in $PARTS; do
	echo $PART

	
	TUMOR_BAM_NAME=${BAM_DIR}/synthetic.challenge.set4.tumour.bam
	NORMAL_BAM_NAME=${BAM_DIR}/synthetic.challenge.set4.normal.bam
	SGE_LOG=${DIR_LOG}/mutect2_${BARCODE}_${PART}
        rm -f ${SGE_LOG}.stdout ${SGE_LOG}.stderr
        
# by we scatter bed file
# PARTS=variant*.bed 

        
        
call_mutect2.sh $BARCODE $PART $NORMAL_BAM_NAME $TUMOR_BAM_NAME $DIR_VCF"
	
source /path/to/script.
	
	
	

	
	
	
	
	
