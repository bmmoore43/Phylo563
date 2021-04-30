#ggtree
## get ggtree
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("ggtree")
install.packages("ggrepel")
library(ggplot2)
library(ggtree)
library(ggrepel)
library(treeio)
library(ape)
# your gene tree
setwd() # set to your current directory
getwd() # get working directory
## new read in for raxml-ng
nb="filename.tree" # tree file name
t <- read.tree(file= "filename.tree")
# branch label
# get labels from txt file with header and gene\tlabel
nc= "gene-label.txt"
p2<-read.table(nc, header=T, sep='\t', row.names=1) 
p2
# group labels into a list- choose green plant or monocot
# green-plant
grp <- list(Basal.angiosperm=rownames(subset(p2, clade == 'basal-angiosperm')),
            Monocot=rownames(subset(p2, clade == 'monocot')),
            Eudicot=rownames(subset(p2, clade == 'dicot')),            
            Gymnosperm=rownames(subset(p2, clade == 'gymnosperm')),
            Basal.nonflower=rownames(subset(p2, clade == 'basal-nonflower')))#,
            #Green.algae=rownames(subset(p2, clade == 'green-algae')))
#monocot
grp <- list(Basal.angiosperm=rownames(subset(p2, clade == 'Basal-angiosperm')),
            Alismatales.and.Acorales=rownames(subset(p2, clade == 'Alismatales-and-Acorales')),
            Other.Poales=rownames(subset(p2, clade == 'other_Poales')),            
            Asparagales=rownames(subset(p2, clade == 'Asparagales')),
            Poaceae=rownames(subset(p2, clade == 'Poaceae')),
            Arecaceae=rownames(subset(p2, clade == 'Arecaceae')),
            Non.grass_graminid=rownames(subset(p2, clade == 'Non-grass_graminid')),
            Musaceae=rownames(subset(p2, clade == 'Musaceae')),
            Dioscoreales.and.Pandanales=rownames(subset(p2, clade == 'Dioscoreales-and-Pandanales')))
print(grp)
length(grp)
## add clade to tree
t <- groupOTU(t,grp)
## get colors for clade
# all plant
cols2 <- c("Basal.angiosperm"="#882255","Basal.nonflower"="#117733","Eudicot"="#332288",
           "Gymnosperm"="#88CCEE","Monocot"="#DDCC77","Green.algae"="black","0"="grey")
# monocot
cols3 <- c("Basal.angiosperm"="#882255","Alismatales.and.Acorales"="#CE2220","Asparagales"="#F4A736","Arecaceae"="#D0B440","Musaceae"="#57A2AC",
           "Other.Poales"="springgreen2","Non.grass_graminid"="cyan2","Poaceae"="blue2","0"="grey",
           "Dioscoreales.and.Pandanales"="#521913")
length(cols3)
## draw tree- change scale_color_manual values to colors you want (ie. cols2 or cols3)
t1 <-ggtree(t,aes(color=group))+
  geom_tiplab(geom="text", offset=0.025, hjust=-.05, size=2)+scale_color_manual(values=cols3)+
  theme(legend.position = "right")
t1
## add bootstrap
t2 <- t1 + geom_nodelab(aes(label=bootstrap)+
                          theme(legend.position = "right"),color ="black", hjust = 1.5, vjust= -0.75, size=2)
t2
## make pdf
nd=paste(c(basename(nb),"_tree.pdf"),collapse='')
nd
pdf(file = nd, width= 8.5 , height= 11)
t2
dev.off()
