# Heavily borrowed from this blog post: https://jcrist.github.io/conda-docker-tips.html
FROM jcrist/alpine-conda:4.6.8

RUN /opt/conda/bin/conda install --yes --freeze-installed \
        pandas==1.0.0 \
        requests==2.22.0 \
        beautifulsoup4==4.8.2 \
        joblib==0.14.1 \
        scrapy==1.6.0 \
        nomkl \
    && /opt/conda/bin/conda clean -afy \
    && find /opt/conda/ -follow -type f -name '*.a' -delete \
    && find /opt/conda/ -follow -type f -name '*.pyc' -delete \
    && find /opt/conda/ -follow -type f -name '*.js.map' -delete
