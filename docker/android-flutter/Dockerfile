FROM brisma/android-sdk

MAINTAINER bwnyasse

#######################
###### FLUTTER SETUP
#######################
COPY clone.sh /

RUN /bin/bash /clone.sh

ENV FLUTTER_HOME /usr/local/flutter
ENV PATH $FLUTTER_HOME/bin:$PATH

RUN flutter doctor
RUN flutter upgrade

VOLUME /app
WORKDIR /app

CMD [""]
