# Load packages -----
library(nlme) #linear mixed models
library(vegan) #data standardization
library(here) #load data
library(MuMIn) #model selection


# Load data -----
#load data
data <- read.table(here::here("Data", "data.txt"), header=T, row.names = 1) 
head(data)

#data standardization
std <- decostand(data[,7:17], method = "standardize",na.rm = T) 
head(std)

#new dataframe containing standardized data
variables <- cbind(data[,1:6],std) 
head(variables)

#convert Forest Age column as a factor
variables$ForestAge <- as.factor(variables$ForestAge)

# Data analysis -----
# Biodiversity metrics: taxonomic, functional and phylogenetic diversity

#null model
net  <- lme(NetCarbonChange~1, random=~1|ForestAge,correlation=corExp(form=~Longitude+Latitude),weights = ~Weight, data=variables) 
#complete model with ForestAge as an interaction factor
net0 <- lme(NetCarbonChange~(TaxDiv+FD+PD)*ForestAge, random=~1|CensusInterval,correlation=corExp(form=~Longitude+Latitude),weights = ~Weight, data=variables) 
#Complete model
net1 <- lme(NetCarbonChange~TaxDiv+FD+PD, random=~1|ForestAge,correlation=corExp(form=~Longitude+Latitude),weights = ~Weight, data=variables) 
#Only taxonomic diversity
net2 <- lme(NetCarbonChange~TaxDiv, random=~1|ForestAge,correlation=corExp(form=~Longitude+Latitude),weights = ~Weight, data=variables) 
#Only Functional diversity
net3 <- lme(NetCarbonChange~FD, random=~1|ForestAge,correlation=corExp(form=~Longitude+Latitude),weights = ~Weight, data=variables) 
#Only phylogenetic diversity
net4 <- lme(NetCarbonChange~PD, random=~1|ForestAge,correlation=corExp(form=~Longitude+Latitude),weights = ~Weight, data=variables) 

#model selection
AIC(net, net0, net1, net2, net3, net4)
#best model results
summary(net3)
r.squaredGLMM(net3)


