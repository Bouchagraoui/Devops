# Étape 1 : Image de base
FROM openjdk:17-jdk-slim

# Étape 2 : Copier le JAR dans le conteneur
COPY target/student-management-0.0.1-SNAPSHOT.jar app.jar

# Étape 3 : Exposer le port de ton application
EXPOSE 8088

# Étape 4 : Commande de lancement
ENTRYPOINT ["java","-jar","/app.jar"]
