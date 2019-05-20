FROM dclong/jupyterhub

RUN apt-get update -y \
    && apt-get install -y openjdk-8-jdk \
    && apt-get install -y maven gradle \
    && apt-get autoremove \
    && apt-get clean 

COPY scripts /scripts
ENV M2_HOME=/usr/share/maven
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ENV PATH=$PATH:$JAVA_HOME/bin
