# Instructions for running project on building gene trees
## Scope: To find phylogenetic relationship of two key lignin biosynthesis enzymes, TYRA and PTAL, among monocots 

### Starting with orthogroups from Orthofinder
1. For instructions on how to run Orthofinder see: https://github.com/davidemms/OrthoFinder.

### Filter orthogroups for gene duplicates and fragmented genes
Many genomes may have sequencing errors that leave duplicated or partially duplicated genes, or short fragmented genes. 
2. These are removed with the following script run on fasta file:

        python filter_fasta.py -fasta <fasta file> 
    
        other options: -dir <directory of fasta files> -bp <genes you want to remove that are shorter than this length- an interger> -stdv <number of standard deviations for cutoff- both length over and under> -save <output file name>
  
  For TYRA orthogroup:
  
        python filter_fasta.py -fasta TYRA_OG0001859_monocotMar05.txt.fa -bp 50
        
  For PTAL orthogroup:
  
        python filter_fasta.py -fasta PTAL_OG0000908_monocotMar05.txt.fa -bp 50
        
### Align filtered orthogroups
Use mafft alignment program
3. install mafft align
  
  For mac/linux: https://mafft.cbrc.jp/alignment/software/
  
  after installation, located here:
  
      /usr/local/bin/mafft
      
  check installation was successful
  
      which mafft
      
4. Run mafft

        mafft --auto --anysymbol [fasta file] > [output]

  For TYRA orthogroup:
  
        mafft --auto --anysymbol TYRA_OG0001859_monocotMar05.txt.fa > TYRA_OG0001859_monocotMar05.txt.fa.aln
  
  For PTAL orthogroup:
  
        mafft --auto --anysymbol PTAL_OG0000908_monocotMar05.txt.fa > PTAL_OG0000908_monocotMar05.txt.fa.aln
        
### Run Modeltest-ng
Used to test which evolutionary model works best for your data. Normally with protein data I go with JTT models because these were tested on many thousands of proteins to find best amino acid ratio
5. Install modeltest-ng

  1. clone
  
                git clone https://github.com/ddarriba/modeltest
      
  2. install dependencies
  
                brew install flex bison
      
  3. build
  
   need to install cmake
   
      https://cmake.org/install/
  
  download cmake: cmake-3.20.0-macos-universal.tar.gz
  untar 
  
      tar -xvzf cmake-3.20.0-macos-universal.tar.gz
       
  go to build folder then use cmake from binary folder
  
      ~/Desktop/Github/cmake-3.20.0-macos-universal/CMake.app/Contents/bin/cmake ..

      make
      
  result: Linking CXX executable ../../bin/modeltest-ng
  program now in: /Users/Beth/Desktop/Github/modeltest/bin/modeltest-ng

6. Run modeltest-ng

  Specify -d aa for amino acids
  
        /Users/Beth/Desktop/Github/modeltest/bin/modeltest-ng -i PTAL_grplantFeb19_OG0000445.fa_filter50bp.fa.aln -t ml -d aa

7. Result

## RAxML-ng




