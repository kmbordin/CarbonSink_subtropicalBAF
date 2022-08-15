# Load packages -----
library(ggplot2) #figures

# Figures -----
data$ForestAge <- factor(data$ForestAge, levels=c("15-25","26-50",">50"))

# Figure 2a
ggplot(data, aes(x = ForestAge, y = NetCarbonChange,color=ForestAge)) +
  scale_color_manual(values = c("#009E73","#0072B2","#D55E00"),
                     na.translate=FALSE) +
  geom_violin(size=0.7, 
              color="gray20")+
  stat_summary(colour="gray20"
               , geom = "point")+
  geom_jitter(size=3, 
              alpha=0.6) +
  theme_light()+
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  theme(legend.position = "none",
        text = element_text(size=10))+
  annotate("text", 
           x = 3.5,
           y=-0.5, 
           alpha = 1,
           label="a)", 
           size=4)+
  geom_hline(yintercept = 0, 
             linetype="dashed", 
             color="gray70") + 
  labs(x= "Forest age (yr)", 
       y="Net carbon change (Mg C ha-1 yr-1)")+
  theme(text = element_text(size = 14))

# Figure 2b
ggplot(data,aes(y= NetCarbonChange, x= FD, color=ForestAge)) +
  geom_point(size=1.5) + 
  theme_light()+
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  theme(legend.position = "none",
        text = element_text(size=10))+
  annotate("text", x = 7,y=-2, alpha = 1,label="b)", size=4)+
  scale_color_manual(values = c("#009E73","#0072B2","#D55E00"))+
  labs (x= "Functional diversity",y="Net carbon change (Mg ha-1 yr-1)")+  
  guides(colour = guide_legend(title = "Forest age (yr)", title.position = "left"))+
  theme(text = element_text(size = 14))

# Figure 2c
ggplot(data,aes(y= NetCarbonChange, x= TaxDiv, color=ForestAge)) +
  geom_point(size=1.5) + 
  theme_light()+
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  theme(legend.position = "none",
        text = element_text(size=10))+
  scale_color_manual(values = c("#009E73","#0072B2","#D55E00"))+
   labs (x= "Taxonomic diversity",y="")+
  annotate("text", x = 7,y=-2, alpha = 1,label="c)", size=4)+
  theme(text = element_text(size = 14))

# Figure 2d
ggplot(data,aes(y= NetCarbonChange, x= PD, color=ForestAge)) +
  geom_point(size=1.5) + 
  theme_light()+
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank())+
  theme(legend.position = "none",
        text = element_text(size=10))+
  scale_color_manual(values = c("#009E73","#0072B2","#D55E00"))+
  annotate("text", x = 1.8,y=-2, alpha = 1,label="d)", size=4)+
   labs (x= "Phylogenetic diversity",
        y="")+
  theme(text = element_text(size = 14))
