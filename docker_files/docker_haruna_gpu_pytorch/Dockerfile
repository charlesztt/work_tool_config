FROM charlesztt/haruna_gpu:base

RUN /opt/conda/bin/conda install -c conda-forge langdetect -y && \
    /opt/conda/bin/conda install pytorch torchvision cudatoolkit=10.0 -c pytorch && \
    /opt/conda/bin/conda install gensim spacy -y && \
    /opt/conda/bin/conda update anaconda -y && \
    /opt/conda/bin/pip install seqeval -U --no-deps && \
    /opt/conda/bin/python -m spacy download en && \
    /opt/conda/bin/conda clean -tipsy &&\
    rm -rf /root/.cache/pip/*

CMD service ssh start && /bin/bash
