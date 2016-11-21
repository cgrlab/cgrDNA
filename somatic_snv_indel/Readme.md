---
title: "cgrWGS Somatic SNV/Indel Calling Module"
output:
  github_document:
    toc: true
    toc_depth: 2
    fig_width: 5
    fig_height: 5
    dev: jpeg
---

```{r include = FALSE}
require(tidyverse); require(rmarkdown); require(knitr); require(sevenbridges); 

options(max.print = "99"); opts_knit$set(width = 99)
opts_chunk$set(cache=FALSE, tidy=FALSE)

source("~/cgrRNA/scratch/cgc_auth.R")

```

# Data harmonization

## File naming conventions

All fusion output files follow the same naming schema which is the concatenation of the Sample ID, Fusion tool name, and then file extension.
 
e.g. SA01234_chimerascan_output.bedpe, SA01234_ericscript_output.txt
 
All files will be tab delimited.

# Fusion Finders

## 1. Chimerascan

```{r child = '~/cgrRNA/fusions/workflows/chimerascan/Readme.Rmd'}
```

## 2. EricScript

```{r child = '~/cgrRNA/fusions/workflows/ericscript/Readme.Rmd'}
```
