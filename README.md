# Install-Packages
 My most used packages for easy installation.

 install.packages("devtools")
 devtools::install_github("RJainBio/Install-Packages")

## Additionall installs:
devtools::install_github("Puriney/randomcoloR") # this is a branched version of the CRAN package

install.packages("synapser", repos = c("http://ran.synapse.org", "http://cran.fhcrc.org"))

BiocManager::install('limma')

BiocManager::install("ComplexHeatmap")
