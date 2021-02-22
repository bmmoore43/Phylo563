
# Phylo563 notebook

2-8-21 Created notebook

2-20-21- working on installing clustal2

## Clustal W2

Downloaded clustalw-2.1-macosx.dmg
opened and installed
tryed to run:

    /Users/Beth/Downloads/clustalw-2.1-macosx/clustalw2 -ALIGN
    
get error:

    Bad CPU type in executable
    
this is related to Catalina- can only run 64bit programs
try running other downloadable files:

clustalw-2.1-linux-x86_64-libcppstatic.tar.gz

    tar zxvf clustalw-2.1-linux-x86_64-libcppstatic.tar.gz
    
    clustalw-2.1-linux-x86_64-libcppstatic/clustalw2 
    
    cannot execute binary file
    
likely because does not work on mac

try conda install

    conda create -n clustalw2 -c biobuilds -y clustalw
    
    conda activate clustalw2
    
    clustalw2 -ALIGN
    
    CLUSTAL 2.1 Multiple Sequence Alignments 
    
conda install works
