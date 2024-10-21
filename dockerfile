# 기반 이미지로 adoptopenjdk:11을 사용한다.
FROM adoptopenjdk:11-jre-hotspot

# JAR_FILE 환경 변수를 설정한다.
ARG JAR_FILE=target/*.jar

# JAR_FILE을 app.jar로 복사한다.
COPY ${JAR_FILE} app.jar

# app.jar를 실행한다.
ENTRYPOINT ["java","-jar","/app.jar"]
