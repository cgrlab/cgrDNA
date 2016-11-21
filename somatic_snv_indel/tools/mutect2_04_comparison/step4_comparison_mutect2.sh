
module load python/2.7.5
module load R
DIR_HOME=/home/wangm6/dream
cd ${DIR_HOME}
# mutect2 results
python ./ICGC-TCGA-DREAM-Mutation-Calling-challenge-tools/evaluator.py /home/wangm6/dream/mutect2/dream1_vcf/set1_snps.recode.vcf /home/wangm6/dream/synthetic/truth/synthetic.challenge.set1.tumor.all.truth.vcf.gz SNV > /home/wangm6/dream/mutect2/dream1_vcf/set1_mutect.txt

python ./ICGC-TCGA-DREAM-Mutation-Calling-challenge-tools/evaluator.py /home/wangm6/dream/mutect2/dream2_vcf/set2_snps.recode.vcf /home/wangm6/dream/synthetic/truth/synthetic.challenge.set2.tumor.all.truth.vcf.gz SNV > /home/wangm6/dream/mutect2/dream2_vcf/set2_mutect.txt

python ./ICGC-TCGA-DREAM-Mutation-Calling-challenge-tools/evaluator.py /home/wangm6/dream/mutect2/dream3_vcf/set3_snps.recode.vcf /home/wangm6/dream/synthetic/truth/synthetic.challenge.set3.tumor.20pctmasked.truth.vcf.gz SNV > /home/wangm6/dream/mutect2/dream3_vcf/set3_mutect.txt

python ./ICGC-TCGA-DREAM-Mutation-Calling-challenge-tools/evaluator.py /home/wangm6/dream/mutect2/dream4_vcf/set4_snps.recode.vcf /home/wangm6/dream/synthetic/truth/synthetic.challenge.set4.tumour.25pctmasked.truth.vcf.gz SNV > /home/wangm6/dream/mutect2/dream4_vcf/set4_mutect.txt
