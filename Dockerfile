FROM java:8-jre-alpine

ENV TABULA_RELEASE=1.1.1
RUN apk add --no-cache curl && \
	curl -Lo tabula.jar https://github.com/tabulapdf/tabula-java/releases/download/tabula-${TABULA_RELEASE}/tabula-${TABULA_RELEASE}-SNAPSHOT-jar-with-dependencies.jar

ENTRYPOINT ["java", "-jar", "./tabula.jar"]
