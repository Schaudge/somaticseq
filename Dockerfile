FROM ubuntu:18.04

MAINTAINER Li Tai Fang <li_tai.fang@roche.com>
 
RUN export DEBIAN_FRONTEND=noninteractive && apt update && apt -y install r-base python3 python3-pip bedtools git wget openjdk-8-jdk vcftools tabix && apt-get clean
RUN pip3 install cython regex pysam numpy scipy pandas xlrd
RUN R -e "install.packages('ada', repos = 'http://cran.rstudio.com/')"
RUN cd /opt/ && wget https://www.dropbox.com/s/wbcy4egca3ersl3/GATK-3.4-open-3.1.0-SNAPSHOT.tar && tar -xvf GATK-3.4-open-3.1.0-SNAPSHOT.tar && rm GATK-3.4-open-3.1.0-SNAPSHOT.tar && ln -s GATK-3.4-open-3.1.0-SNAPSHOT GATK

RUN cd /opt && git clone https://github.com/bioinform/somaticseq && cd somaticseq && git checkout seqc2

# RUN cd /opt && wget https://github.com/bioinform/somaticseq/archive/seqc2_v1.2.tar.gz && tar -vxf seqc2_v1.2.tar.gz && ln -s somaticseq-seqc2_v1.2 somaticseq
