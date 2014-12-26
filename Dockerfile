FROM debian
MAINTAINER ytnobody <ytnobody@gmail.com>

RUN apt-get update
RUN apt-get install perl curl make gcc -y
RUN apt-get clean

RUN curl -L http://xrl.us/cpanm > /usr/bin/cpanm
RUN chmod +x /usr/bin/cpanm
ADD run /usr/bin/run
RUN chmod +x /usr/bin/run

ENTRYPOINT /usr/bin/run
