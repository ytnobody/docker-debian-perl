FROM debian
MAINTAINER ytnobody <ytnobody@gmail.com>

RUN apt-get update
RUN apt-get install perl curl -y
RUN apt-get clean

RUN curl -L http://xrl.us/cpanm > /usr/bin/cpanm
RUN chmod +x /usr/bin/cpanm

ENTRYPOINT ["/bin/bash"]
