FROM oraclelinux:7
MAINTAINER Christopher Derek Curry

ADD schema /tmp/schema
ADD xml /tmp/xml
RUN ls -la /tmp/schema
ADD validate.sh /tmp/validate.sh
RUN chmod a+x /tmp/validate.sh

CMD /tmp/validate.sh


