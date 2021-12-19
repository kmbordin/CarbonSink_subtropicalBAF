# Figures -----
data$ForestAge <- factor(data$ForestAge, levels=c("15-25","26-50",">50"))

ggplot(data, aes(x = FD, y = NetCarbonChange, color=ForestAge)) +
  geom_smooth(method="lm",se=T,size=1,colour="gray50", fill="gray80")+
  geom_point(size=2.5) +
  theme_light()+theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
                      panel.background = element_blank())+theme(text = element_text(size=10),
                                                                plot.margin=unit(c(0.1, 1, 0.1 , 0.1), "cm"))+
  guides(colour = guide_legend(title = "Forest age (yr)", title.position = "top"))+
  theme(legend.position = c(0.134, 0.812))+
  scale_color_manual(values = c("#009E73","#0072B2","#D55E00"),
                     na.translate=FALSE) +
  annotate("text", x = 6.5,y=-1, alpha = 1,label="b)", size=4)+
  labs(x= "Functional diversity", y="Net carbon change (Mg C ha-1 yr-1)")+theme(text = element_text(size = 14))


ggplot(data, aes(x = ForestAge, y = NetCarbonChange,color=ForestAge)) +
  scale_color_manual(values = c("#009E73","#0072B2","#D55E00"),na.translate=FALSE) +
  geom_violin(size=0.7, color="gray20")+
  stat_summary(colour="gray20", geom = "point")+
  geom_jitter(size=3, alpha=0.6) +
  theme_light()+theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
  panel.background = element_blank())+theme(legend.position = "none",text = element_text(size=10))+
  annotate("text", x = 3.5,y=-0.5, alpha = 1,label="a)", size=4)+
  geom_hline(yintercept = 0, linetype="dashed", color="gray70") + #inclui linha vertical
  labs(x= "Forest age (yr)", y="Net carbon change (Mg C ha-1 yr-1)")+theme(text = element_text(size = 14))
