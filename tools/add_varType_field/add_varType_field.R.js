'require(tidyverse) \n\
# get args \n\
args_vcf_json_in = data_frame(\
path = "'+$job.inputs.vcf_json.path+'", \
var_type = '+$job.inputs.vcf_json.metadata.var_type+') \n\
args_vcf_json_out = "'+$job.inputs.vcf_json.path.split("/").reverse()[0].split(".")[0]+'_var_type.json"" \n\
source("add_varType_field_main.R")';
