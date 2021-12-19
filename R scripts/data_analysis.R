# Load packages -----
library(nlme);library(vegan);library(here);library(MuMIn)
library(ggplot2)


# Load data -----
data <- read.table(here::here("Data", "data.txt"), header=T, row.names = 1) #load data
head(data)

std <- decostand(data[,7:17], method = "standardize",na.rm = T) #data standardization
head(std)

variables <- cbind(data[,1:6],std) #combining data
head(variables)
variables$ForestAge <- as.factor(variables$ForestAge)

# Data analysis -----
# Biodiversity metrics
net  <- lme(NetCarbonChange~1, random=~1|ForestAge,correlation=corExp(form=~Longitude+Latitude),weights = ~Weight, data=variables) 
net0 <- lme(NetCarbonChange~(TaxDiv+FD+PD)*ForestAge, random=~1|CensusInterval,correlation=corExp(form=~Longitude+Latitude),weights = ~Weight, data=variables) 
net1 <- lme(NetCarbonChange~TaxDiv+FD+PD, random=~1|ForestAge,correlation=corExp(form=~Longitude+Latitude),weights = ~Weight, data=variables) 
net2 <- lme(NetCarbonChange~TaxDiv, random=~1|ForestAge,correlation=corExp(form=~Longitude+Latitude),weights = ~Weight, data=variables) 
net3 <- lme(NetCarbonChange~FD, random=~1|ForestAge,correlation=corExp(form=~Longitude+Latitude),weights = ~Weight, data=variables) 
net4 <- lme(NetCarbonChange~PD, random=~1|ForestAge,correlation=corExp(form=~Longitude+Latitude),weights = ~Weight, data=variables) 

AIC(net, net0, net1, net2, net3, net4)

summary(net3)
r.squaredGLMM(net3)

# Functional trait diversity
net_fd <- lme(NetCarbonChange ~ FD.WD+FD.SLA+FD.LDMC+FD.Hmax, random=~1|ForestAge, 
              correlation=corExp(form=~Longitude+Latitude),weight=~Weight, data=variables) 
options(na.action = "na.fail")
model.sel<-dredge(net_fd)
net_fd.avg<-summary(model.avg(model.sel, subset = delta < 4)) ; net_fd.avg
model.sel
