FROM schnell18/zulu-java:alpine-jre8-0.2.0

ADD rocketmq-dashboard-*.jar rocketmq-dashboard.jar
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN touch /rocketmq-dashboard.jar
ENTRYPOINT ["/entrypoint.sh"]

