require(jsonlite)

output = file(args_vcf_json_out, open = "wb")
json_df = stream_in(file(args_vcf_json_in$path), pagesize=1,
handler= function(df){

temp = df

temp$var_type = args_vcf_json_in$var_type

stream_out(temp, output)})
close(output)

