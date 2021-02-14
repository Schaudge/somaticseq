# SEQC2 branch

* This is a special release for the SEQC-II cancer reference samples project, which was based on SomaticSeq v2.8.1.
* Many custom scripts were created here to complete the [SEQC-II](https://www.fda.gov/science-research/bioinformatics-tools/microarraysequencing-quality-control-maqcseqc#MAQC_IV) project.
* Analysis documentation and latest updates about the SEQC-II somatic mutation project can be found at [**https://sites.google.com/view/seqc2**](https://sites.google.com/view/seqc2).
* The [**latest high-confidence reference call set**](http://bit.ly/somatic_call_set) can be found at the NCBI FTP site.
  * The full address for releases: ftp://ftp-trace.ncbi.nlm.nih.gov/ReferenceSamples/seqc/Somatic_Mutation_WG/release
* Raw sequencing data generated by the working group were deposited into [**NCBI SRA database: SRP162370**](https://trace.ncbi.nlm.nih.gov/Traces/sra/?study=SRP162370)
* For regular uses of SomaticSeq, please use Version 3+ ([master](https://github.com/bioinform/somaticseq)) branch.

# SEQC-II Custom Scripts
* The script we used to generate the latest reference call set is [here](utilities/makeSeqc2HighConfidenceCallSets/makeTruthSet.sh). The steps are documented with greater details [here](https://sites.google.com/view/seqc2/home/data-analysis/high-confidence-somatic-snv-an>
* [seqc2_calculateProbablyOfLowVafCalls.py](utilities/seqc2_calculateProbablyOfLowVafCalls.py) calculates the binomial probability that a somatic mutation is missed in our high-confidence regions.

# SomaticSeq
* SomaticSeq is an ensemble caller that has the ability to use machine learning to filter out false positives. The detailed documentation is included in the package, located in [docs/Manual.pdf](docs/Manual.pdf "User Manual"). A quick guide can also be found [here](http://bioinform.github.io/somaticseq/).
* SomaticSeq's open-access paper: [Fang LT, Afshar PT, Chhibber A, et al. An ensemble approach to accurately detect somatic mutations using SomaticSeq. Genome Biol. 2015;16:197](http://dx.doi.org/10.1186/s13059-015-0758-2 "Fang LT, Afshar PT, Chhibber A, et al. An ensemble approach to accurately detect somatic mutations using SomaticSeq. Genome Biol. 2015;16:197.").

# Installation requirement for this package
Python 3, plus regex, pysam, numpy, and scipy libraries
R, plus ada library
BEDTools
Optional: dbSNP VCF file (if you want to use dbSNP membership as a feature)
At least one of the callers we have incorporated, i.e., MuTect2/MuTect/Indelocator, VarScan2, JointSNVMix2, SomaticSniper, VarDict, MuSE, LoFreq, Scalpel, Strelka2, and/or TNscope.
