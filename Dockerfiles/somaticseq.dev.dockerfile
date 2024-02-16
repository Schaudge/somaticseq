FROM ubuntu:24.04

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt update && \
    apt -y install r-base python3 python3-pip bedtools git wget default-jre && \
    apt-get clean
RUN R -e "install.packages('ada', repos = 'http://cran.rstudio.com/')"
RUN cd /opt && \
    git clone https://github.com/bioinform/somaticseq && \
    cd somaticseq && \
    git checkout dev && \
    pip install --break-system-packages .
