Tool: Mutect2
================

-   [Inputs](#inputs)

<https://igor.sbgenomics.com/u/dave/cgrwgs/apps/#dave/cgrwgs/mutect2>

Inputs
------

BARCODE=$1 PART=$2 NORMAL\_BAM\_NAME=$3 TUMOR\_BAM\_NAME=$4 DIR\_VCF=$5

GLB\_DIR\_REF=/DCEG/Projects/PopulationExome/EAGLE/b37 DBSNP=*G**L**B*<sub>*D*</sub>*I**R*<sub>*R*</sub>*E**F*/*d**b**s**n**p*<sub>138</sub>.*b*37.*v**c**f**C**O**S**M**I**C*={GLB\_DIR\_REF}/b37\_cosmic\_v54\_120711.vcf REFERENCE\_GENOME=${GLB\_DIR\_REF}/human\_g1k\_v37\_decoy.fasta

BED\_DIR=/DCEG/Projects/Exome/SequencingData/variant\_scripts\_ji\_prototyping\_wgs\_REBC/variant\_calling\_intervals BAM\_NORMAL=*N**O**R**M**A**L*<sub>*B*</sub>*A**M*<sub>*N*</sub>*A**M**E**B**A**M*<sub>*T*</sub>*U**M**O**R*={TUMOR\_BAM\_NAME} OUT\_VCF=*D**I**R*<sub>*V*</sub>*C**F*/{BARCODE}.${PART}

BED\_FILE=*B**E**D*<sub>*D*</sub>*I**R*/*v**a**r**i**a**n**t*<sub>*c*</sub>*a**l**l**i**n**g*<sub>*i*</sub>*n**t**e**r**v**a**l**s*.{PART}.intervals module load jdk date
