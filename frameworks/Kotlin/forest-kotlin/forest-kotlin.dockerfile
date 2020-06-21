FROM openjdk:11-slim
WORKDIR /app
COPY bin /app/bin
COPY lib /app/lib
CMD ["/app/bin/benchmark-kotlin"]
