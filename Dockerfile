# syntax = docker/dockerfile:1.2
FROM clojure:openjdk-11 AS build

WORKDIR /
COPY . /

# deps.edn uberjar
RUN clj -Sforce -T:build all
# leiningen uberjar. Uncomment if you are using leiningen and deleted your deps.edn file
# RUN lein uberjar

FROM ghcr.io/graalvm/graalvm-ce:21.0.0 AS native
WORKDIR /usr/src/app

COPY --from=build /target/graal-test-standalone.jar /usr/src/app/app.jar
RUN gu install native-image

COPY script/compile.sh .
RUN chmod +x compile.sh
RUN ./compile.sh
