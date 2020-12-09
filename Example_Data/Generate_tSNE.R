#!/usr/bin/env Rscript 

### Example is modified from Rtsne packagae RDocumentation 
## https://www.rdocumentation.org/packages/Rtsne/versions/0.15/topics/Rtsne

library(Rtsne)
library(ggplot2)
iris_unique <- unique(iris) # Remove duplicates
matrix_data <- as.matrix(iris_unique[,-5])
matrix_species <- as.matrix(iris_unique[,5])

#################################################
## Set a seed if you want reproducible results ##
#################################################
matrix_data
set.seed(1408)

###############
## Run t-SNE ##
###############

tsne = Rtsne(matrix_data, dims = 2,  perplexity = 20)

##############################
## Use ggplot2 to visualize ##
##############################

tsne.df = data.frame(TSNE1 = tsne$Y[,1], 
                     TSNE2 = tsne$Y[,2],
                     species = matrix_species)  

tsne.plot <- ggplot(tsne.df, aes(x=TSNE1, y=TSNE2, color = species)) + geom_point(size=3) +
  theme_bw() + geom_hline(yintercept=0, size=0.2, color = "darkgray") + geom_vline(xintercept=0, size=0.2, color = "darkgray") +
  theme(axis.title.x = element_text(color = "black", size = 12, angle = 00, face = "bold")) +
  theme(axis.title.y = element_text(color = "black", size = 12, angle = 90, face = "bold"))  + 
  ggtitle("Harmonizing Docker + R: Test tSNE") + scale_color_manual(values=c("#08F7FE","#FE53BB","#F5D300"))
tsne.plot

ggsave("test_tSNE.png", height=8, width=8)
