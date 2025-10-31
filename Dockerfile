FROM openjdk:8
EXPOSE 8080
ADD target/springboot-cicd-example.jar springboot-cicd-example.jar
ENTRYPOINT ["java", "-jar","/springboot-cicd-example.jar"]