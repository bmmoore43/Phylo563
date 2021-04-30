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

8. Install RAxML-ng

   a.	create conda environment:

        conda create --name Raxml-ng
        conda activate Raxml-ng
        
   b.   install raxml-ng
   
        conda install -c bioconda raxml-ng
        
   c.   deactivate
        
        conda deactivate
        
   d. pack up (to run on chtc)
   
        conda pack -n Raxml-ng
        
   e. unpack (if needed- otherwise just run where raxml-ng is installed)
   
        mkdir -p Raxml-ng 
        tar -xzf Raxml-ng.tar.gz -C Raxml-ng 
        source Raxml-ng/bin/activate 
        conda-unpack

9. Running raxml-ng

   a. Run on PTAL
   
        Raxml-ng/bin/raxml-ng --msa PTAL_OG0000908_monocotMar05.txt.fa_filter_stdv2.fa.aln --model JTT+G4+F+I --prefix PTAL_OG0000908_monocotMar05.txt.fa_filter_stdv2.fa.aln_T1 --format fasta --threads 16 --seed 210402 --tree pars{10},rand{10}, OG0000908_tree.txt_mod2.txt --all --bs-metric fbp,tbe --bs-trees 200 --outgroup evm_27.model.AmTr_v1.0_scaffold00032.129,evm_27.model.AmTr_v1.0_scaffold00148.59 --force perf_threads

   Specifies alignment (--msa), model type (--model), output name (--prefix), msa format (--format), cpus to use (--threads), random seed number (--seed), starting trees (--tree), combined tree search and bootstrapping analysis (--all), what bootstrapping metric to use (--bs-metric), number of bootstraps (--bs-trees), outgroup (--outgroup), force number of threads (chtc issue) (--force).
   
   b. Run on TyrA
   
        Raxml-ng/bin/raxml-ng --msa TYRA_OG0001859_monocotMar05.txt.fa_filter_stdv2.fa.aln --model JTT+I+G4+F --prefix TYRA_OG0001859_monocotMar05.txt.fa_filter_stdv2_JTTG4IF-T1 --msa-format fasta --threads 16 --seed 210325 --tree pars{10},rand{10},OG0001859_tree.txt_mod_stdv2.txt --all --bs-metric fbp,tbe --bs-trees 200 --outgroup evm_27.model.AmTr_v1.0_scaffold00027.113,evm_27.model.AmTr_v1.0_scaffold00069.98
        
10. Tree visualization

    a. Trees were visualized using ggtree. See ggtree_fin.R. 
        




