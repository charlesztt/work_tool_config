FROM charlesztt/haruna_cpu:base

RUN /opt/conda/bin/conda install -c conda-forge langdetect -y && \
    /opt/conda/bin/conda install gensim tensorflow spacy -y && \
    /opt/conda/bin/conda update anaconda -y && \
    /opt/conda/bin/pip install seqeval -U --no-deps && \
    /opt/conda/bin/python -m spacy download en && \
    /opt/conda/bin/conda clean -tipsy &&\
    rm -rf /root/.cache/pip/*

CMD service ssh start && /bin/bash
