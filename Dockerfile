# FROM maven:3.6.1-jdk-8-alpine as build
FROM mcr.microsoft.com/java/maven:8-zulu-debian10 as build
WORKDIR /app

COPY . .

RUN mvn -e -B package -DskipTests=true
#RUN --mount=type=cache,target=/root/.m2 mvn -e -B package -DskipTests=true

FROM schnell18/zulu-java:alpine-jre17-0.1.0

VOLUME /tmp
COPY --from=build /app/target/rocketmq-dashboard-*.jar /rocketmq-dashboard.jar
COPY src/main/docker/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
