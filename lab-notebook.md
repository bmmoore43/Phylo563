
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
