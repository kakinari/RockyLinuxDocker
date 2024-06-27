#!/bin/bash
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8-jdk11 --build-arg TARGET=1.10.14 -t kakinari/rocky-ja:8-ant-11 .
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8-jdk17 --build-arg TARGET=1.10.14 -t kakinari/rocky-ja:8-ant-17 .
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=8-jdk21 --build-arg TARGET=1.10.14 -t kakinari/rocky-ja:8-ant-21 .
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9-jdk11 --build-arg TARGET=1.10.14 -t kakinari/rocky-ja:9-ant-11 .
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9-jdk17 --build-arg TARGET=1.10.14 -t kakinari/rocky-ja:9-ant-17 .
docker buildx build --platform linux/amd64,linux/arm64 --push --build-arg BASE=9-jdk21 --build-arg TARGET=1.10.14 -t kakinari/rocky-ja:9-ant-21 .
