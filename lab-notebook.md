
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

run clustalw alignment:

    clustalw2 -ALIGN -INFILE=primatesAA.fasta -OUTFILE=primatesAA.fasta_cw.aln -OUTPUT=PHYLIP
    
output:

CLUSTAL 2.1 Multiple Sequence Alignments


Sequence format is Pearson
Sequence 1: Human        493 aa
Sequence 2: Chimp        493 aa
Sequence 3: Gorilla      493 aa
Sequence 4: Orangutan    493 aa
Sequence 5: Gibbon       494 aa
Sequence 6: Rhes_cDNA    497 aa
Sequence 7: Baboon       497 aa
Sequence 8: AGM          515 aa
Sequence 9: AGM_cDNA     515 aa
Sequence 10: Tant_cDNA    515 aa
Sequence 11: Patas        495 aa
Sequence 12: Colobus      495 aa
Sequence 13: DLangur      495 aa
Sequence 14: PMarmoset    494 aa
Sequence 15: Tamarin      494 aa
Sequence 16: Squirrel     494 aa
Sequence 17: Owl          494 aa
Sequence 18: Titi         494 aa
Sequence 19: Saki         494 aa
Sequence 20: Howler       551 aa
Sequence 21: Spider       547 aa
Sequence 22: Woolly       547 aa
Start of Pairwise alignments
Aligning...

Sequences (1:2) Aligned. Score:  97
Sequences (1:3) Aligned. Score:  97
Sequences (1:4) Aligned. Score:  93
Sequences (1:5) Aligned. Score:  90
Sequences (1:6) Aligned. Score:  87
Sequences (1:7) Aligned. Score:  87
Sequences (1:8) Aligned. Score:  87
Sequences (1:9) Aligned. Score:  87
...
There are 21 groups

Start of Multiple Alignment

Aligning...
Group 1: Sequences:   2      Score:10695
Group 2: Sequences:   3      Score:10693
Group 3: Sequences:   4      Score:10550
Group 4: Sequences:   5      Score:10317
Group 5: Sequences:   2      Score:11293
Group 6: Sequences:   3      Score:11222
Group 7: Sequences:   2      Score:10814
Group 8: Sequences:   5      Score:10697
Group 9: Sequences:   6      Score:10568
Group 10: Sequences:   2      Score:10784
Group 11: Sequences:   8      Score:10576
Group 12: Sequences:  13      Score:9953
Group 13: Sequences:   2      Score:10473
Group 14: Sequences:   3      Score:10194
Group 15: Sequences:   4      Score:10034
Group 16: Sequences:   2      Score:10399
Group 17: Sequences:   6      Score:10117
Group 18: Sequences:   2      Score:11561
Group 19: Sequences:   3      Score:11013
Group 20: Sequences:   9      Score:9780
Group 21: Sequences:  22      Score:8718
Alignment Score 573733


WARNING: Truncating sequence names to 10 characters for PHYLIP output.


PHYLIP-Alignment file created   [primatesAA.fasta_cw.aln]

## T-coffee

Download Stable/LAtest T-coffee version:

http://www.tcoffee.org/Packages/Stable/Latest/

change permissions to execute:

    chmod +x ~/Desktop/software/T-COFFEE_installer_Version_13.45.0.4846264_linux_x64.bin
    
launch:

    ./T-COFFEE_installer_Version_13.45.0.4846264_linux_x64.bin
    
error:

    cannot execute binary file
    
try tarballed version

    tar -xvf T-COFFEE_distribution_Version_13.45.0.4846264.tar.gz
    
    cd T-COFFEE_distribution_Version_13.45.0.4846264
    
    ./install all
    
result:

*********************************************************************
********              INSTALLATION SUMMARY          *****************
*********************************************************************
------- SUMMARY package Installation:
-------   Executable Installed in: /Users/Beth/.t_coffee/plugins/macosx
*------        strike          : installed [from binary]
*------        dialign-tx      : installed [from binary]
*------        dialign-t       : installed [from binary]
*------        clustalw        : installed [from binary]
*------        famsa           : failed installation
*------        clustalo        : installed [from binary]
*------        probconsRNA     : installed [from binary]
*------        pcma            : installed [from binary]
*------        kalign          : installed [from binary]
*------        retree          : installed [from binary]
*------        clustalw2       : installed [from binary]
*------        poa             : installed [from binary]
*------        mustang         : installed [from binary]
*------        t_coffee        : installed [from binary]
*------        muscle          : installed [from binary]
*------        TMalign         : installed [from binary]
*------        mafft           : updated [from binary]
*------        proda           : installed [from binary]
*------        XML::Simple     : updated 
*------        probcons        : installed [from binary]
*------        prank           : installed [from binary]
*------        RNAplfold       : installed [from binary]
*------        sap             : installed [from binary]
*------ SUMMARY mode Installation:
*------       MODE accurate      SUCCESSFULLY installed
*------       MODE expresso      SUCCESSFULLY installed
*!!!!!!       famsa           : Missing
*!!!!!!       MODE mcoffee       UNSUCCESSFULLY installed
*------       MODE trmsd         SUCCESSFULLY installed
*------       MODE 3dcoffee      SUCCESSFULLY installed
*------       MODE t_coffee      SUCCESSFULLY installed
*------       MODE seq_reformat  SUCCESSFULLY installed
*------       MODE psicoffee     SUCCESSFULLY installed
*!!!!!!       famsa           : Missing
*!!!!!!       MODE rcoffee       UNSUCCESSFULLY installed
*------       MODE tcoffee       SUCCESSFULLY installed

looks like tcoffee installed but not mcoffee or rcoffee

try running- does not run

try installing jsut t-coffee:

    ./install tcoffee

*********************************************************************
********              INSTALLATION SUMMARY          *****************
*********************************************************************
------- SUMMARY package Installation:
-------   Executable Installed in: /Users/Beth/.t_coffee/plugins/macosx
*------        strike          : updated [from binary]
*------        t_coffee        : installed [from binary]
*------ SUMMARY mode Installation:
*------       MODE tcoffee       SUCCESSFULLY installed
*********************************************************************
********              FINALIZE YOUR INSTALLATION    *****************
*********************************************************************
------- Your third party executables are in:
-------       /Users/Beth/.t_coffee/plugins/macosx:
------- Your t_coffee exccutable is in
-------       /Users/Beth/.t_coffee/bin/macosx:
------- In order to make your installation permanent add these two lines
export PATH=/Users/Beth/.t_coffee/bin/macosx:$PATH
export PLUGINS_4_TCOFFEE=/Users/Beth/.t_coffee/plugins/macosx:
-------       to the file: /Users/Beth/.profile OR /Users/Beth/.basrc

add paths to .bashrc

try running now
