FROM dclong/jupyterhub

RUN apt-get update -y \
    && apt-get install -y \
        openjdk-11-jdk maven gradle \
    && apt-get autoremove \
    && apt-get autoclean 

COPY scripts /scripts
ENV M2_HOME=/usr/share/maven
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH=$PATH:$JAVA_HOME/bin
