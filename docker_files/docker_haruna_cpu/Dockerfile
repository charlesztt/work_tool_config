FROM ubuntu:latest

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV PATH /opt/conda/bin:$PATH

RUN apt update && \
    apt upgrade -y && \
    apt install openssh-server -y && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

RUN useradd ubuntu -d /home/ubuntu && \
    echo "ubuntu:ubuntu" | chpasswd && \
    mkdir /home/ubuntu && \
    chown ubuntu:ubuntu /home/ubuntu

RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh && \
    /bin/bash ~/miniconda.sh -b -p /opt/conda && \
    rm ~/miniconda.sh && \
    ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh && \
    echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc && \
    echo "conda activate base" >> ~/.bashrc

RUN /opt/conda/bin/conda install -c conda-forge tensorflow-hub -y && \
    /opt/conda/bin/conda install gensim tensorflow spacy anaconda -y && \
    /opt/conda/bin/python -m spacy download en && \
    /opt/conda/bin/pip install seqeval langdetect rdflib -U --no-deps &&\
    /opt/conda/bin/conda clean -tipsy &&\
    rm -rf /root/.cache/pip/*

EXPOSE 22
CMD service ssh start && /bin/bash
