FROM bioconductor/release_core2:R3.6.1_Bioc3.10

RUN Rscript -e "\
    install.packages(c('testthat', 'tidyverse'), dependencies = TRUE); \
    BiocManager::install(c('annotatr', 'chipenrich', 'bsseq', 'DSS'), dependencies = TRUE, ask = FALSE, update = TRUE);"
