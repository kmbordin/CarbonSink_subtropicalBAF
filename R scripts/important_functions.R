#You may find some important functions below
#See also Supplementary Information 2

#function to convert factor values to numeric
f2n <- function(f) {  
  if(!is.factor(f)) 
  stop("the input must be a factor") 
  as.numeric(levels(f))[as.integer(f)]
  }

#function to calculate basal area (m2/ha)
basal.area<- function(x) { 
  (pi*(x/2)^2)/10000
} 

#Equation to obtain above-ground woody productivity (AGWP), from Kohyama et al. 2019
Pann<-function(Bs0,B0,Bt,t) {
  ((1-((Bs0/Bt)^(1/t)))*(Bt-B0))/((t*(1-(B0/Bt)^(1/t))))
  }

#Equation to obtain carbon lçosses through mortality, from Kohyama et al. 2019
Lann<- function (Bs0,B0,Bt,t){
  ((1-((Bs0/B0)^(1/t)))*(Bt-B0))/((t*(((Bt/B0)^(1/t))-1)))
}


#Above-ground biomass estimation: 
require(BiomasaFP)
BiomasaFP:: AGBChv14 

#Taxonomic diversity: 
require(vegan)
vegan:: diversity(index = "inv")

#Functional diversity:
require(FD)
FD:: dbFD 

#Phylogenetic tree construction: 
require(V.PhyloMaker)
V.PhyloMaker:: phylo.maker

#Phylogenetic diversity
require(picante) 
picante:: mpd
