FROM eclipse-temurin:17
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
COPY "build/libs/pdf-sign-0.0.1-SNAPSHOT.jar" pdfsignapi.jar
EXPOSE 8080
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar pdfsignapi.jar
