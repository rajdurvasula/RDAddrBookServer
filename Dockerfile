FROM maven:3.5.4-jdk8
LABEL maitainer="raj.durvasula@gmail.com"

ENV APP_PORT 9080

WORKDIR /opt/src/app

COPY src .

RUN mvn clean package

EXPOSE $APP_PORT

ENTRYPOINT [ "java", "-jar", "target/RDAddrBookServer-0.0.1-SNAPSHOT-spring-boot.jar" ]

