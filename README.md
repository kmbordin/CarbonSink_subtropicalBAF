[![DOI](https://zenodo.org/badge/439885870.svg)](https://zenodo.org/badge/latestdoi/439885870)

Manuscript: Bordin et al. 2023 - No relationship between biodiversity and forest carbon sink across the subtropical Brazilian Atlantic Forest at journal *Perspectives in Ecology and Conservation*

Codes from the data analysis and figures

The `R scripts` folder contains:

1.  Scripts from the data analysis and figures preparation\
    1.1 *data_analysis.R* - script to analyse the data\
    1.2 *figures.R* - script to prepare figures 2a and 2b

The `Data` folder contains:

2.  Processed data from 55 forest communities\
    2.1 *data.txt* - txt. file containing data 55 forest communities\
    2.1.1 *data.txt* contains the following data\
    *PlotCode*: plot name\
    *ForestAge*: categories of fores age, i.e.: 15-25, 26-50 or \>50 years\
    *PlotArea*: Original sampled area (in hectares)\
    *CensusInterval*: census interval, in years\
    *Latitude*: Latitude in decimal degrees\
    *Longitude*: Longitude in decimal degrees\
    *Weight*: plot+census interval weight (see the paper for details)\
    *AGC*: Above-ground Carbon Stocks (Mg/ha) across all forest communities\
    *AGWP*: Above-ground Wood Carbon Productivity (Mg/ha/yr) across forest communities\
    *Mortality*: Carbon loss through mortality (Mg/ha/yr) across forest communtiies\
    *NetCarbonChange*: The balance between AGWP and Mortality across forest communities\
    *TaxDiv*: Taxonomic diversity\
    *FD*: Functional diversity\
    *PD*: Phylogenetic diversity

Code developed and tested using the R statistical software, R version 4.1.1 (R Development Core Team, 2021).

R Core Team (2021). R: A language and environment for statistical computing. R Foundation for Statistical Computing, Vienna, Austria. URL <https://www.R-project.org/>.
