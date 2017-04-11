FROM oraclelinux:7
MAINTAINER SKAT

ADD schema /tmp/schema
ADD sample /tmp/xml
ADD validate.sh /tmp/validate.sh
RUN chmod a+x /tmp/validate.sh

CMD /tmp/validate.sh


