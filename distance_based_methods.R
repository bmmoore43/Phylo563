#install packages
install.packages("adegenet", dep=TRUE)
install.packages("phangorn", dep=TRUE)
# load packages
library(ape)
library(adegenet)
library(phangorn)
# load sample data
dna <- fasta2DNAbin(file="http://adegenet.r-forge.r-project.org/files/usflu.fasta")
# get distance
D <- dist.dna(dna, model="TN93")
# NJ tree
tre <- nj(D)
# ladderize
tre <- ladderize(tre)
# plot
plot(tre, cex=.6)
title("A simple NJ tree")
## Parsimony
dna2 <- as.phyDat(dna)
# starting tree
tre.ini <- nj(dist.dna(dna,model="raw"))
parsimony(tre.ini, dna2)
# maximum parsimony
tre.pars <- optim.parsimony(tre.ini, dna2)
# visualize
plot(tre.pars, cex=0.6)
