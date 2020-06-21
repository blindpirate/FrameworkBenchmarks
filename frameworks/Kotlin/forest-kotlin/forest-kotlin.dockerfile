FROM openjdk:11-slim
WORKDIR /app
COPY bin /app/bin
COPY lib /app/lib
ENV JAVA_OPTS="-XX:+UnlockExperimentalVMOptions -XX:+UseZGC -Dvertx.disableMetrics=true -Dvertx.disableH2c=true -Dvertx.disableWebsockets=true -Dvertx.flashPolicyHandler=false -Dvertx.threadChecks=false -Dvertx.disableContextTimings=true -Dvertx.disableTCCL=true -Dvertx.disableHttpHeadersValidation=true"
CMD ["/app/bin/benchmark-kotlin"]
