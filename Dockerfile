FROM dclong/jupyterhub-jdk

RUN apt-get update -y \
    && apt-get install -y \
        openjdk-8-jdk maven gradle \
    && apt-get autoremove \
    && apt-get autoclean 

COPY scripts /scripts
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ENV PATH=$PATH:$JAVA_HOME/bin
