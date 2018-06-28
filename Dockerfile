FROM openjdk:10.0.1-jdk

MAINTAINER Burgaud Valentin "xharos@islandswars.fr"

WORKDIR /prod

ADD build/libs/islands-ineundo.jar islands-ineundo.jar
ADD .scripts/init.sh init.sh

RUN chmod +x init.sh

ENV JVM_OPTS -Xmx1024M -Xms1024M

CMD ["sh", "./init.sh"]