# root_qtl.R

# pick a threshold for the log scores
library(ggplot2)

setwd("~/Desktop/Lab/Maloof Lab/QTL_Visualization/")

qtl <- read.csv("chr_pos_lod_name.csv")

ggplot(qtl, aes(pos, lod)) +
  geom_line(size = 1.5) +
  facet_grid(. ~ chr, scales = "free_x") + 
  geom_rect(aes(fill = as.factor(chr)),xmin = -Inf,xmax = Inf, ymin = -Inf,ymax = Inf,alpha = 0.01)