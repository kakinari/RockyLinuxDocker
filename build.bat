docker buildx build --platform linux/amd64,linux/arm64 -t kakinari/rocky-ja:8 --push 8
docker buildx build --platform linux/amd64,linux/arm64 -t kakinari/rocky-ja:9 --push 9
docker buildx build --platform linux/amd64,linux/arm64 -t kakinari/rocky-ja:latest --push 9

docker buildx build --platform linux/amd64,linux/arm64 --build-arg TARGET=8 -t kakinari/rocky-ja:8-dev --push dev
docker buildx build --platform linux/amd64,linux/arm64 --build-arg TARGET=9 -t kakinari/rocky-ja:9-dev --push dev

docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8 --build-arg TARGET=1.8.0 -t kakinari/rocky-ja:8-jre8 jre
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8 --build-arg TARGET=11 -t kakinari/rocky-ja:8-jre11 jre
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8 --build-arg TARGET=17 -t kakinari/rocky-ja:8-jre17 jre
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8 --build-arg TARGET=21 -t kakinari/rocky-ja:8-jre21 jre
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9 --build-arg TARGET=1.8.0 -t kakinari/rocky-ja:9-jre8 jre
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9 --build-arg TARGET=11 -t kakinari/rocky-ja:9-jre11 jre
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9 --build-arg TARGET=17 -t kakinari/rocky-ja:9-jre17 jre
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9 --build-arg TARGET=21 -t kakinari/rocky-ja:9-jre21 jre

docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8-jre8 -t kakinari/rocky-ja:8-jdk8 java8
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8-jre11 --build-arg TARGET=11 -t kakinari/rocky-ja:8-jdk11 java
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8-jre17 --build-arg TARGET=17 -t kakinari/rocky-ja:8-jdk17 java
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8-jre21 --build-arg TARGET=21 -t kakinari/rocky-ja:8-jdk21 java
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9-jre8 -t kakinari/rocky-ja:9-jdk8 java8
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9-jre11 --build-arg TARGET=11 -t kakinari/rocky-ja:9-jdk11 java
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9-jre17 --build-arg TARGET=17 -t kakinari/rocky-ja:9-jdk17 java
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9-jre21 --build-arg TARGET=21 -t kakinari/rocky-ja:9-jdk21 java

docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8-jdk8 --build-arg TARGET=1.10.14 -t kakinari/rocky-ja:8-ant-8 ant
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8-jdk11 --build-arg TARGET=1.10.14 -t kakinari/rocky-ja:8-ant-11 ant
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8-jdk17 --build-arg TARGET=1.10.14 -t kakinari/rocky-ja:8-ant-17 ant
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8-jdk21 --build-arg TARGET=1.10.14 -t kakinari/rocky-ja:8-ant-21 ant
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9-jdk8 --build-arg TARGET=1.10.14 -t kakinari/rocky-ja:9-ant-8 ant
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9-jdk11 --build-arg TARGET=1.10.14 -t kakinari/rocky-ja:9-ant-11 ant
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9-jdk17 --build-arg TARGET=1.10.14 -t kakinari/rocky-ja:9-ant-17 ant
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9-jdk21 --build-arg TARGET=1.10.14 -t kakinari/rocky-ja:9-ant-21 ant

docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8-jre8 --build-arg TARGET=10 --build-arg SUB=1.24 -t kakinari/rocky-ja:8-8-tomcat10 tomcat
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8-jre8 --build-arg TARGET=9 --build-arg SUB=0.89 -t kakinari/rocky-ja:8-8-tomcat9 tomcat
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8-jre8 --build-arg TARGET=8 --build-arg SUB=5.100 -t kakinari/rocky-ja:8-8-tomcat8 tomcat

docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8-jre11 --build-arg TARGET=10 --build-arg SUB=1.24 -t kakinari/rocky-ja:8-11-tomcat10 tomcat
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8-jre11 --build-arg TARGET=9 --build-arg SUB=0.89 -t kakinari/rocky-ja:8-11-tomcat9 tomcat
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8-jre11 --build-arg TARGET=8 --build-arg SUB=5.100 -t kakinari/rocky-ja:8-11-tomcat8 tomcat

docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8-jre17 --build-arg TARGET=10 --build-arg SUB=1.24 -t kakinari/rocky-ja:8-17-tomcat10 tomcat
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8-jre17 --build-arg TARGET=9 --build-arg SUB=0.89 -t kakinari/rocky-ja:8-17-tomcat9 tomcat
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8-jre17 --build-arg TARGET=8 --build-arg SUB=5.100 -t kakinari/rocky-ja:8-17-tomcat8 tomcat

docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8-jre21 --build-arg TARGET=10 --build-arg SUB=1.24 -t kakinari/rocky-ja:8-21-tomcat10 tomcat
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8-jre21 --build-arg TARGET=9 --build-arg SUB=0.89 -t kakinari/rocky-ja:8-21-tomcat9 tomcat
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8-jre21 --build-arg TARGET=8 --build-arg SUB=5.100 -t kakinari/rocky-ja:8-21-tomcat8 tomcat

docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9-jre8 --build-arg TARGET=10 --build-arg SUB=1.24 -t kakinari/rocky-ja:9-8-tomcat10 tomcat
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9-jre8 --build-arg TARGET=9 --build-arg SUB=0.89 -t kakinari/rocky-ja:9-8-tomcat9 tomcat
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9-jre8 --build-arg TARGET=8 --build-arg SUB=5.100 -t kakinari/rocky-ja:9-8-tomcat8 tomcat

docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9-jre11 --build-arg TARGET=10 --build-arg SUB=1.24 -t kakinari/rocky-ja:9-11-tomcat10 tomcat
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9-jre11 --build-arg TARGET=9 --build-arg SUB=0.89 -t kakinari/rocky-ja:9-11-tomcat9 tomcat
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9-jre11 --build-arg TARGET=8 --build-arg SUB=5.100 -t kakinari/rocky-ja:9-11-tomcat8 tomcat

docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9-jre17 --build-arg TARGET=10 --build-arg SUB=1.24 -t kakinari/rocky-ja:9-17-tomcat10 tomcat
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9-jre17 --build-arg TARGET=9 --build-arg SUB=0.89 -t kakinari/rocky-ja:9-17-tomcat9 tomcat
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9-jre17 --build-arg TARGET=8 --build-arg SUB=5.100 -t kakinari/rocky-ja:9-17-tomcat8 tomcat

docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9-jre21 --build-arg TARGET=10 --build-arg SUB=1.24 -t kakinari/rocky-ja:9-21-tomcat10 tomcat
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9-jre21 --build-arg TARGET=9 --build-arg SUB=0.89 -t kakinari/rocky-ja:9-21-tomcat9 tomcat
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9-jre21 --build-arg TARGET=8 --build-arg SUB=5.100 -t kakinari/rocky-ja:9-21-tomcat8 tomcat
