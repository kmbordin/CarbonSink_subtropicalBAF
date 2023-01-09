# CarbonSink_subtropicalBAF

Bordin et al.: Functional diversity positively affects carbon sink in the subtropical Brazilian Atlantic Forest 

Codes from the data analysis and figures


The `R scripts` folder contains:

1. Scripts from the data analysis and figures preparation\
    1.1 *data_analysis.R* - script to analyse the data\
    1.2 *figures.R* - script to prepare figures 2a and 2b
  
The `Data` folder contains:

2. Processed data from 55 forest communities\
    2.1 *data.txt* - txt. file containing data 55 forest communities\
      2.1.1 *data.txt* contains the following data:\
            *ForestAge*: categories of fores age, i.e.: 15-25, 26-50 or >50 years\
            *PlotCode*: plot name\
            *PlotArea*: Original sampled area (in hectares)\
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

R Core Team (2021). R: A language and environment for statistical computing.
  R Foundation for Statistical Computing, Vienna, Austria. URL
  https://www.R-project.org/.
