FROM oraclelinux:7
MAINTAINER SKAT

ADD schema /tmp/schema
ADD sample /tmp/sample
ADD validate.sh /tmp/validate.sh
RUN chmod a+x /tmp/validate.sh
WORKDIR /tmp

CMD "./validate.sh"


