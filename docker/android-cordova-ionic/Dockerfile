FROM bwnyasse/android-cordova

MAINTAINER bwnyasse

ENV TYPESCRIPT_VERSION=2.2.1 \
    IONIC_VERSION=2.2.1 
    
EXPOSE 8100 35729

RUN apt-get update && \
    apt-get install -y ruby && \
    #https://github.com/npm/npm/issues/13323
    npm install -g minimatch@3.0.2 && \
    npm install -g -y ionic@"$IONIC_VERSION" && \
    npm install -g -y typescript@"$TYPESCRIPT_VERSION" && \
    npm install -g -y gulp && \
    npm install -g cordova && \
    npm cache clear
    
CMD ["/bin/bash"]
