if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("ShortRead")

library(ShortRead)


install.packages("installr")

library(installr)

updateR()

show(readFastq)
