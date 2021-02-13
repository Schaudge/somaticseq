# SEQC2 branch

* This is a special release for SEQC-II cancer reference samples projects. This release is based on SomaticSeq v2.8.1.
* Many custom scripts were created here to complete the [SEQC-II](https://www.fda.gov/science-research/bioinformatics-tools/microarraysequencing-quality-control-maqcseqc#MAQC_IV) project.
* Analysis documentation and latest updates about the project can also be found at [**https://sites.google.com/view/seqc2**](https://sites.google.com/view/seqc2). 
* This is the [**latest high-confidence reference call set**](http://bit.ly/somatic_call_set).
* Raw sequencing data generated by the working group were deposited into [**NCBI SRA database: SRP162370**](https://trace.ncbi.nlm.nih.gov/Traces/sra/?study=SRP162370)
* For regular uses of SomaticSeq, please use Version 3+ ([master](https://github.com/bioinform/somaticseq)) branch.

# SomaticSeq
* SomaticSeq is an ensemble caller that has the ability to use machine learning to filter out false positives. The detailed documentation is included in the package, located in [docs/Manual.pdf](docs/Manual.pdf "User Manual"). A quick guide can also be found [here](http://bioinform.github.io/somaticseq/).
* SomaticSeq's open-access paper: [Fang LT, Afshar PT, Chhibber A, et al. An ensemble approach to accurately detect somatic mutations using SomaticSeq. Genome Biol. 2015;16:197](http://dx.doi.org/10.1186/s13059-015-0758-2 "Fang LT, Afshar PT, Chhibber A, et al. An ensemble approach to accurately detect somatic mutations using SomaticSeq. Genome Biol. 2015;16:197.").


# SEQC-II Custom Scripts
* The commands we used to generate the latest reference call set is found [here](utilities/makeSeqc2HighConfidenceCallSets/makeTruthSet.sh). The steps are also documented [here](https://sites.google.com/view/seqc2/home/data-analysis/high-confidence-somatic-snv-and-indel-v1-2le.com/view/seqc2/home/data-analysis/high-confidence-somatic-snv-and-indel-v1-2?authuser=0).
* [seqc2_calculateProbablyOfLowVafCalls.py](utilities/seqc2_calculateProbablyOfLowVafCalls.py) calculates the binomial probability that a somatic mutation is missed in our high-confidence regions.

