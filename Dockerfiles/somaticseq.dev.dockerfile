FROM lethalfang/somaticseq:base-1.6
RUN cd /opt && git clone https://github.com/bioinform/somaticseq && cd somaticseq && git checkout dev && ./setup.py install
