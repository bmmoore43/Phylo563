
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

doesn't work when just using t_coffee command, but works when full path is used. Not sure why- same path is in .bashrc

    /Users/Beth/.t_coffee/bin/macosx/t_coffee primatesAA.fasta
    
result:

PROGRAM: T-COFFEE Version_13.45.0.4846264 (Version_13.45.0.4846264)
-full_log      	S	[0] 
-genepred_score	S	[0] 	nsd
-run_name      	S	[0] 
-mem_mode      	S	[0] 	mem
-extend        	D	[1] 	1 
-extend_mode   	S	[0] 	very_fast_triplet
-max_n_pair    	D	[0] 	10 
-seq_name_for_quadruplet	S	[0] 	all
-compact       	S	[0] 	default
-clean         	S	[0] 	no
-do_self       	FL	[0] 	0
-do_normalise  	D	[0] 	1000 
-template_file 	S	[0] 
-setenv        	S	[0] 	0
-export        	S	[0] 	0
-template_mode 	S	[0] 
-flip          	D	[0] 	0 
-remove_template_file	D	[0] 	0 
-profile_template_file	S	[0] 
-in            	S	[0] 
-seq           	S	[1] 	primatesAA.fasta
-aln           	S	[0] 
-method_limits 	S	[0] 
-method        	S	[0] 
-lib           	S	[0] 
-profile       	S	[0] 
-profile1      	S	[0] 
-profile2      	S	[0] 
-pdb           	S	[0] 
-relax_lib     	D	[0] 	1 
-filter_lib    	D	[0] 	0 
-shrink_lib    	D	[0] 	0 
-out_lib       	W_F	[0] 	no
-out_lib_mode  	S	[0] 	primary
-lib_only      	D	[0] 	0 
-outseqweight  	W_F	[0] 	no
-seq_source    	S	[0] 	ANY
-cosmetic_penalty	D	[0] 	0 
-gapopen       	D	[0] 	0 
-gapext        	D	[0] 	0 
-fgapopen      	D	[0] 	0 
-fgapext       	D	[0] 	0 
-nomatch       	D	[0] 	0 
-newtree       	W_F	[0] 	default
-tree          	W_F	[0] 	NO
-usetree       	R_F	[0] 
-tree_mode     	S	[0] 	nj
-distance_matrix_mode	S	[0] 	ktup
-distance_matrix_sim_mode	S	[0] 	idmat_sim1
-quicktree     	FL	[0] 	0
-outfile       	W_F	[0] 	default
-maximise      	FL	[1] 	1
-output        	S	[0] 	aln	html
-len           	D	[0] 	0 
-infile        	R_F	[0] 
-matrix        	S	[0] 	default
-tg_mode       	D	[0] 	1 
-profile_mode  	S	[0] 	cw_profile_profile
-profile_comparison	S	[0] 	profile
-dp_mode       	S	[0] 	linked_pair_wise
-ktuple        	D	[0] 	1 
-ndiag         	D	[0] 	0 
-diag_threshold	D	[0] 	0 
-diag_mode     	D	[0] 	0 
-sim_matrix    	S	[0] 	vasiliky
-transform     	S	[0] 
-extend_seq    	FL	[0] 	0
-outorder      	S	[0] 	input
-inorder       	S	[0] 	aligned
-seqnos        	S	[0] 	off
-case          	S	[0] 	keep
-cpu           	D	[0] 	0 
-ulimit        	D	[0] 	-1 
-maxnseq       	D	[0] 	-1 
-maxlen        	D	[0] 	-1 
-sample_dp     	D	[0] 	0 
-weight        	S	[0] 	default
-seq_weight    	S	[0] 	no
-align         	FL	[1] 	1
-mocca         	FL	[0] 	0
-domain        	FL	[0] 	0
-start         	D	[0] 	0 
-len           	D	[0] 	0 
-scale         	D	[0] 	0 
-mocca_interactive	FL	[0] 	0
-method_evaluate_mode	S	[0] 	default
-color_mode    	S	[0] 	new
-aln_line_length	D	[0] 	0 
-evaluate_mode 	S	[0] 	triplet
-get_type      	FL	[0] 	0
-clean_aln     	D	[0] 	0 
-clean_threshold	D	[1] 	1 
-clean_iteration	D	[1] 	1 
-clean_evaluate_mode	S	[0] 	t_coffee_fast
-extend_matrix 	FL	[0] 	0
-prot_min_sim  	D	[0] 	0 
-prot_max_sim  	D	[100] 	100 
-psiJ          	D	[0] 	3 
-psitrim_mode  	S	[0] 	regtrim
-psitrim_tree  	S	[0] 	codnd
-psitrim       	D	[100] 	100 
-prot_min_cov  	D	[90] 	90 
-pdb_type      	S	[0] 	d
-pdb_min_sim   	D	[35] 	35 
-pdb_max_sim   	D	[100] 	100 
-pdb_min_cov   	D	[50] 	50 
-pdb_blast_server	W_F	[0] 	EBI
-blast         	W_F	[0] 
-blast_server  	W_F	[0] 	EBI
-pdb_db        	W_F	[0] 	pdb
-protein_db    	W_F	[0] 	uniref50
-method_log    	W_F	[0] 	no
-struc_to_use  	S	[0] 
-cache         	W_F	[0] 	use
-print_cache   	FL	[0] 	0
-align_pdb_param_file	W_F	[0] 	no
-align_pdb_hasch_mode	W_F	[0] 	hasch_ca_trace_bubble
-external_aligner	S	[0] 	NO
-msa_mode      	S	[0] 	tree
-et_mode       	S	[0] 	et
-master        	S	[0] 	no
-blast_nseq    	D	[0] 	0 
-lalign_n_top  	D	[0] 	10 
-iterate       	D	[0] 	0 
-trim          	D	[0] 	0 
-split         	D	[0] 	0 
-trimfile      	S	[0] 	default
-split         	D	[0] 	0 
-split_nseq_thres	D	[0] 	0 
-split_score_thres	D	[0] 	0 
-check_pdb_status	D	[0] 	0 
-clean_seq_name	D	[0] 	0 
-seq_to_keep   	S	[0] 
-dpa_master_aln	S	[0] 
-dpa_maxnseq   	D	[0] 	0 
-dpa_min_score1	D	[0] 
-dpa_min_score2	D	[0] 
-dpa_keep_tmpfile	FL	[0] 	0
-dpa_debug     	D	[0] 	0 
-multi_core    	S	[0] 	templates_jobs_relax_msa_evaluate
-n_core        	D	[0] 	1 
-thread        	D	[0] 	1 
-max_n_proc    	D	[0] 	1 
-lib_list      	S	[0] 
-prune_lib_mode	S	[0] 	5
-tip           	S	[0] 	none
-rna_lib       	S	[0] 
-no_warning    	D	[0] 	0 
-run_local_script	D	[0] 	0 
-proxy         	S	[0] 	unset
-email         	S	[0] 
-clean_overaln 	D	[0] 	0 
-overaln_param 	S	[0] 
-overaln_mode  	S	[0] 
-overaln_model 	S	[0] 
-overaln_threshold	D	[0] 	0 
-overaln_target	D	[0] 	0 
-overaln_P1    	D	[0] 	0 
-overaln_P2    	D	[0] 	0 
-overaln_P3    	D	[0] 	0 
-overaln_P4    	D	[0] 	0 
-exon_boundaries	S	[0] 
-display       	D	[0] 	100 

INPUT FILES
	Input File (S) primatesAA.fasta  Format fasta_seq
	Input File (M) proba_pair 

Identify Master Sequences [no]:

Master Sequences Identified
INPUT SEQUENCES: 22 SEQUENCES  [PROTEIN]
  Input File primatesAA.fasta Seq AGM       Length  515 type PROTEIN Struct Unchecked
  Input File primatesAA.fasta Seq AGM_cDNA  Length  515 type PROTEIN Struct Unchecked
  Input File primatesAA.fasta Seq Baboon    Length  497 type PROTEIN Struct Unchecked
  Input File primatesAA.fasta Seq Chimp     Length  493 type PROTEIN Struct Unchecked
  Input File primatesAA.fasta Seq Colobus   Length  495 type PROTEIN Struct Unchecked
  Input File primatesAA.fasta Seq DLangur   Length  495 type PROTEIN Struct Unchecked
  Input File primatesAA.fasta Seq Gibbon    Length  494 type PROTEIN Struct Unchecked
  Input File primatesAA.fasta Seq Gorilla   Length  493 type PROTEIN Struct Unchecked
  Input File primatesAA.fasta Seq Howler    Length  551 type PROTEIN Struct Unchecked
  Input File primatesAA.fasta Seq Human     Length  493 type PROTEIN Struct Unchecked
  Input File primatesAA.fasta Seq Orangutan Length  493 type PROTEIN Struct Unchecked
  Input File primatesAA.fasta Seq Owl       Length  494 type PROTEIN Struct Unchecked
  Input File primatesAA.fasta Seq PMarmoset Length  494 type PROTEIN Struct Unchecked
  Input File primatesAA.fasta Seq Patas     Length  495 type PROTEIN Struct Unchecked
  Input File primatesAA.fasta Seq Rhes_cDNA Length  497 type PROTEIN Struct Unchecked
  Input File primatesAA.fasta Seq Saki      Length  494 type PROTEIN Struct Unchecked
  Input File primatesAA.fasta Seq Spider    Length  547 type PROTEIN Struct Unchecked
  Input File primatesAA.fasta Seq Squirrel  Length  494 type PROTEIN Struct Unchecked
  Input File primatesAA.fasta Seq Tamarin   Length  494 type PROTEIN Struct Unchecked
  Input File primatesAA.fasta Seq Tant_cDNA Length  515 type PROTEIN Struct Unchecked
  Input File primatesAA.fasta Seq Titi      Length  494 type PROTEIN Struct Unchecked
  Input File primatesAA.fasta Seq Woolly    Length  547 type PROTEIN Struct Unchecked

	Multi Core Mode (read): 1 processor(s):

	--- Process Method/Library/Aln SprimatesAA.fasta
	xxx Retrieved SprimatesAA.fasta
	--- Process Method/Library/Aln Mproba_pair
	xxx Retrieved Mproba_pair

	All Methods Retrieved

MANUAL PENALTIES: gapopen=0 gapext=0

	Library Total Size: [251618]

Library Relaxation: Multi_proc [1]
 
!		[Relax Library][TOT=   22][100 %]

Relaxation Summary: [251618]--->[243988]



UN-WEIGHTED MODE: EVERY SEQUENCE WEIGHTS 1

MAKE GUIDE TREE 
	[MODE=nj][DONE]

PROGRESSIVE_ALIGNMENT [Tree Based]
Group    1: AGM
Group    2: AGM_cDNA
Group    3: Baboon
Group    4: Chimp
Group    5: Colobus
Group    6: DLangur
Group    7: Gibbon
Group    8: Gorilla
Group    9: Howler
Group   10: Human
Group   11: Orangutan
Group   12: Owl
Group   13: PMarmoset
Group   14: Patas
Group   15: Rhes_cDNA
Group   16: Saki
Group   17: Spider
Group   18: Squirrel
Group   19: Tamarin
Group   20: Tant_cDNA
Group   21: Titi
Group   22: Woolly

#Single Thread

	Group   23: [Group   10 (   1 seq)] with [Group    4 (   1 seq)]-->[Len=  493][PID:9159]
	Group   24: [Group    8 (   1 seq)] with [Group   23 (   2 seq)]-->[Len=  493][PID:9159]
	Group   25: [Group   11 (   1 seq)] with [Group   24 (   3 seq)]-->[Len=  493][PID:9159]
	Group   26: [Group    7 (   1 seq)] with [Group   25 (   4 seq)]-->[Len=  494][PID:9159]
	Group   27: [Group   20 (   1 seq)] with [Group    1 (   1 seq)]-->[Len=  515][PID:9159]
	Group   28: [Group    2 (   1 seq)] with [Group   27 (   2 seq)]-->[Len=  515][PID:9159]
	Group   29: [Group   15 (   1 seq)] with [Group    3 (   1 seq)]-->[Len=  497][PID:9159]
	Group   30: [Group   29 (   2 seq)] with [Group   28 (   3 seq)]-->[Len=  515][PID:9159]
	Group   31: [Group    6 (   1 seq)] with [Group    5 (   1 seq)]-->[Len=  495][PID:9159]
	Group   32: [Group   31 (   2 seq)] with [Group   30 (   5 seq)]-->[Len=  515][PID:9159]
	Group   33: [Group   14 (   1 seq)] with [Group   32 (   7 seq)]-->[Len=  515][PID:9159]
	Group   34: [Group   33 (   8 seq)] with [Group   26 (   5 seq)]-->[Len=  515][PID:9159]
	Group   35: [Group   19 (   1 seq)] with [Group   13 (   1 seq)]-->[Len=  494][PID:9159]
	Group   36: [Group   35 (   2 seq)] with [Group   12 (   1 seq)]-->[Len=  494][PID:9159]
	Group   37: [Group   21 (   1 seq)] with [Group   16 (   1 seq)]-->[Len=  494][PID:9159]
	Group   38: [Group   37 (   2 seq)] with [Group   36 (   3 seq)]-->[Len=  494][PID:9159]
	Group   39: [Group   18 (   1 seq)] with [Group   38 (   5 seq)]-->[Len=  494][PID:9159]
	Group   40: [Group   22 (   1 seq)] with [Group   17 (   1 seq)]-->[Len=  547][PID:9159]
	Group   41: [Group   40 (   2 seq)] with [Group   39 (   6 seq)]-->[Len=  549][PID:9159]
	Group   42: [Group   41 (   8 seq)] with [Group    9 (   1 seq)]-->[Len=  558][PID:9159]
	Group   43: [Group   42 (   9 seq)] with [Group   34 (  13 seq)]-->[Len=  588][PID:9159]


!		[Final Evaluation][TOT=  294][100 %]

CLUSTAL FORMAT for T-COFFEE Version_13.45.0.4846264 [http://www.tcoffee.org] [MODE:  ], CPU=0.00 sec, SCORE=984, Nseq=22, Len=588 

Human           MASGILVNVKEEVTCPICLELLTQPLSLDCGHSFCQACLTANHKKSMLD-
Chimp           MASGILVNVKEEVTCPICLELLTQPLSLDCGHSFCQACLTANHKKSMLD-
Gorilla         MASGILVNVKEEVTCPICLELLTQPLSLDCGHSFCQACLTANHKKSMLD-
Orangutan       MASGILVNVKEEVTCPICLELLTQPLSLDCGHSFCQACLTANHKKSTLD-
Gibbon          MASGILVNVKEKVTCPICLELLTQPLSLDCGHSFCQACLTANHKTSMPD-
Rhes_cDNA       MASGILLNVKEEVTCPICLELLTEPLSLHCGHSFCQACITANHKKSMLYK
Baboon          MASGILLNVKEEVTCPICLELLTEPLSLPCGHSFCQACITANHRKSMLYK
AGM             MASGILLNVKEEVTCPICLELLTEPLSLPCGHSFCQACITANHKESMLYK
AGM_cDNA        MASGILVNVKEEVTCPICLELLTEPLSLPCGHSFCQACITANHKESMLYK
Tant_cDNA       MASGILLNVKEEVTCPICLELLTEPLSLPCGHSFCQACITANHKESMLYK
Patas           MASGILLNVKEEVTCPICLELLTEPLSLPCGHSFCQACITANHKKSMLYK
Colobus         MASGILVNIKEEVTCPICLELLTEPLSLHCGHSFCQACITANHKKSMLYK
DLangur         MASGILVNIKEEVTCPICLELLTEPLSLHCGHSFCQACITANHKKSMLYK
PMarmoset       MASRILVNIKEEVTCPICLELLTEPLSLDCGHSFCQACITANHKESTLH-
Tamarin         MASRILVNIKEEVTCPICLELLTEPLSLDCGHSFCQACITANHKESTPH-
Squirrel        MASRILGSIKEEVTCPICLELLTEPLSLDCGHSFCQACITANHKESMLH-
Owl             MASRILVNIKEEVTCPICLELLTEPLSLDCGHSFCQACITANHKKSMPH-
Titi            MASRILVNIKEEVTCPICLELLTEPLSLDCGHSFCQACITANHKESTLH-
Saki            MASRILMNIKEEVTCPICLELLTEPLSLDCGHSFCQACITANHKKSMLH-
Howler          MASKILVNIKEEVTCPICLELLTEPLSLDCGHSFCQACITANHKES----
Spider          MASEILLNIKEEVTCPICLELLTEPLSLDCGHSFCQACITANHKESTLH-
Woolly          MASEILVNIKEEVTCPICLDLLTEPLSLDCGHSFCQACITADHKESTLH-
                *** ** .:**:*******:***:**** *********:**:*: *    

Human           KGESSCPVCRISYQPENIRPNRHVANIVEKLREVKLSPE-GQKVDHCARH
Chimp           KGESSCPVCRISYQPENIRPNRHVANIVEKLREVKLSPE-GQKVDHCAHH
Gorilla         KGESSCPVCRISYQPENIRPNRHVANIVEKLREVKLSPE-GQKVDHCARH
Orangutan       KGERSCPVCRVSYQPKNIRPNRHVANIVEKLREVKLSPE-GQKVDHCARH
Gibbon          EGERSCPVCRISYQHKNIRPNRHVANIVEKLREVKLSPEEGQKVDHCARH
Rhes_cDNA       EGERSCPVCRISYQPENIQPNRHVANIVEKLREVKLSPEEGQKVDHCARH
Baboon          EGERSCPVCRISYQPENIQPNRHVANIVEKLREVKLSPEEGLKVDHCARH
AGM             EEERSCPVCRISYQPENIQPNRHVANIVEKLREVKLSPEEGQKVDHCARH
AGM_cDNA        EEERSCPVCRISYQPENIQPNRHVANIVEKLREVKLSPEEGQKVDHCARH
Tant_cDNA       EEERSCPVCRISYQPENIQPNRHVANIVEKLREVKLSPEEGQKVDHCARH
Patas           EEERSCPVCRISYQPENIQPNRHVANIVEKLREVKLSPEEGQKVDHCARH
Colobus         EGERSCPVCRISYQPENIRPNRHVANIVEKLREVKLSPEEGQKVDHCARH
DLangur         EGERSCPVCRISYQPENIRPNRHVANIVEKLREVKLSPEEGQKVDHCARH
PMarmoset       QGERSCPLCRMSYPSENLRPNRHLANIVERLKEVMLSPEEGQKVDHCARH
Tamarin         QGERSCPLCRMSYPSENLRPNRHLANIVERLKEVMLSPEEGQKVGHCARH
Squirrel        QGERSCPLCRLPYQSENLRPNRHLASIVERLREVMLRPEERQNVDHCARH
Owl             QGERSCPLCRISYSSENLRPNRHLVNIVERLREVMLSPEEGQKVDHCAHH
Titi            QGERSCPLCRISYPSENLRPNRHLANIVERLREVVLSPEEGQKVDLCARH
Saki            QGERSCPLCRISYPSENLRPNRHLANIVERLREVMLSPEEGQKVDHCARH
Howler          -RERSCPLCRVSYHSENLRPNRHLANIAERLREVMLSPEEGQKVDRCARH
Spider          QGERSCPLCRVSYQSENLRPNRHLANIAERLREVMLSPEEGQKVDRCARH
Woolly          QGERSCPLCRVGYQSENLRPNRHLANIAERLREVMLSPEEGQKVDRCARH
                  * ***:**: *  :*::****:..*.*:*:** * **   :*. **:*

Human           GEKLLLFCQEDGKVICWLCERSQEHRGHHTFLTEEVAREYQVKLQAALEM
Chimp           GEKLLLFCQEDGKVICWLCERSQEHRGHHTFLTEEVAREYQVKLQAALEM
Gorilla         GEKLLLFCQEDGKVICWLCERSQEHRGHHTFLTEEVAQEYQVKLQAALEM
Orangutan       GEKLLLFCKEDGKVICWLCERSQEHRGHHTFLTEEVAQKYQVKLQAALEM
Gibbon          GKKLLLFCQEDRKVICWLCERSQEHRGHHTFLTEEVAQEYQMKLQAALQM
Rhes_cDNA       GEKLLLFCQEDSKVICWLCERSQEHRGHHTFLMEEVAQEYHVKLQTALEM
Baboon          GEKLLLFCQEDSKVICWLCERSQEHRGHHTFLMEEVAQEYHVKLQTALEM
AGM             GEKLLLFCQEDSKVICWLCERSQEHRGHHTFLMEEVAQEYHVKLQTALEM
AGM_cDNA        GEKLLLFCQEDSKVICWLCERSQEHRGHHTFLMEEVAQEYHVKLQTALEM
Tant_cDNA       GEKLLLFCQEDSKVICWLCERSQEHRGHHTFLMEEVAQEYHVKLQTALEM
Patas           GEKLLLFCQEDRKVICWLCERSQEHRGHHTFLMEEVAQEYHVKLQTALEM
Colobus         GEKLLLFCQEDRKVICWLCERSQEHRGHHTFLMEEVAQEYHVKLQTALEM
DLangur         GEKLLLFCQEDRKVICWLCERSQEHRGHHTFLMEEVAQEYHVKLQTALEM
PMarmoset       GEKLLLFCQQDGNVICWLCERSQEHRGHHTFLVEEVAEKYQGKLQVALEM
Tamarin         GEKLLLFCEQDGNVICWLCERSQEHRGHHTLLVEEVAEKYQEKLQVALEM
Squirrel        GEKLLLFCEQDGNIICWLCERSQEHRGHNTFLVEEVAQKYREKLQVALET
Owl             GEKLVLFCQQDGNVICWLCERSQEHRGHQTFLVEEVAQKYREKLQVALEM
Titi            GEKLLLFCQQDGNVICWLCERSQEHRGHHTFLVEEVAQTYRENLQVVLEM
Saki            GEKLLLFCQQDGNVICWLCERSQEHRGHHTLLVEEVAQTYRENLQVALET
Howler          GEKLLLFCQQHGNVICWLCERSEEHRGHRTSLVEEVAQKYREKLQAALEM
Spider          GEKLLLFCQQHGNVICWLCERSQEHRGHSTFLVEEVAQKYQEKLQVALEM
Woolly          GEKLLLFCQQHGNVICWLCERSQEHRGHSTFLVEEVAQKYREKLQVALEM
                *:**:***::. ::********:***** * * ****. *: :**..*: 

Human           LRQKQQEAEELEADIREEKASWKTQIQYDKTNVLADFEQLRDILDWEESN
Chimp           LRQKQQEAEELEADIREEKASWKTQIQYDKTNVLADFEQLRDILDWEESN
Gorilla         LRQKQQEAEELEADIREEKASWKTQIQYDKTNVLADFEQLRDILDWEESN
Orangutan       LRQKQQEAEELEADIREEKASWKTQIQYDKTSVLADFEQLRDILDWEESN
Gibbon          LRQKQQEAEELEADIREEKASWKTQIQYDKTNILADFEQLRHILDWVESN
Rhes_cDNA       LRQKQQEAEKLEADIREEKASWKIQIDYDKTNVSADFEQLREILDWEESN
Baboon          LRQKQQEAEKLEADIREEKASWKIQIDYDKTNVSADFEQLREILDWEESN
AGM             LRQKQQEAEKLEADIREEKASWKIQIDYDKTNVSADFEQLREILDWEESN
AGM_cDNA        LRQKQQEAEKLEADIREEKASWKIQIDYDKTNVSADFEQLREILDWEESN
Tant_cDNA       LRQKQQEAEKLEADIREEKASWKIQIDYDKTNVSADFEQLREILDWEESN
Patas           LRQKQQEAEKLEADIREEKASWKIQIDYDKTNVLADFEQLREILDWEESN
Colobus         LRQKQQEAEKLEADIREEKASWKIQIDYDKTNVLADFEQLREILDWEESN
DLangur         LRQKQQEAEKLEADIREEKASWKIQIDCDKTNVLADFEQLREILDWEESN
PMarmoset       MRQKQQDAEKLEADVREEQASWKIQIQNDKTNIMAEFKQLRDILDCEESK
Tamarin         MRQKQQDAEKLEADVREEQASWKIQIRNDKTNIMAEFKQLRDILDCEESK
Squirrel        MRQKQQDAEKLEADVRQEQASWKIQIQNDKTNIMAEFKQLRDILDCEESN
Owl             MRQKQKDAEKLEADVREEQASWKIQIQNDKTNIMAEFKKRRDILDCEESK
Titi            MRQKHQDAEKLEADVREEQASWKIQIQNDKTNIMAEFKQLRDILDCEESN
Saki            MRQKQQDAEKLEADVREEQASWKIQIRDDKTNIMAEFKQLRDILDCEESN
Howler          MRQKEQDAEMLEADVREEQASWKIQIENDKTSTLAEFKQLRDILDCEESN
Spider          MRQKQQDAEKLEADVREEQASWKIQIENDKTNILAEFKQLRDILDCEESN
Woolly          MREKQQDAEKLEADVREEQASWKIQIKNDKTNILAEFKQLRDILDCEESN
                :*:*.::** ****:*:*:**** **  ***.  *:*:: *.***  **:

Human           ELQNLEKEEEDILKSLTNSETEMVQQTQSLRELISDLEHRLQGSVMELLQ
Chimp           ELQNLEKEEEDILKSLTKSETEMVQQTQSVRELISDLERRLQGSVMELLQ
Gorilla         ELQNLEKEEEDILKRLTKSETEMVQQTQSVRELISDLEHRLQGSVMELLQ
Orangutan       ELQNLEKEEEDILKSLTKSETEMVQQTQSVRELISDVEHRLQGSVMELLQ
Gibbon          ELQNLEKEEKDVLKRLMRSEIEMVQQTQSVRELISDLEHRLQGSVMELLQ
Rhes_cDNA       ELQNLEKEEEDILKSLTKSETEMVQQTQYMRELISELEHRLQGSMMDLLQ
Baboon          ELQNLEKEEEDILKSLTKSETEMVQQTQYMRELISDLEHRLQGSMMELLQ
AGM             ELQNLEKEEEDILKSLTKSETEMVQQTQYMRELISDLEHRLQGSMMELLQ
AGM_cDNA        ELQNLEKEEEDILKSLTKSETEMVQQTQYMRELISDLEHRLQGSMMELLQ
Tant_cDNA       ELQNLEKEEEDILKSLTKSETEMVQQTQYMRELISDLEHRLQGSMMELLQ
Patas           ELQYLEKEEEDILKSLTKSETKMVRQTQYVRELISDLEHRLQGSMMELLQ
Colobus         ELQNLEKEEEDILKSLTKSETEMVQQTQYMRELVSDLEHRLQGSVMELLQ
DLangur         ELQNLEKEEEDILKSLTKSETEMVQQTQYMRELISDLEHRLQGSMMELLQ
PMarmoset       ELQNLEKEEKNILKRLVQSESDMVLQTQSIRVLISDLERRLQGSVMELLQ
Tamarin         ELQNLEKEEKNILKRLVQSESDMVLQTQSMRVLISDLERRLQGSVLELLQ
Squirrel        ELQNLEKEEKNILKRLVQSENDMVLQTQSVRVLISDLERRLQGSVVELLQ
Owl             ELQNLEKEEKNILKRLVQSENDMVLQTQSVRVLISDLEHRLQGSVMELLQ
Titi            ELQNLEKEEKNILKRLVQSENDMVLQTQSISVLISDLEHRLQGSVMELLQ
Saki            ELQILEKEEKNILKRLTQSENDMVLQTQSMGVLISDLEHRLQGSVMELLQ
Howler          ELQKLEKEEENLLKRLVQSENDMVLQTQSIRVLIADLERRLQGSVMELLQ
Spider          ELQNLEKEEENLLKTLAQSENDMVLQTQSMRVLIADLEHRLQGSVMELLQ
Woolly          ELQNLEKEEENLLKILAQSENDMVLQTQSMRVLIADLEHRLQGSVMELLQ
                *** *****:::** * .** .** *** :  *::::*:*****:::***

Human           GVDGVIKRTENVTLKKPETFPKNQRRVFRAPDLKGMLEVFRELTDVRRYW
Chimp           GVDGVIKRMENVTLKKPETFPKNQRRVFRAPDLKGMLEVFRELTDVRRYW
Gorilla         GVDGVIKRMENVTLKKPETFPKNRRRVFRAPDLKGMLEVFRELTDVRRYW
Orangutan       GVDGIIKRMQNVTLKKPETFPKNQRRVFRAPNLKGMLEVFRELTDVRRYW
Gibbon          GVDGVIKRMKNVTLKKPETFPKNRRRVFRAADLKVMLEVLRELRDVRRYW
Rhes_cDNA       GVDGIIKRIENMTLKKPKTFHKNQRRVFRAPDLKGMLDMFRELTDARRYW
Baboon          GVDGIIKRIENMTLKKPKTFHKNQRRVFRAPDLKGMLDMFRELTDVRRYW
AGM             GVDGIIKRIENMTLKKPKTFHKNQRRVFRAPDLKGMLDMFRELTDVRRYW
AGM_cDNA        GVDGIIKRVENMTLKKPKTFHKNQRRVFRAPDLKGMLDMFRELTDVRRYW
Tant_cDNA       GVDGIIKRIENMTLKKPKTFHKNQRRVFRAPDLKGMLDMFRELTDVRRYW
Patas           GVDGIIKRIENMTLKKPETFHKNQRRVFRAPALKGMLDMFRELTDVRRYW
Colobus         GVDGIIKRIEDMTLKKPKTFPKNQRRVFRAPDLKGMLDMFRELTDVRRYW
DLangur         GVDGIIKRIENMTLKKPKTFPKNQRRVFRAPDLKGILDMFRELTDVRRYW
PMarmoset       GVDDVIKRIEKVTLQKPKTFLNEKRRVFRAPDLKGMLQAFKELTEVQRYW
Tamarin         GVDDVIKRIETVTLQKPKTFLNEKRRVFRAPDLKAMLQAFKELTEVQRYW
Squirrel        DVDGVIKRIEKVTLQKPKTFLNEKRRVFRAPDLKRMLQVLKELTEVQRYW
Owl             GVDGVIKRIEKVTLQNPKTFLNEKRRIFQTPDLKGTLQVFKEPTEVQRYW
Titi            GVDGVIKRVKNVTLQKPKTFLNEKRRVFRVPDLKGMLQVSKELTEVQRYW
Saki            GVDEVIKRVKNVTLQKPKTFLNEKRRVFRAPDLKGMLQVFKELTEVQRYW
Howler          GVEGVIKRIKNVTLQKPETFLNEKRRVFQAPDLKGMLQVFKELKEVQCYW
Spider          DVEGVIKRIKNVTLQKPKTFLNEKRRVFRAPDLKGMLQVFKELKEVQCYW
Woolly          GVEGIIKRTTNVTLQKPKTFLNEKRRVFRAPNLKGMLQVFKELKEVQCYW
                .*: :***   :**::*:** :::**:*:.. **  *:  :*  :.: **

Human           VDVTVAPNNISCAVISEDKRQVSSPKPQIIYGARGTR-YQ----------
Chimp           VDVTVAPNNISCAVISEDMRQVSSPKPQIIYGARGTR-YQ----------
Gorilla         VDVTVAPNNISCAVISEDMRQVSSPKPQIIYGAQGTR-YQ----------
Orangutan       VDVTVAPNDISYAVISEDMRQVSCPEPQIIYGAQGTT-YQ----------
Gibbon          VDVTVAPNNISYAVISEDMRQVSSPEPQIIFEAQGTI-SQ----------
Rhes_cDNA       VDVTLATNNISHAVIAEDKRQVSSRNPQIMYQAPGTL-FT----------
Baboon          VDVTLAPNNISHAVIAEDKRQVSSRNPQITYQAPGTL-FS----------
AGM             VDVTLAPNNISHAVIAEDKRQVSYQNPQIMYQAPGSS-FGSLTNFNYCTG
AGM_cDNA        VDVTLAPNNISHAVIAEDKRQVSYRNPQIMYQSPGSL-FGSLTNFSYCTG
Tant_cDNA       VDVTLAPNNISHAVIAEDKRQVSYQNPQIMYQAPGSS-FGSLTNFNYCTG
Patas           VDVTLAPNNISHVVIAEDKRQVSSRNPQIMYWAQGKL-FQ----------
Colobus         VDVTLAPNNISHAVIAEDKRRVSSPNPQIMYRAQGTL-FQ----------
DLangur         VDVTLAPNNISHAVIAEDKRQVSSPNPQIMCRARGTL-FQ----------
PMarmoset       AHVTLVPSHPSCTVISEDERQVRYQVP---------I-HQ----------
Tamarin         AHVTLVPSHPSYAVISEDERQVRYQFQ---------I-HQ----------
Squirrel        AHVTLVPSHPSYTIISEDGRQVRYQKP---------I-RH----------
Owl             AHVTLVPSHPSCTVISEDERQVRYQKR---------I-YQ----------
Titi            AHVTLVASHPSRAVISEDERQVRYQEW---------I-HQ----------
Saki            VHVTLVPSHLSCAVISEDERQVRYQER---------I-HQ----------
Howler          AHVTLIPNHPSCTVISEDKREVRYQEQ---------IHHH----------
Spider          AHVTLVPSHPSCTVISEDERQVRYQEQ---------I-HQ----------
Woolly          AHVTLVPSHPSCAVISEDQRQVRYQKQ---------R-HR----------
                ..**: ... * .:*:** *.*                            

Human           ----------TFVNFNYCTGILGSQSITSGKHYWEVDVSKKTAWILGVCA
Chimp           ----------TFMNFNYCTGILGSQSITSGKHYWEVDVSKKSAWILGVCA
Gorilla         ----------TFMNFNYCTGILGSQSITSGKHYWEVDVSKKSAWILGVCA
Orangutan       ----------TYVNFNYCTGILGSQSITSGKHYWEVDVSKKSAWILGVCA
Gibbon          ----------TFVNFNYCTGILGSQSITSGKHYWEVDVSKKSAWILGVCA
Rhes_cDNA       --------FPSLTNFNYCTGVLGSQSITSGKHYWEVDVSKKSAWILGVCA
Baboon          --------FPSLTNFNYCTGVLGSQSITSGKHYWEVDVSKKSAWILGVCA
AGM             VLGSQSITSRKLTNFNYCTGVLGSQSITSGKHYWEVDVSKKSAWILGVCA
AGM_cDNA        VPGSQSITSGKLTNFNYCTGVLGSQSITSGKHYWEVDVSKKSAWILGVCA
Tant_cDNA       VLGSQSITSRKLTNFNYCTGVLGSQSITSGKHYWEVDVSKKSAWILGVCA
Patas           ----------SLKNFNYCTGILGSQSITSGKHYWEVDVSKKSAWILGVCA
Colobus         ----------SLKNFIYCTGVLGSQSITSGKHYWEVDVSKKSAWILGVCA
DLangur         ----------SLKNFIYCTGVLGSQSITSGKHYWEVDVSKKSAWILGVCA
PMarmoset       ----------PLVKVKYFYGVLGSLSITSGKHYWEVDVSNKRGWILGVCG
Tamarin         ----------PSVKVNYFYGVLGSPSITSGKHYWEVDVTNKRDWILGICV
Squirrel        ----------LLVKVQYFYGVLGSPSITSGKHYWEVDVSNKRAWTLGVCV
Owl             ----------PFLKVKYFCGVLGSPSITSGKHYWEVDVSNKSEWILGVCV
Titi            ----------SSGRVKYFYGVLGSPSITSGKHYWEVDVSNKSAWILGVCV
Saki            ----------SFGKVKYFYGVLGSPSIRSGKHYWEVDVSNKSAWILGVCV
Howler          ----------PSMEVKYFYGILGSPSITSGKHYWEVDVSNKSAWILGVCV
Spider          ----------PSVKVKYFCGVLGSPGFTSGKHYWEVDVSDKSAWILGVCV
Woolly          ----------PSVKAKYFYGVLGSPSFTSGKHYWEVDVSNKSAWILGVCV
                             .  *  *:*** .: **********:.*  * **:* 

Human           GFQPDAMCNIEKNENYQPKYGYWVIGLEEGVKCS----------------
Chimp           GFQPDAMCNIEKNENYQPKYGYWVIGLEEGVKCS----------------
Gorilla         GFQPDATCNIEKNENYQPKYGYWVIGLEEGVKCS----------------
Orangutan       GFQPDAMYNIEQNENYQPQYGYWVIGLEEGVKCS----------------
Gibbon          GLQPDAMYNIEQNENYQPKYGYWVIGLEEGVKCN----------------
Rhes_cDNA       GFQSDAMYNIEQNENYQPKYGYWVIGLQEGVKYS----------------
Baboon          GFQPDAMYNIEQNENYQPKYGYWVIGLQEGVKYS----------------
AGM             GFQPDATYNIEQNENYQPKYGYWVIGLQEGDKYS----------------
AGM_cDNA        GFQPDATYNIEQNENYQPKYGYWVIGLQEGDKYS----------------
Tant_cDNA       GFQPDATYNIEQNENYQPKYGYWVIGLQEGDKYS----------------
Patas           GFQPDAMYDVEQNENYQPKYGYWVIGLQEGVKYS----------------
Colobus         GFQPDAMYNIEQNENYQPKYGYWVIGLQEGVKYS----------------
DLangur         GFQPDAMYNIEQNENYQPKYGYWVIGLQEGVKYN----------------
PMarmoset       SWKCNAKWNVLRPENYQPKNGYWVIGLRNTDNYSAF--------------
Tamarin         SFKCNAKWNVLRPENYQPKNGYWVIGLQNTNNYSAF--------------
Squirrel        SLKCTANQSVSGTENYQPKNGYWVIGLRNAGNYRAF--------------
Owl             SLKRTASCSVPRIENDQPKNGYWVIGLRNADNYSAF--------------
Titi            SLKCAANRNGPGVENYQPKNGYWVIGLRNADNYSAF--------------
Saki            SLKCTANRNGPRIENYQPKNGYWVIGLWNAGNYSAF--------------
Howler          SLKCIG--NFPGIENYQPQNGYWVIGLRNADNYSAFQDAVPETENYQPKN
Spider          SLKCTA--NVPGIENYQPKNGYWVIGLQNANNYSAFQDAVPGTENYQPKN
Woolly          SLKCTA--NVPGIENYQPKNGYWVIGLQNADNYSAFQDAVPGTEDYQPKN
                . :  .  .    ** **: ******* :  :                  

Human           --------------------------------------------------
Chimp           --------------------------------------------------
Gorilla         --------------------------------------------------
Orangutan       --------------------------------------------------
Gibbon          --------------------------------------------------
Rhes_cDNA       --------------------------------------------------
Baboon          --------------------------------------------------
AGM             --------------------------------------------------
AGM_cDNA        --------------------------------------------------
Tant_cDNA       --------------------------------------------------
Patas           --------------------------------------------------
Colobus         --------------------------------------------------
DLangur         --------------------------------------------------
PMarmoset       -----------------------------------------------QDA
Tamarin         -----------------------------------------------QDA
Squirrel        -----------------------------------------------QSS
Owl             -----------------------------------------------QDA
Titi            -----------------------------------------------QDS
Saki            -----------------------------------------------QDS
Howler          RN-RFTGLQNADNCSAFQNAFPGIQSYQPKKSHLFTGLQNLSNYNAFQNK
Spider          GNRRNKGLRNADNYSAFRDTF------QPINDSWVTGLRNVDNYNAFQDA
Woolly          GCWRNTGLRNADNYSAFQDVF------QPKNDYWVTGLWNADNYNAFQDA
                                                                  

Human           ------AFQDSSFHTPSVPFIVPLSVIICPDRVGVFLDYEACTVSFFNIT
Chimp           ------AFQDGSFHTPSAPFIVPLSVIICPDRVGVFLDYEACTVSFFNIT
Gorilla         ------AFQDGSFHTPSAPFIVPLSVIICPDRVGVFLDYEACTVSFFNIT
Orangutan       ------AFQDGSFHNPSAPFIVPLSVIICPDRVGVFLDYEACTVSFFNIT
Gibbon          ------AFQDGSIHTPSAPFVVPLSVNICPDRVGVFLDYEACTVSFFNIT
Rhes_cDNA       ------VFQDGSSHTPFAPFIVPLSVIICPDRVGVFVDYEACTVSFFNIT
Baboon          ------VFQDGSSHTPFAPFIVPLSVIICPDRVGVFVDYEACTVSFFNIT
AGM             ------VFQDSSSHTPFAPFIVPLSVIICPDRVGVFVDYEACTVSFFNIT
AGM_cDNA        ------VFQDGSSHTPFAPFIVPLSVIICPDRVGVFVDYEACTVSFFNIT
Tant_cDNA       ------VFQDGSSHTPFAPFIVPLSVIICPDRVGVFVDYEACTVSFFNIT
Patas           ------VFQDGSSHTPFAPFIAPLSVIFCPDRVGVFVDYEACTVSFFNIT
Colobus         ------VFQDGSSHTPFAPFIVPLSVIICPDRVGVFVDYEACTVSFFNIT
DLangur         ------VFQDGSSHTPFAPFIVPLSVIICPDRVGVFVDYEACTVSFFNIT
PMarmoset       V--KYSDVQDGSRSVSSGPLIVPLFMTICPNRVGVFLDYEACTISFFNVT
Tamarin         V--KYSDFQIGSRSTASVPLIVPLFMTIYPNRVGVFLDYEACTVSFFNVT
Squirrel        F--EFRDFLAGSRLTLSPPLIVPLFMTICPNRVGVFLDYEARTISFFNVT
Owl             V--EYSDFQDGSRSTPSAPLIVPLFMTICPNRVGVFLDYEACTVSFFNVT
Titi            V--KYNDFQDGSRSTTYAPLIVPLFMTICPNRVGVFLDYEACTVSFFNVT
Saki            V--KYSDFQDGSHSATYGPLIVPLFMTICPNRVGVFLDYEACTVSFFNVT
Howler          VQYNYIDFQDDSLSTPSAPLIVPLFMTICPKRVGVFLDYEACTVSFFNVT
Spider          V--KYSDFQDGSCSTPSAPLMVPLFMTICPKRVGVFLDCKACTVSFFNVT
Woolly          G--KYSDFQDGSCSTPFAPLIVPLFMTIRPKRVGVFLDYEACTVSFFNVT
                       .  .*      *::.** : : *.*****:* :* *:****:*

Human           NHGFLIYKFSHCSFSQPVFPYLNPRKCGVPMTLCSPSS
Chimp           NHGSLIYKFSHCSFSQPVFPYLNPRKCGVPMTLCSPSS
Gorilla         NHGFLIYKFSHCSFSQPVFPYLNPRKCRVPMTLCSPSS
Orangutan       NHGFLIYKFSHCSFSQPVFPYLNPRKCRVPMTLCSPSS
Gibbon          DHGFLIYKFSHCSFSQPVFPYLNPRKCTVPMTLCSPSS
Rhes_cDNA       NHGFLIYKFSQCSFSKPVFPYLNPRKCTVPMTLCSPSS
Baboon          NHGFLIYKFSQCSFSKPVFPYLNPRKCTVPMTLCSPSS
AGM             NHGFLIYKFSQCSFSKPVFPYLNPRKCTVPMTLCSPSS
AGM_cDNA        NHGFLIYKFSQCSFSKPVFPYLNPRKCTVPMTLCSPSS
Tant_cDNA       NHGFLIYKFSQCSFSKPVFPYLNPRKCTVPMTLCSPSS
Patas           NHGFLIYKFSQCSFSKPVFPYLNPRKCTVPMTLCSPSS
Colobus         NHGFLIYKFSQCSFSKPVFPYLNPRKCTVPMTLCSPSS
DLangur         NHGFLIYKFSQCSFSKPVFPYLNPRKCTVPMTLCSPSS
PMarmoset       SNGFLIYKFSNCHFSYPVFPYFSPTTCELPMTLCSPSS
Tamarin         NNGFLIYKFSNCHFSYPVFPYFSPMTCELPMTLCSPSS
Squirrel        SNGFLIYKFSDCHFSYPVFPYFNPMTCELPMTLCSPRS
Owl             NNGFLIYKFSNCHFCYPVFPYFSPMTCELPMTLCSPSS
Titi            SNGFLIYKFSNCHFSYPVFPYFSPMTCELPMTLCSPRS
Saki            SNGFLIYKFSNCRFSDSVFPYFSPMTCELPMTLCSPRS
Howler          SNGYLIYKFSNCQFSYPVFPYFSPMTCELPMTLCSPSS
Spider          SNGCLIYKFSKCHFSYPVFPYFSPMICKLPMTLCSPSS
Woolly          SNGCLIYKFSNCHFSCPVFPYFSPMTCKLPMTLCSPSS
                .:* ******.* *. .****:.*  * :******* *





OUTPUT RESULTS
	#### File Type= GUIDE_TREE      Format= newick          Name= primatesAA.dnd
	#### File Type= MSA             Format= aln             Name= primatesAA.aln
	#### File Type= MSA             Format= html            Name= primatesAA.html

    # Command Line: /Users/Beth/.t_coffee/bin/macosx/t_coffee primatesAA.fasta  [PROGRAM:T-COFFEE]
    # T-COFFEE Memory Usage: Current= 35.730 Mb, Max= 42.800 Mb
    # Results Produced with T-COFFEE Version_13.45.0.4846264 (Version_13.45.0.4846264)
    # T-COFFEE is available from http://www.tcoffee.org
    # Register on: https://groups.google.com/group/tcoffee/
    
## Muscle

Download Muscle muscle3.8.31_i86darwin64.tar.gz and untar: 
    
    https://www.drive5.com/muscle/downloads.htm
    
    tar -zxvf muscle3.8.31_i86darwin64.tar.gz
    
Produces executable:

    muscle3.8.31_i86darwin64
    
Run muscle:

    ~/Desktop/software/muscle3.8.31_i86darwin64 -in primatesAA.fasta -out primatesAA.fasta_muscle.aln
    
need to change permissions first:

    ls -lt ~/Desktop/software/muscle3.8.31_i86darwin64
    
  -rw-r--r--@ 1 Beth  staff  431740 May 14  2010 /Users/Beth/Desktop/software/muscle3.8.31_i86darwin64
    
    chmod 755 ~/Desktop/software/muscle3.8.31_i86darwin64
    
    ls -lt ~/Desktop/software/muscle3.8.31_i86darwin64
    
  -rwxr-xr-x@ 1 Beth  staff  431740 May 14  2010 /Users/Beth/Desktop/software/muscle3.8.31_i86darwin64
  
run

    ~/Desktop/software/muscle3.8.31_i86darwin64 -in primatesAA.fasta -out primatesAA.fasta_muscle.aln
    
result:

    MUSCLE v3.8.31 by Robert C. Edgar

http://www.drive5.com/muscle
This software is donated to the public domain.
Please cite: Edgar, R.C. Nucleic Acids Res 32(5), 1792-97.

primatesAA 22 seqs, max length 551, avg  length 504
00:00:00      1 MB(0%)  Iter   1  100.00%  K-mer dist pass 1
00:00:00      1 MB(0%)  Iter   1  100.00%  K-mer dist pass 2
00:00:00      9 MB(0%)  Iter   1  100.00%  Align node       
00:00:00      9 MB(0%)  Iter   1  100.00%  Root alignment
00:00:00     10 MB(0%)  Iter   2  100.00%  Refine tree   
00:00:00     10 MB(0%)  Iter   2  100.00%  Root alignment
00:00:00     10 MB(0%)  Iter   2  100.00%  Root alignment
00:00:00     10 MB(0%)  Iter   3  100.00%  Refine biparts
00:00:00     10 MB(0%)  Iter   4  100.00%  Refine biparts
00:00:00     10 MB(0%)  Iter   5  100.00%  Refine biparts
00:00:00     10 MB(0%)  Iter   6  100.00%  Refine biparts
00:00:00     10 MB(0%)  Iter   7  100.00%  Refine biparts
00:00:00     10 MB(0%)  Iter   8  100.00%  Refine biparts
00:00:00     10 MB(0%)  Iter   9  100.00%  Refine biparts
00:00:00     10 MB(0%)  Iter  10  100.00%  Refine biparts
00:00:00     10 MB(0%)  Iter  11  100.00%  Refine biparts
00:00:00     10 MB(0%)  Iter  12  100.00%  Refine biparts
00:00:00     10 MB(0%)  Iter  13  100.00%  Refine biparts
00:00:00     10 MB(0%)  Iter  14  100.00%  Refine biparts
00:00:00     10 MB(0%)  Iter  15  100.00%  Refine biparts
00:00:00     10 MB(0%)  Iter  16  100.00%  Refine biparts
00:00:00     10 MB(0%)  Iter  17  100.00%  Refine biparts
00:00:00     10 MB(0%)  Iter  18  100.00%  Refine biparts
00:00:00     10 MB(0%)  Iter  19  100.00%  Refine biparts
00:00:00     10 MB(0%)  Iter  20  100.00%  Refine biparts

## Orthofinder

### setting up on the chtc (wi supercomputer)
set up environment and download using anaconda
	
	conda install -c conda-forge conda-pack
	conda create --name Orthofinder
	conda activate Orthofinder
	conda install orthofinder
	conda deactivate

pack up to send to chtc

	conda pack -n Orthofinder

how to unpack:

	mkdir -p Orthofinder
	tar -xzf Orthofinder.tar.gz -C Orthofinder
	source Orthofinder/bin/activate
	conda-unpack

how to run on chtc:

executable file where grplant_input.tar.gz are tarred fasta files (orthofinder.sh):

	#!/bin/bash

	mkdir -p Orthofinder
	tar -xzf Orthofinder.tar.gz -C Orthofinder
	source Orthofinder/bin/activate
	conda-unpack
	cp /staging/bmoore22/grplant_input.tar.gz ./
	tar -xzvf grplant_input.tar.gz
	ls
	Orthofinder/bin/orthofinder -f grplant_input/ -t 16
	ls
	tar -czvf grplnt_Results.tar.gz grplant_input/OrthoFinder/
	mv grplnt_Results.tar.gz /staging/bmoore22/
	rm grplant_input.tar.gz

	# END
	
submit file (orthofinder.sub):

	# orthofinder.sub
	# specify error output
	universe = vanilla
	log = ortho_$(Cluster).log
	error = ortho_$(Cluster)_$(Process).err
	output = ortho_$(Cluster).out
	# specify executable, file transfer and arguments
	executable = orthofinder.sh
	Requirements = (Target.HasCHTCStaging == true)
	should_transfer_files = YES
	when_to_transfer_output = ON_EXIT
	# arguments= $(request_cpus)
	transfer_input_files = http://proxy.chtc.wisc.edu/SQUID/bmoore22/Orthofinder.tar.gz
	# compute resources
	request_cpus = 16
	request_memory = 30GB
	request_disk = 30GB
	getenv=true
	##
	# Tell condor you wan to queue up files in a list
	queue 1
	
submit to chtc:

	condor_q orthofinder.sub
	
## Distance based and parsimony trees

See distance_based_methods.R for R script

## Running RAxML-NG

### Installation

Instructions are here: https://github.com/amkozlov/raxml-ng/wiki/Installation

Install using bioconda:

	conda install -c bioconda raxml-ng 
	
Go to directory with raxml program and check correct installation:

	cd Desktop/Github/RAxML/
	./raxml-ng -v
	
	RAxML-NG v. 1.0.2 released on 22.02.2021 by The Exelixis Lab.
	
### Running RAxML

from RAxML tutorial: https://github.com/amkozlov/raxml-ng/wiki/Tutorial

1. Prepare the alignment

	./raxml-ng --check --msa ng-tutorial/prim.phy --model GTR+G --prefix T1
	
 --prefix names the output
 --parse used to compress alignment to binary format (for faster analysis)
 
 	./raxml-ng --parse --msa ng-tutorial/prim.phy --model GTR+G --prefix T2
	
 results in compressed alignment (.rba) file:
 
 	T2.raxml.rba
	
2. Tree inference

 Using default parameters and random seed 2
 
 	./raxml-ng --msa ng-tutorial/prim.phy --model GTR+G --prefix T3 --threads 2 --seed 2
	
  results in rba file, bestModel, bestTree, mlTrees, and startTree files
  Default is 20 starting trees, 10 random and 10 parsimony based
  
  Adjusting number of starting trees to 25 parsimony and 25 random:
  
  	./raxml-ng --msa ng-tutorial/prim.phy --model GTR+G --prefix T4 --threads 2 --seed 2 --tree pars{25},rand{25}
	
  Using only 1 starting tree with --search1 option:
  
  	./raxml-ng --search1 --msa ng-tutorial/prim.phy --model GTR+G --prefix T5 --threads 2 --seed 2
	
  Compare results of these 3 trees using grep and log files:
  
  	grep "Final LogLikelihood:" T{3,4,5}.raxml.log
	
  result:
  
	T3.raxml.log:Final LogLikelihood: -5708.925408
	T4.raxml.log:Final LogLikelihood: -5708.925408
	T5.raxml.log:Final LogLikelihood: -5708.940534
 
 T5 has a slightly worse likelihood
 
 Check topology by using the --rfdist command to compute the topological Robinson-Foulds (RF) distance between all trees
 
 	cat T{3,4}.raxml.mlTrees T5.raxml.bestTree > mltrees
	./raxml-ng --rfdist --tree mltrees --prefix RF
	
 Result RF.raxml.rfDistances file:
 
 	[...]
	Loaded 71 trees with 12 taxa.

	Average absolute RF distance in this tree set: 0.000000
	Average relative RF distance in this tree set: 0.000000
	Number of unique topologies in this tree set: 1
	
 Thus all topologies are identical, meaning it is likely we found global maximum tree

 Try another tree to see differences in different starting trees:

	./raxml-ng --msa ng-tutorial/fusob.phy --model GTR+G --prefix T6 --seed 2 --threads 2
 
 compare trees via log:
 
  	grep "ML tree search #" T6.raxml.log
	
	[00:00:05] [worker #0] ML tree search #1, logLikelihood: -9974.664133
	[00:00:06] [worker #1] ML tree search #2, logLikelihood: -9974.666327
	[00:00:12] [worker #0] ML tree search #3, logLikelihood: -9974.678090
	[00:00:12] [worker #1] ML tree search #4, logLikelihood: -9974.670374
	[00:00:19] [worker #1] ML tree search #6, logLikelihood: -9974.674380
	[00:00:20] [worker #0] ML tree search #5, logLikelihood: -9974.668886
	[00:00:27] [worker #1] ML tree search #8, logLikelihood: -9974.668482
	[00:00:29] [worker #0] ML tree search #7, logLikelihood: -9974.672609
	[00:00:35] [worker #1] ML tree search #10, logLikelihood: -9974.668257
	[00:00:36] [worker #0] ML tree search #9, logLikelihood: -9974.665060
	[00:00:41] [worker #1] ML tree search #12, logLikelihood: -9980.604144
	[00:00:42] [worker #0] ML tree search #11, logLikelihood: -9974.669312
	[00:00:48] [worker #1] ML tree search #14, logLikelihood: -9974.673006
	[00:00:49] [worker #0] ML tree search #13, logLikelihood: -9974.668244
	[00:00:55] [worker #1] ML tree search #16, logLikelihood: -9974.670595
	[00:00:56] [worker #0] ML tree search #15, logLikelihood: -9974.673735
	[00:01:02] [worker #1] ML tree search #18, logLikelihood: -9980.602429
	[00:01:03] [worker #0] ML tree search #17, logLikelihood: -9974.669829
	[00:01:08] [worker #1] ML tree search #20, logLikelihood: -9980.602413
	[00:01:09] [worker #0] ML tree search #19, logLikelihood: -9980.604230
	
 some searches converged to a local optimum with a much lower likelihood (-9980.602429 vs. -9974.669829)
 
 compare topology:
 
 	./raxml-ng --rfdist --tree T6.raxml.mlTrees --prefix RF6
	
	Loaded 20 trees with 38 taxa.

	Average absolute RF distance in this tree set: 2.694737
	Average relative RF distance in this tree set: 0.038496
	Number of unique topologies in this tree set: 2
	Pairwise RF distances saved to: /Users/Beth/Desktop/Github/RAxML/RF6.raxml.rfDistances
	
 we have 2 distinct topologies in our set of 20 inferred trees.. looking at distances:
 
 	cat RF6.raxml.rfDistances
	
	0	1	0	0.000000
	0	2	0	0.000000
	0	3	0	0.000000
	0	4	0	0.000000
	0	5	0	0.000000
	0	6	0	0.000000
	0	7	0	0.000000
	0	8	0	0.000000
	0	9	0	0.000000
	0	10	0	0.000000
	0	11	8	0.114286
	0	12	0	0.000000
	0	13	0	0.000000
	0	14	0	0.000000
	0	15	0	0.000000
	0	16	0	0.000000
	0	17	8	0.114286
	0	18	8	0.114286
	0	19	8	0.114286
	1	2	0	0.000000
	1	3	0	0.000000
	1	4	0	0.000000
	1	5	0	0.000000
	1	6	0	0.000000
	1	7	0	0.000000
	1	8	0	0.000000
	1	9	0	0.000000
	1	10	0	0.000000
	1	11	8	0.114286
	1	12	0	0.000000
	1	13	0	0.000000
	1	14	0	0.000000
	1	15	0	0.000000
	1	16	0	0.000000
	1	17	8	0.114286
	1	18	8	0.114286
	1	19	8	0.114286
	...

 All 10 searches from the random starting trees (trees 0 to 9) found the best-scoring topology (RF=0, logL=-9974), whereas 5 out of 10 searches from a parsimony starting  tree converged to a local optimum (RF = 8, logL = -9980).
 
 ### Bootstrapping
 
 1. standard non-parametric bootstrap by re-sampling alignment columns and re-inferring tree for each bootstrap replicate MSA

		./raxml-ng --bootstrap --msa ng-tutorial/prim.phy --model GTR+G --prefix T7 --seed 2 --threads 2
		
		Starting bootstrapping analysis with 1000 replicates.

		[00:00:00] [worker #0] Bootstrap tree #1, logLikelihood: -5751.388550
		[00:00:01] [worker #1] Bootstrap tree #2, logLikelihood: -5782.330955
		[00:00:01] [worker #1] Bootstrap tree #4, logLikelihood: -5476.488708
		...
		Bootstrapping converged after 50 replicates.
		Bootstrap trees saved to: /Users/Beth/Desktop/Github/RAxML/T7.raxml.bootstraps
		
2. Bootstrapping options

     manually set bootstrapping:

		./raxml-ng --bootstrap --msa ng-tutorial/prim.phy --model GTR+G --prefix T8 --seed 2 --threads 2 --bs-trees 200
		
     checking bootstrap convergence post-hoc
     
     		./raxml-ng --bsconverge --bs-trees T7.raxml.bootstraps --prefix T9 --seed 2 --threads 2 --bs-cutoff 0.01
		
		 # trees        avg WRF       avg WRF in %       # perms: wrf <= 1.00 %     converged?  
      		50          5.260              1.169                          318        NO
		Bootstopping test did not converge after 50 trees
		
     result: 50 bootstraps is not enough with 1% cutoff
     
     checking 200 bootstraps:
     
     		./raxml-ng --bsconverge --bs-trees T8.raxml.bootstraps --prefix T10 --seed 2 --threads 2  --bs-cutoff 0.01
		
		 # trees        avg WRF       avg WRF in %       # perms: wrf <= 1.00 %     converged?  
      		50          5.260              1.169                          318        NO
     		100          9.582              1.065                          451        NO
     		150         12.644              0.937                          680        NO
     		200         13.902              0.772                          818        NO
      
      Bootstopping test did not converge after 200 trees.. but weighted RF distance (avg WRF in %) is steadily decreasing
      
      Adding 400 more replicate trees to the first 200 bootstraps. 
      It is however important to specify a distinct random seed for the second run, otherwise first 200 trees will be identical to the first batch!
      
      		./raxml-ng --bootstrap --msa ng-tutorial/prim.phy --model GTR+G --prefix T11 --seed 333 --threads 2 --bs-trees 400
		
		Analysis started: 23-Mar-2021 11:00:28 / finished: 23-Mar-2021 11:03:00
		
      concatenate replicate trees from both runs, and re-assess the convergence:

		cat T8.raxml.bootstraps T11.raxml.bootstraps > allbootstraps
		./raxml-ng --bsconverge --bs-trees allbootstraps --prefix T12 --seed 2 --threads 1 --bs-cutoff 0.01
		
      		Loaded 600 trees with 12 taxa.

		Performing bootstrap convergence assessment using autoMRE criterion

		 # trees        avg WRF       avg WRF in %       # perms: wrf <= 1.00 %     converged?  
    		  50          5.260              1.169                          318        NO
   		  100          9.582              1.065                          451        NO
    		 150         12.644              0.937                          680        NO
    		 200         13.902              0.772                          818        NO
    		 250         14.976              0.666                          911        NO
    		 300         18.074              0.669                          941        NO
    		 350         19.368              0.615                          947        NO
    		 400         20.938              0.582                          971        NO
    		 450         22.188              0.548                          980        NO
    		 500         23.638              0.525                          988        NO
    		 550         24.176              0.488                          998        YES
		Bootstopping test converged after 550 trees
		
3. Computing branch support

	use the ML tree obtained in the run T3
	
		./raxml-ng --support --tree T3.raxml.bestTree --bs-trees allbootstraps --prefix T13 --threads 2
		
	tree with support:
	
		T13.raxml.support
		
	Transfer Bootstrap Expectation support metric: -not sure what this is, tutorial has link to a paper
	
		./raxml-ng --support --tree T3.raxml.bestTree --bs-trees allbootstraps --prefix T14 --threads 2 --bs-metric tbe
		
	Doing above steps together as one (20 ML inferences on the original MSA, inferring bootstrap replicate trees, and drawing support values on the best-scoring tree):
	
		./raxml-ng --all --msa ng-tutorial/prim.phy --model GTR+G --prefix T15 --seed 2 --threads 2 --bs-metric fbp,tbe
     
     		ls T15.*
		
### Tree likelihood evaluation

1. options

	--evaluate
	--opt-model on/off you can enable/disable model parameter optimization.
	--opt-branches on/off you can enable/disable branch length optimization.
	
2. Evaluating different models

	Jukes-Cantor (JC):
	
		./raxml-ng --evaluate --msa ng-tutorial/prim.phy --threads 2 --model JC --tree T3.raxml.bestTree --prefix E1
		
		Partition 0: noname
   		Rate heterogeneity: NONE
   		Base frequencies (model): 0.250000 0.250000 0.250000 0.250000 
   		Substitution rates (model): 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
		Final LogLikelihood: -6424.202796
		AIC score: 12890.405591 / AICc score: 12891.460386 / BIC score: 12991.209163
		Free parameters (model + branch lengths): 21
		
	add rate heterogeneity:
	
		./raxml-ng --evaluate --msa ng-tutorial/prim.phy --threads 2 --model JC+G --tree T3.raxml.bestTree --prefix E2
		
		Partition 0: noname
   		Rate heterogeneity: GAMMA (4 cats, mean),  alpha: 0.746345 (ML),  weights&rates: (0.250000,0.084102) (0.250000,0.384601) (0.250000,0.940902) (0.250000,2.590395) 
   		Base frequencies (model): 0.250000 0.250000 0.250000 0.250000 
   		Substitution rates (model): 1.000000 1.000000 1.000000 1.000000 1.000000 1.000000
		Final LogLikelihood: -6272.469067
		AIC score: 12588.938133 / AICc score: 12590.094705 / BIC score: 12694.541875
		Free parameters (model + branch lengths): 22
		
	GTR model:
	
		./raxml-ng --evaluate --msa ng-tutorial/prim.phy --threads 2 --model GTR --tree T3.raxml.bestTree --prefix E3
		
		Partition 0: noname
   		Rate heterogeneity: NONE
   		Base frequencies (ML): 0.305789 0.269064 0.133170 0.291977 
   		Substitution rates (ML): 15.203998 34.494515 7.252389 3.565142 48.362098 1.000000 
		Final LogLikelihood: -5934.158938
		AIC score: 11926.317875 / AICc score: 11928.322483 / BIC score: 12065.522807
		Free parameters (model + branch lengths): 29
		
	GTR with the Gamma model of rate heterogeneity, but empirical base frequencies:
	
		./raxml-ng --evaluate --msa ng-tutorial/prim.phy --threads 2 --model GTR+G+FC --tree T3.raxml.bestTree --prefix E4
		
		Partition 0: noname
   		Rate heterogeneity: GAMMA (4 cats, mean),  alpha: 0.438020 (ML),  weights&rates: (0.250000,0.022560) (0.250000,0.209544) (0.250000,0.769351) (0.250000,2.998545) 
   		Base frequencies (empirical): 0.324121 0.304020 0.105528 0.266332 
   		Substitution rates (ML): 7.849067 48.204166 5.063654 2.797520 51.733845 1.000000 
		Final LogLikelihood: -5719.411268
		AIC score: 11498.822535 / AICc score: 11500.967864 / BIC score: 11642.827637
		Free parameters (model + branch lengths): 30

	add ML estimate of the base frequencies:
	
		./raxml-ng --evaluate --msa ng-tutorial/prim.phy --threads 2 --model GTR+G+FO --tree T3.raxml.bestTree --prefix E5
		
		Partition 0: noname
   		Rate heterogeneity: GAMMA (4 cats, mean),  alpha: 0.376884 (ML),  weights&rates: (0.250000,0.013526) (0.250000,0.164288) (0.250000,0.705003) (0.250000,3.117183) 
   		Base frequencies (ML): 0.354422 0.321342 0.080986 0.243250 
   		Substitution rates (ML): 3.966597 45.037478 3.303264 2.516102 36.714457 1.000000 
		Final LogLikelihood: -5709.004812
		AIC score: 11478.009623 / AICc score: 11480.154952 / BIC score: 11622.014725
		Free parameters (model + branch lengths): 30
		
	4 free rates instead of GAMMA-distributed rates:
	
		./raxml-ng --evaluate --msa ng-tutorial/prim.phy --threads 2 --model GTR+R4+FO --tree T3.raxml.bestTree --prefix E6
		
		Partition 0: noname
   		Rate heterogeneity: FREE (4 cats, mean),  weights&rates: (0.285560,0.000891) (0.000286,0.621615) (0.368221,0.302469) (0.345934,2.567522) 
   		Base frequencies (ML): 0.356677 0.324514 0.077280 0.241530 
   		Substitution rates (ML): 3.399126 47.258812 2.883985 2.563211 33.980661 1.000000 
		Final LogLikelihood: -5706.012476
		AIC score: 11482.024952 / AICc score: 11484.948386 / BIC score: 11650.030904
		Free parameters (model + branch lengths): 35

3. Compare results

	likelihood scores:
	
		grep logLikelihood E*.raxml.log
		
		E1.raxml.log:[00:00:00] Tree #1, final logLikelihood: -6424.202796
		E2.raxml.log:[00:00:00] Tree #1, final logLikelihood: -6272.469067
		E3.raxml.log:[00:00:00] Tree #1, final logLikelihood: -5934.158938
		E4.raxml.log:[00:00:00] Tree #1, final logLikelihood: -5719.411268
		E5.raxml.log:[00:00:00] Tree #1, final logLikelihood: -5709.004812
		E6.raxml.log:[00:00:02] Tree #1, final logLikelihood: -5706.012476
		
	best run is E6 with greatest number of free parameters
	
	AIC scores- penalize parameters (helps to prevent overfitting- lower=better):
	
		grep "AIC score" E*.raxml.log
		
		E1.raxml.log:AIC score: 12890.405591 / AICc score: 12891.460386 / BIC score: 12991.209163
		E2.raxml.log:AIC score: 12588.938133 / AICc score: 12590.094705 / BIC score: 12694.541875
		E3.raxml.log:AIC score: 11926.317875 / AICc score: 11928.322483 / BIC score: 12065.522807
		E4.raxml.log:AIC score: 11498.822535 / AICc score: 11500.967864 / BIC score: 11642.827637
		E5.raxml.log:AIC score: 11478.009623 / AICc score: 11480.154952 / BIC score: 11622.014725
		E6.raxml.log:AIC score: 11482.024952 / AICc score: 11484.948386 / BIC score: 11650.030904
		
	Here E5 is best
	
### Partitioned analysis

1. Overview

So far, we always used single evolutionary model for all alignment sites. This is rather unrealistic biologically, since different genes and/or codon positions typically exhibit distinct substitution patterns. Therefore, it is common to divide alignment sites into subsets or partitions, which can be assigned individual evolutionary models. In the simplest case, we can assign identical models for all partitions, but allow independent model parameter estimates:

Check partitions:

	cat ng-tutorial/prim.part
	
	GTR+G+FO, NADH4=1-504
	GTR+G+FO, tRNA=505-656
	GTR+G+FO, NADH5=657-898
	
An important difference to RAxML/ExaML: rate heterogeneity has to be defined for each partition individually, i.e. we specify GTR+G for every partition with GAMMA model instead of using a global -m GTRGAMMA switch on the command line.

example where we use different substitution matrices and rate heterogeneity models, and also split first gene by codon position:

	cat ng-tutorial/prim2.part
	
	GTR+G+FO, NADH4=1-504/3,2-504/3
	JC+I, tRNA=505-656
	GTR+R4+FC, NADH5=657-898
	HKY, NADH4p3=3-504/3
	
2. Likelihood evaluation with partitioned models

	evaluate likelihood on a fixed tree topology using a partitioned model
	
		./raxml-ng --evaluate --msa ng-tutorial/prim.phy --threads 2 --model ng-tutorial/prim.part --tree T3.raxml.bestTree --prefix P1 -log verbose
		
		Optimized model parameters:
		Partition 0: NADH4
		Speed (ML): 1.045445
   		Rate heterogeneity: GAMMA (4 cats, mean),  alpha: 0.320119 (ML),  weights&rates: (0.250000,0.007069) (0.250000,0.120209) (0.250000,0.628093) (0.250000,3.244629) 
   		Base frequencies (ML): 0.347694 0.343659 0.074230 0.234417 
   		Substitution rates (ML): 1.077048 16.459757 0.874889 0.001000 11.552124 1.000000 
   		Partition 1: tRNA
   		Speed (ML): 0.504859
   		Rate heterogeneity: GAMMA (4 cats, mean),  alpha: 0.300606 (ML),  weights&rates: (0.250000,0.005345) (0.250000,0.104967) (0.250000,0.596819) (0.250000,3.292869) 
   		Base frequencies (ML): 0.363018 0.229565 0.152106 0.255311 
   		Substitution rates (ML): 52.473530 238.241097 34.402497 29.534266 538.267532 1.000000 
   		Partition 2: NADH5
   		Speed (ML): 1.216352
   		Rate heterogeneity: GAMMA (4 cats, mean),  alpha: 0.613206 (ML),  weights&rates: (0.250000,0.055843) (0.250000,0.319534) (0.250000,0.887910) (0.250000,2.736714) 
   		Base frequencies (ML): 0.360985 0.322312 0.061274 0.255429 
   		Substitution rates (ML): 66.839286 1000.000000 56.683373 148.763138 529.121212 1.000000 
		Final LogLikelihood: -5673.021484
		AIC score: 11446.042968 / AICc score: 11452.064220 / BIC score: 11686.051472
		Free parameters (model + branch lengths): 50
		
	model gives independent estimates of parameter values
	
	2nd partition scheme:
	
		./raxml-ng --evaluate --msa ng-tutorial/prim.phy --threads 2 --model ng-tutorial/prim2.part --tree T3.raxml.bestTree --prefix P2 -log verbose
		
	compare:
	
		grep logLikelihood {E5,P1,P2}.raxml.log
		
		E5.raxml.log:[00:00:00] Tree #1, final logLikelihood: -5709.004812
		P1.raxml.log:[00:00:00] Tree #1, final logLikelihood: -5673.021484
		P2.raxml.log:[00:00:00] Tree #1, final logLikelihood: -5673.862974
		
	P1 is best followed by P2
	
	compare with AIC:
	
		grep "Free parameters" {E5,P1,P2}.raxml.log
		
		E5.raxml.log:Free parameters (model + branch lengths): 30
		P1.raxml.log:Free parameters (model + branch lengths): 50
		P2.raxml.log:Free parameters (model + branch lengths): 52
		
		grep "AIC score" {E5,P1,P2}.raxml.log
		
		E5.raxml.log:AIC score: 11478.009623 / AICc score: 11480.154952 / BIC score: 11622.014725
		P1.raxml.log:AIC score: 11446.042968 / AICc score: 11452.064220 / BIC score: 11686.051472
		P2.raxml.log:AIC score: 11451.725948 / AICc score: 11458.249025 / BIC score: 11701.334792
		
	P1 is better
	
### Branch length linkage

	see RAxML tutorial
