# graal compilation test

This project shows the errors, occuring while compiling a standard `kit-clj` project with graal.

## setup

Run `docker build --progress=plain .` to build the project and run the compilation. All errors are listed in the output.

## example output 

<details>
    <summary>Click to expand!</summary>

```
❯ docker build --progress=plain .
#1 [internal] load build definition from Dockerfile
#1 sha256:89766be3c4b7ce411194dbc9becce58ca129b32d0800aeec66792452e0e0078f
#1 transferring dockerfile: 527B done
#1 DONE 0.0s

#2 [internal] load .dockerignore
#2 sha256:c6af89c1eb6586f3483e1921eaf5486ac3fb2ff5732e8ab309466ab4ff87099e
#2 transferring context: 2B done
#2 DONE 0.0s

#3 resolve image config for docker.io/docker/dockerfile:1.2
#3 sha256:b239a20f31d7f1e5744984df3d652780f1a82c37554dd73e1ad47c8eb05b0d69
#3 ...

#4 [auth] docker/dockerfile:pull token for registry-1.docker.io
#4 sha256:0388473373ae0c1e5e7d4ac8b67679c55062f923a2e8b6424d1867c7506dfef5
#4 DONE 0.0s

#3 resolve image config for docker.io/docker/dockerfile:1.2
#3 sha256:b239a20f31d7f1e5744984df3d652780f1a82c37554dd73e1ad47c8eb05b0d69
#3 DONE 1.6s

#5 docker-image://docker.io/docker/dockerfile:1.2@sha256:e2a8561e419ab1ba6b2fe6cbdf49fd92b95912df1cf7d313c3e2230a333fdbcc
#5 sha256:37e0c519b0431ef5446f4dd0a4588ba695f961e9b0e800cd8c7f5ba6165af727
#5 CACHED

#7 [internal] load metadata for ghcr.io/graalvm/graalvm-ce:21.0.0
#7 sha256:f7464abba1aa987127a685241a05adaf0f4b38c807c59d4ae01bef2830ed8f67
#7 ...

#8 [auth] library/clojure:pull token for registry-1.docker.io
#8 sha256:231884e05af012d4d08a316aecd8953e50cf7f5c89428d6a0300a810db998acb
#8 DONE 0.0s

#6 [internal] load metadata for docker.io/library/clojure:openjdk-11
#6 sha256:951d2b6f3e47ed5cea9eb73af4e98ba0fbb3921361a81e9aac7f7d4b18065139
#6 DONE 0.9s

#7 [internal] load metadata for ghcr.io/graalvm/graalvm-ce:21.0.0
#7 sha256:f7464abba1aa987127a685241a05adaf0f4b38c807c59d4ae01bef2830ed8f67
#7 DONE 0.9s

#9 [native 1/7] FROM ghcr.io/graalvm/graalvm-ce:21.0.0@sha256:48626d4911e679c63017f95dc2773a9b155ea639952e5c5277ffe27b9e08d4e0
#9 sha256:8f4d57d35efd3980db6903d59bf4305a0766a46225bba3e5f38ee33b9486fb02
#9 DONE 0.0s

#11 [build 1/4] FROM docker.io/library/clojure:openjdk-11@sha256:e51f484b1348ae6fe754e5303994cd65e3e1f30020956977ae62df70499e8903
#11 sha256:b97af024c467af12830ac9b2b6c9ce4872ee5d637911793e1374c98949d1e8ab
#11 DONE 0.0s

#10 [native 2/7] WORKDIR /usr/src/app
#10 sha256:f2c4c3fe44b7a6329f65472e45c890bcb41f645be97d9680beb0a537153f90c4
#10 CACHED

#12 [internal] load build context
#12 sha256:676173337b08c13bec24c818dcf8dd509b4019d864e97aa5b3548b94c59930a3
#12 transferring context: 106.34MB 1.6s done
#12 DONE 1.6s

#11 [build 1/4] FROM docker.io/library/clojure:openjdk-11@sha256:e51f484b1348ae6fe754e5303994cd65e3e1f30020956977ae62df70499e8903
#11 sha256:b97af024c467af12830ac9b2b6c9ce4872ee5d637911793e1374c98949d1e8ab
#11 CACHED

#13 [build 2/4] COPY . /
#13 sha256:b3b2802914978121b45bbe8aeeafb810a2a0869d7d881dda4fcd8b55542f21af
#13 DONE 0.3s

#14 [build 3/4] RUN clj -Sforce -T:build all
#14 sha256:857b0f4cbf93bfc908d46a94107428416205cb4f1b6e3fd85ace186322af7674
#14 1.660 Cloning: https://github.com/clojure/tools.build.git
#14 3.089 Checking out: https://github.com/clojure/tools.build.git at 7ef409b370312c8819c587aa648177331602fa44
#14 3.965 Downloading: org/clojure/tools.deps.alpha/0.12.1053/tools.deps.alpha-0.12.1053.pom from central
#14 3.965 Downloading: org/slf4j/slf4j-nop/1.7.30/slf4j-nop-1.7.30.pom from central
#14 3.965 Downloading: org/clojure/tools.namespace/1.0.0/tools.namespace-1.0.0.pom from central
#14 4.039 Downloading: org/clojure/pom.contrib/0.2.2/pom.contrib-0.2.2.pom from central
#14 4.040 Downloading: org/slf4j/slf4j-parent/1.7.30/slf4j-parent-1.7.30.pom from central
#14 4.111 Downloading: weavejester/dependency/0.2.1/dependency-0.2.1.pom from clojars
#14 4.112 Downloading: org/clojure/pom.contrib/1.1.0/pom.contrib-1.1.0.pom from central
#14 4.561 Downloading: slipset/deps-deploy/0.1.5/deps-deploy-0.1.5.pom from clojars
#14 5.032 Downloading: org/clojure/data.xml/0.2.0-alpha5/data.xml-0.2.0-alpha5.pom from central
#14 5.037 Downloading: org/slf4j/slf4j-nop/2.0.0-alpha1/slf4j-nop-2.0.0-alpha1.pom from central
#14 5.042 Downloading: org/apache/maven/resolver/maven-resolver-api/1.6.3/maven-resolver-api-1.6.3.pom from central
#14 5.042 Downloading: com/cemerick/pomegranate/1.1.0/pomegranate-1.1.0.pom from central
#14 5.065 Downloading: s3-wagon-private/s3-wagon-private/1.3.2/s3-wagon-private-1.3.2.pom from clojars
#14 5.073 Downloading: org/apache/maven/resolver/maven-resolver-connector-basic/1.6.3/maven-resolver-connector-basic-1.6.3.pom from central
#14 5.077 Downloading: org/apache/maven/resolver/maven-resolver-spi/1.6.3/maven-resolver-spi-1.6.3.pom from central
#14 5.079 Downloading: org/slf4j/slf4j-parent/2.0.0-alpha1/slf4j-parent-2.0.0-alpha1.pom from central
#14 5.081 Downloading: org/apache/maven/resolver/maven-resolver-impl/1.6.3/maven-resolver-impl-1.6.3.pom from central
#14 5.084 Downloading: org/apache/maven/resolver/maven-resolver/1.6.3/maven-resolver-1.6.3.pom from central
#14 5.084 Downloading: org/clojure/pom.contrib/0.0.20/pom.contrib-0.0.20.pom from central
#14 5.088 Downloading: org/apache/maven/resolver/maven-resolver-util/1.6.3/maven-resolver-util-1.6.3.pom from central
#14 5.107 Downloading: com/amazonaws/aws-java-sdk-bom/1.11.337/aws-java-sdk-bom-1.11.337.pom from central
#14 5.129 Downloading: org/apache/maven/resolver/maven-resolver-transport-file/1.6.3/maven-resolver-transport-file-1.6.3.pom from central
#14 5.135 Downloading: org/sonatype/oss/oss-parent/5/oss-parent-5.pom from central
#14 5.142 Downloading: org/apache/maven/maven-parent/34/maven-parent-34.pom from central
#14 5.166 Downloading: com/amazonaws/aws-java-sdk-pom/1.11.337/aws-java-sdk-pom-1.11.337.pom from central
#14 5.176 Downloading: org/apache/maven/resolver/maven-resolver-transport-http/1.6.3/maven-resolver-transport-http-1.6.3.pom from central
#14 5.190 Downloading: org/apache/apache/23/apache-23.pom from central
#14 5.214 Downloading: org/apache/maven/maven-resolver-provider/3.8.2/maven-resolver-provider-3.8.2.pom from central
#14 5.235 Downloading: org/apache/maven/maven-core/3.8.2/maven-core-3.8.2.pom from central
#14 5.240 Downloading: org/clojure/data.xml/0.2.0-alpha6/data.xml-0.2.0-alpha6.pom from central
#14 5.246 Downloading: org/clojure/tools.gitlibs/2.3.167/tools.gitlibs-2.3.167.pom from central
#14 5.247 Downloading: org/clojure/tools.cli/1.0.206/tools.cli-1.0.206.pom from central
#14 5.264 Downloading: org/apache/maven/maven/3.8.2/maven-3.8.2.pom from central
#14 5.267 Downloading: com/cognitect/aws/api/0.8.524/api-0.8.524.pom from central
#14 5.287 Downloading: com/cognitect/aws/endpoints/1.1.12.69/endpoints-1.1.12.69.pom from central
#14 5.287 Downloading: com/cognitect/aws/s3/814.2.991.0/s3-814.2.991.0.pom from central
#14 5.298 Downloading: org/clojure/pom.contrib/1.0.0/pom.contrib-1.0.0.pom from central
#14 5.305 Downloading: javax/inject/javax.inject/1/javax.inject-1.pom from central
#14 5.312 Downloading: org/clojure/java.classpath/1.0.0/java.classpath-1.0.0.pom from central
#14 5.313 Downloading: org/clojure/tools.reader/1.3.2/tools.reader-1.3.2.pom from central
#14 5.327 Downloading: org/slf4j/slf4j-api/2.0.0-alpha1/slf4j-api-2.0.0-alpha1.pom from central
#14 5.336 Downloading: org/springframework/build/aws-maven/4.8.0.RELEASE/aws-maven-4.8.0.RELEASE.pom from central
#14 5.341 Downloading: com/amazonaws/aws-java-sdk-s3/1.11.337/aws-java-sdk-s3-1.11.337.pom from central
#14 5.351 Downloading: com/fasterxml/jackson/core/jackson-core/2.6.7/jackson-core-2.6.7.pom from central
#14 5.351 Downloading: com/fasterxml/jackson/core/jackson-databind/2.6.7.1/jackson-databind-2.6.7.1.pom from central
#14 5.358 Downloading: org/apache/maven/resolver/maven-resolver-transport-wagon/1.0.3/maven-resolver-transport-wagon-1.0.3.pom from central
#14 5.362 Downloading: org/tcrawley/dynapath/1.0.0/dynapath-1.0.0.pom from central
#14 5.373 Downloading: org/apache/maven/wagon/wagon-provider-api/3.0.0/wagon-provider-api-3.0.0.pom from central
#14 5.378 Downloading: org/apache/maven/wagon/wagon-http/3.0.0/wagon-http-3.0.0.pom from central
#14 5.391 Downloading: org/apache/httpcomponents/httpclient/4.5.3/httpclient-4.5.3.pom from central
#14 5.391 Downloading: com/fasterxml/jackson/jackson-parent/2.6.2/jackson-parent-2.6.2.pom from central
#14 5.407 Downloading: org/apache/maven/resolver/maven-resolver/1.0.3/maven-resolver-1.0.3.pom from central
#14 5.415 Downloading: org/apache/commons/commons-lang3/3.8.1/commons-lang3-3.8.1.pom from central
#14 5.416 Downloading: org/apache/maven/wagon/wagon/3.0.0/wagon-3.0.0.pom from central
#14 5.421 Downloading: org/apache/maven/wagon/wagon-providers/3.0.0/wagon-providers-3.0.0.pom from central
#14 5.432 Downloading: org/apache/httpcomponents/httpcomponents-client/4.5.3/httpcomponents-client-4.5.3.pom from central
#14 5.433 Downloading: com/fasterxml/oss-parent/24/oss-parent-24.pom from central
#14 5.439 Downloading: org/apache/httpcomponents/httpclient/4.5.12/httpclient-4.5.12.pom from central
#14 5.445 Downloading: org/apache/maven/maven-parent/27/maven-parent-27.pom from central
#14 5.475 Downloading: org/apache/httpcomponents/project/7/project-7.pom from central
#14 5.477 Downloading: org/apache/httpcomponents/httpcomponents-client/4.5.12/httpcomponents-client-4.5.12.pom from central
#14 5.482 Downloading: org/apache/commons/commons-parent/47/commons-parent-47.pom from central
#14 5.483 Downloading: org/apache/httpcomponents/httpcore/4.4.13/httpcore-4.4.13.pom from central
#14 5.498 Downloading: org/apache/apache/17/apache-17.pom from central
#14 5.519 Downloading: org/slf4j/jcl-over-slf4j/1.7.30/jcl-over-slf4j-1.7.30.pom from central
#14 5.521 Downloading: org/apache/httpcomponents/httpcomponents-parent/11/httpcomponents-parent-11.pom from central
#14 5.525 Downloading: org/apache/apache/13/apache-13.pom from central
#14 5.528 Downloading: org/apache/httpcomponents/httpcomponents-core/4.4.13/httpcomponents-core-4.4.13.pom from central
#14 5.541 Downloading: org/apache/maven/maven-model/3.8.2/maven-model-3.8.2.pom from central
#14 5.552 Downloading: org/apache/apache/19/apache-19.pom from central
#14 5.560 Downloading: org/apache/maven/maven-model-builder/3.8.2/maven-model-builder-3.8.2.pom from central
#14 5.584 Downloading: org/apache/maven/maven-repository-metadata/3.8.2/maven-repository-metadata-3.8.2.pom from central
#14 5.589 Downloading: org/apache/apache/21/apache-21.pom from central
#14 5.610 Downloading: org/codehaus/plexus/plexus-utils/3.2.1/plexus-utils-3.2.1.pom from central
#14 5.617 Downloading: org/apache/maven/maven-settings-builder/3.8.2/maven-settings-builder-3.8.2.pom from central
#14 5.617 Downloading: org/apache/maven/maven-settings/3.8.2/maven-settings-3.8.2.pom from central
#14 5.620 Downloading: org/apache/maven/maven-builder-support/3.8.2/maven-builder-support-3.8.2.pom from central
#14 5.634 Downloading: org/apache/maven/maven-plugin-api/3.8.2/maven-plugin-api-3.8.2.pom from central
#14 5.634 Downloading: org/apache/maven/maven-artifact/3.8.2/maven-artifact-3.8.2.pom from central
#14 5.655 Downloading: org/apache/maven/shared/maven-shared-utils/3.3.4/maven-shared-utils-3.3.4.pom from central
#14 5.656 Downloading: org/codehaus/plexus/plexus/5.1/plexus-5.1.pom from central
#14 5.659 Downloading: org/eclipse/sisu/org.eclipse.sisu.inject/0.3.4/org.eclipse.sisu.inject-0.3.4.pom from central
#14 5.659 Downloading: org/eclipse/sisu/org.eclipse.sisu.plexus/0.3.4/org.eclipse.sisu.plexus-0.3.4.pom from central
#14 5.664 Downloading: com/google/inject/guice/4.2.2/guice-4.2.2.pom from central
#14 5.686 Downloading: org/codehaus/plexus/plexus-classworlds/2.6.0/plexus-classworlds-2.6.0.pom from central
#14 5.696 Downloading: org/eclipse/sisu/sisu-inject/0.3.4/sisu-inject-0.3.4.pom from central
#14 5.699 Downloading: org/eclipse/sisu/sisu-plexus/0.3.4/sisu-plexus-0.3.4.pom from central
#14 5.699 Downloading: org/apache/maven/shared/maven-shared-components/34/maven-shared-components-34.pom from central
#14 5.702 Downloading: com/google/inject/guice-parent/4.2.2/guice-parent-4.2.2.pom from central
#14 5.702 Downloading: org/codehaus/plexus/plexus-component-annotations/2.1.0/plexus-component-annotations-2.1.0.pom from central
#14 5.714 Downloading: org/clojure/data.codec/0.1.0/data.codec-0.1.0.pom from central
#14 5.735 Downloading: org/clojure/data.json/1.0.0/data.json-1.0.0.pom from central
#14 5.736 Downloading: org/sonatype/oss/oss-parent/9/oss-parent-9.pom from central
#14 5.742 Downloading: org/clojure/tools.logging/1.1.0/tools.logging-1.1.0.pom from central
#14 5.745 Downloading: org/codehaus/plexus/plexus-containers/2.1.0/plexus-containers-2.1.0.pom from central
#14 5.745 Downloading: com/google/google/5/google-5.pom from central
#14 5.755 Downloading: org/clojure/pom.contrib/0.0.25/pom.contrib-0.0.25.pom from central
#14 5.776 Downloading: com/cognitect/http-client/0.1.106/http-client-0.1.106.pom from central
#14 5.788 Downloading: org/clojure/core.async/1.3.622/core.async-1.3.622.pom from central
#14 5.789 Downloading: ch/qos/logback/logback-classic/1.0.12/logback-classic-1.0.12.pom from central
#14 5.789 Downloading: com/amazonaws/aws-java-sdk-kms/1.11.337/aws-java-sdk-kms-1.11.337.pom from central
#14 5.801 Downloading: com/amazonaws/aws-java-sdk-core/1.11.337/aws-java-sdk-core-1.11.337.pom from central
#14 5.802 Downloading: com/amazonaws/jmespath-java/1.11.337/jmespath-java-1.11.337.pom from central
#14 5.802 Downloading: com/fasterxml/jackson/core/jackson-annotations/2.6.0/jackson-annotations-2.6.0.pom from central
#14 5.837 Downloading: ch/qos/logback/logback-parent/1.0.12/logback-parent-1.0.12.pom from central
#14 5.838 Downloading: org/codehaus/plexus/plexus-interpolation/1.25/plexus-interpolation-1.25.pom from central
#14 5.838 Downloading: com/fasterxml/jackson/jackson-parent/2.6.1/jackson-parent-2.6.1.pom from central
#14 5.841 Downloading: org/apache/maven/wagon/wagon-http-shared/3.0.0/wagon-http-shared-3.0.0.pom from central
#14 5.841 Downloading: commons-codec/commons-codec/1.11/commons-codec-1.11.pom from central
#14 5.856 Downloading: org/sonatype/plexus/plexus-sec-dispatcher/1.4/plexus-sec-dispatcher-1.4.pom from central
#14 5.877 Downloading: javax/enterprise/cdi-api/1.0/cdi-api-1.0.pom from central
#14 5.877 Downloading: commons-io/commons-io/2.6/commons-io-2.6.pom from central
#14 5.881 Downloading: aopalliance/aopalliance/1.0/aopalliance-1.0.pom from central
#14 5.881 Downloading: com/fasterxml/oss-parent/23/oss-parent-23.pom from central
#14 5.890 Downloading: com/google/guava/guava/25.1-android/guava-25.1-android.pom from central
#14 5.893 Downloading: org/apache/commons/commons-parent/42/commons-parent-42.pom from central
#14 5.895 Downloading: org/sonatype/spice/spice-parent/12/spice-parent-12.pom from central
#14 5.915 Downloading: org/jboss/weld/weld-api-parent/1.0/weld-api-parent-1.0.pom from central
#14 5.921 Downloading: org/eclipse/jetty/jetty-client/9.4.36.v20210114/jetty-client-9.4.36.v20210114.pom from central
#14 5.925 Downloading: org/eclipse/jetty/jetty-http/9.4.36.v20210114/jetty-http-9.4.36.v20210114.pom from central
#14 5.937 Downloading: org/sonatype/forge/forge-parent/4/forge-parent-4.pom from central
#14 5.938 Downloading: com/google/guava/guava-parent/25.1-android/guava-parent-25.1-android.pom from central
#14 5.952 Downloading: org/jboss/weld/weld-api-bom/1.0/weld-api-bom-1.0.pom from central
#14 5.953 Downloading: org/apache/apache/18/apache-18.pom from central
#14 5.970 Downloading: org/eclipse/jetty/jetty-project/9.4.36.v20210114/jetty-project-9.4.36.v20210114.pom from central
#14 5.977 Downloading: org/clojure/tools.analyzer.jvm/1.2.0/tools.analyzer.jvm-1.2.0.pom from central
#14 5.984 Downloading: ch/qos/logback/logback-core/1.0.12/logback-core-1.0.12.pom from central
#14 5.990 Downloading: org/jboss/weld/weld-parent/6/weld-parent-6.pom from central
#14 5.992 Downloading: org/eclipse/jetty/jetty-util/9.4.36.v20210114/jetty-util-9.4.36.v20210114.pom from central
#14 6.000 Downloading: commons-logging/commons-logging/1.1.3/commons-logging-1.1.3.pom from central
#14 6.021 Downloading: software/amazon/ion/ion-java/1.0.2/ion-java-1.0.2.pom from central
#14 6.029 Downloading: com/fasterxml/jackson/dataformat/jackson-dataformat-cbor/2.6.7/jackson-dataformat-cbor-2.6.7.pom from central
#14 6.037 Downloading: joda-time/joda-time/2.8.1/joda-time-2.8.1.pom from central
#14 6.052 Downloading: org/apache/commons/commons-parent/28/commons-parent-28.pom from central
#14 6.056 Downloading: org/jsoup/jsoup/1.7.2/jsoup-1.7.2.pom from central
#14 6.056 Downloading: com/google/code/findbugs/jsr305/3.0.2/jsr305-3.0.2.pom from central
#14 6.063 Downloading: javax/annotation/jsr250-api/1.0/jsr250-api-1.0.pom from central
#14 6.067 Downloading: org/checkerframework/checker-compat-qual/2.0.0/checker-compat-qual-2.0.0.pom from central
#14 6.081 Downloading: com/google/errorprone/error_prone_annotations/2.1.3/error_prone_annotations-2.1.3.pom from central
#14 6.097 Downloading: com/google/j2objc/j2objc-annotations/1.1/j2objc-annotations-1.1.pom from central
#14 6.099 Downloading: org/sonatype/oss/oss-parent/7/oss-parent-7.pom from central
#14 6.099 Downloading: org/codehaus/mojo/animal-sniffer-annotations/1.14/animal-sniffer-annotations-1.14.pom from central
#14 6.100 Downloading: org/eclipse/jetty/jetty-io/9.4.36.v20210114/jetty-io-9.4.36.v20210114.pom from central
#14 6.110 Downloading: org/clojure/tools.analyzer/1.1.0/tools.analyzer-1.1.0.pom from central
#14 6.119 Downloading: com/google/errorprone/error_prone_parent/2.1.3/error_prone_parent-2.1.3.pom from central
#14 6.126 Downloading: org/clojure/core.memoize/1.0.236/core.memoize-1.0.236.pom from central
#14 6.139 Downloading: org/codehaus/mojo/animal-sniffer-parent/1.14/animal-sniffer-parent-1.14.pom from central
#14 6.140 Downloading: org/sonatype/oss/oss-parent/7/oss-parent-7.pom from central
#14 6.140 Downloading: org/ow2/asm/asm/5.2/asm-5.2.pom from central
#14 6.197 Downloading: org/codehaus/mojo/mojo-parent/34/mojo-parent-34.pom from central
#14 6.201 Downloading: org/ow2/asm/asm-parent/5.2/asm-parent-5.2.pom from central
#14 6.240 Downloading: org/ow2/ow2/1.3/ow2-1.3.pom from central
#14 6.240 Downloading: org/codehaus/codehaus-parent/4/codehaus-parent-4.pom from central
#14 6.283 Downloading: org/clojure/core.cache/1.0.207/core.cache-1.0.207.pom from central
#14 6.336 Downloading: org/clojure/data.priority-map/1.0.0/data.priority-map-1.0.0.pom from central
#14 6.379 Downloading: javax/inject/javax.inject/1/javax.inject-1.jar from central
#14 6.379 Downloading: org/codehaus/plexus/plexus-component-annotations/2.1.0/plexus-component-annotations-2.1.0.jar from central
#14 6.381 Downloading: commons-codec/commons-codec/1.11/commons-codec-1.11.jar from central
#14 6.382 Downloading: joda-time/joda-time/2.8.1/joda-time-2.8.1.jar from central
#14 6.384 Downloading: org/clojure/tools.analyzer/1.1.0/tools.analyzer-1.1.0.jar from central
#14 6.389 Downloading: com/cognitect/aws/api/0.8.524/api-0.8.524.jar from central
#14 6.390 Downloading: org/clojure/data.json/1.0.0/data.json-1.0.0.jar from central
#14 6.424 Downloading: weavejester/dependency/0.2.1/dependency-0.2.1.jar from clojars
#14 6.465 Downloading: com/cognitect/aws/endpoints/1.1.12.69/endpoints-1.1.12.69.jar from central
#14 6.486 Downloading: com/google/errorprone/error_prone_annotations/2.1.3/error_prone_annotations-2.1.3.jar from central
#14 6.496 Downloading: org/apache/commons/commons-lang3/3.8.1/commons-lang3-3.8.1.jar from central
#14 6.502 Downloading: org/springframework/build/aws-maven/4.8.0.RELEASE/aws-maven-4.8.0.RELEASE.jar from central
#14 6.522 Downloading: org/clojure/tools.logging/1.1.0/tools.logging-1.1.0.jar from central
#14 6.537 Downloading: com/fasterxml/jackson/core/jackson-databind/2.6.7.1/jackson-databind-2.6.7.1.jar from central
#14 6.569 Downloading: org/clojure/tools.cli/1.0.206/tools.cli-1.0.206.jar from central
#14 6.578 Downloading: org/codehaus/mojo/animal-sniffer-annotations/1.14/animal-sniffer-annotations-1.14.jar from central
#14 6.580 Downloading: org/eclipse/jetty/jetty-http/9.4.36.v20210114/jetty-http-9.4.36.v20210114.jar from central
#14 6.588 Downloading: org/eclipse/jetty/jetty-util/9.4.36.v20210114/jetty-util-9.4.36.v20210114.jar from central
#14 6.618 Downloading: org/apache/maven/resolver/maven-resolver-transport-wagon/1.0.3/maven-resolver-transport-wagon-1.0.3.jar from central
#14 6.629 Downloading: org/slf4j/jcl-over-slf4j/1.7.30/jcl-over-slf4j-1.7.30.jar from central
#14 6.659 Downloading: org/clojure/tools.analyzer.jvm/1.2.0/tools.analyzer.jvm-1.2.0.jar from central
#14 6.673 Downloading: org/apache/maven/wagon/wagon-provider-api/3.0.0/wagon-provider-api-3.0.0.jar from central
#14 6.720 Downloading: com/fasterxml/jackson/dataformat/jackson-dataformat-cbor/2.6.7/jackson-dataformat-cbor-2.6.7.jar from central
#14 6.730 Downloading: org/apache/maven/resolver/maven-resolver-transport-http/1.6.3/maven-resolver-transport-http-1.6.3.jar from central
#14 6.734 Downloading: org/apache/maven/maven-model-builder/3.8.2/maven-model-builder-3.8.2.jar from central
#14 6.763 Downloading: ch/qos/logback/logback-core/1.0.12/logback-core-1.0.12.jar from central
#14 6.785 Downloading: org/codehaus/plexus/plexus-utils/3.2.1/plexus-utils-3.2.1.jar from central
#14 6.816 Downloading: org/apache/maven/resolver/maven-resolver-transport-file/1.6.3/maven-resolver-transport-file-1.6.3.jar from central
#14 6.834 Downloading: org/eclipse/sisu/org.eclipse.sisu.plexus/0.3.4/org.eclipse.sisu.plexus-0.3.4.jar from central
#14 6.872 Downloading: commons-io/commons-io/2.6/commons-io-2.6.jar from central
#14 6.923 Downloading: org/apache/maven/maven-settings-builder/3.8.2/maven-settings-builder-3.8.2.jar from central
#14 6.963 Downloading: org/clojure/tools.namespace/1.0.0/tools.namespace-1.0.0.jar from central
#14 7.022 Downloading: org/apache/maven/wagon/wagon-http-shared/3.0.0/wagon-http-shared-3.0.0.jar from central
#14 7.025 Downloading: com/fasterxml/jackson/core/jackson-core/2.6.7/jackson-core-2.6.7.jar from central
#14 7.033 Downloading: org/ow2/asm/asm/5.2/asm-5.2.jar from central
#14 7.035 Downloading: javax/enterprise/cdi-api/1.0/cdi-api-1.0.jar from central
#14 7.097 Downloading: org/apache/maven/maven-settings/3.8.2/maven-settings-3.8.2.jar from central
#14 7.098 Downloading: org/apache/httpcomponents/httpcore/4.4.13/httpcore-4.4.13.jar from central
#14 7.156 Downloading: org/apache/maven/maven-core/3.8.2/maven-core-3.8.2.jar from central
#14 7.159 Downloading: org/apache/maven/resolver/maven-resolver-api/1.6.3/maven-resolver-api-1.6.3.jar from central
#14 7.194 Downloading: software/amazon/ion/ion-java/1.0.2/ion-java-1.0.2.jar from central
#14 7.200 Downloading: com/fasterxml/jackson/core/jackson-annotations/2.6.0/jackson-annotations-2.6.0.jar from central
#14 7.227 Downloading: javax/annotation/jsr250-api/1.0/jsr250-api-1.0.jar from central
#14 7.320 Downloading: com/cognitect/http-client/0.1.106/http-client-0.1.106.jar from central
#14 7.348 Downloading: org/apache/maven/maven-resolver-provider/3.8.2/maven-resolver-provider-3.8.2.jar from central
#14 7.374 Downloading: org/checkerframework/checker-compat-qual/2.0.0/checker-compat-qual-2.0.0.jar from central
#14 7.382 Downloading: org/apache/maven/shared/maven-shared-utils/3.3.4/maven-shared-utils-3.3.4.jar from central
#14 7.389 Downloading: org/clojure/java.classpath/1.0.0/java.classpath-1.0.0.jar from central
#14 7.399 Downloading: commons-logging/commons-logging/1.1.3/commons-logging-1.1.3.jar from central
#14 7.427 Downloading: org/clojure/tools.deps.alpha/0.12.1053/tools.deps.alpha-0.12.1053.jar from central
#14 7.435 Downloading: com/google/guava/guava/25.1-android/guava-25.1-android.jar from central
#14 7.437 Downloading: org/clojure/data.xml/0.2.0-alpha6/data.xml-0.2.0-alpha6.jar from central
#14 7.469 Downloading: com/amazonaws/jmespath-java/1.11.337/jmespath-java-1.11.337.jar from central
#14 7.508 Downloading: org/apache/maven/resolver/maven-resolver-spi/1.6.3/maven-resolver-spi-1.6.3.jar from central
#14 7.516 Downloading: com/amazonaws/aws-java-sdk-core/1.11.337/aws-java-sdk-core-1.11.337.jar from central
#14 7.520 Downloading: com/google/j2objc/j2objc-annotations/1.1/j2objc-annotations-1.1.jar from central
#14 7.522 Downloading: org/slf4j/slf4j-nop/2.0.0-alpha1/slf4j-nop-2.0.0-alpha1.jar from central
#14 7.532 Downloading: org/codehaus/plexus/plexus-classworlds/2.6.0/plexus-classworlds-2.6.0.jar from central
#14 7.560 Downloading: org/apache/maven/wagon/wagon-http/3.0.0/wagon-http-3.0.0.jar from central
#14 7.582 Downloading: org/sonatype/plexus/plexus-sec-dispatcher/1.4/plexus-sec-dispatcher-1.4.jar from central
#14 7.584 Downloading: com/cemerick/pomegranate/1.1.0/pomegranate-1.1.0.jar from central
#14 7.603 Downloading: org/codehaus/plexus/plexus-interpolation/1.25/plexus-interpolation-1.25.jar from central
#14 7.624 Downloading: s3-wagon-private/s3-wagon-private/1.3.2/s3-wagon-private-1.3.2.jar from clojars
#14 7.633 Downloading: org/apache/httpcomponents/httpclient/4.5.12/httpclient-4.5.12.jar from central
#14 7.640 Downloading: com/google/inject/guice/4.2.2/guice-4.2.2-no_aop.jar from central
#14 7.680 Downloading: org/eclipse/jetty/jetty-client/9.4.36.v20210114/jetty-client-9.4.36.v20210114.jar from central
#14 7.723 Downloading: org/eclipse/jetty/jetty-io/9.4.36.v20210114/jetty-io-9.4.36.v20210114.jar from central
#14 7.738 Downloading: org/clojure/tools.reader/1.3.2/tools.reader-1.3.2.jar from central
#14 7.870 Downloading: org/tcrawley/dynapath/1.0.0/dynapath-1.0.0.jar from central
#14 7.919 Downloading: org/jsoup/jsoup/1.7.2/jsoup-1.7.2.jar from central
#14 7.942 Downloading: org/clojure/tools.gitlibs/2.3.167/tools.gitlibs-2.3.167.jar from central
#14 7.985 Downloading: org/apache/maven/resolver/maven-resolver-connector-basic/1.6.3/maven-resolver-connector-basic-1.6.3.jar from central
#14 8.048 Downloading: com/cognitect/aws/s3/814.2.991.0/s3-814.2.991.0.jar from central
#14 8.098 Downloading: org/apache/maven/resolver/maven-resolver-impl/1.6.3/maven-resolver-impl-1.6.3.jar from central
#14 8.112 Downloading: org/slf4j/slf4j-api/2.0.0-alpha1/slf4j-api-2.0.0-alpha1.jar from central
#14 8.115 Downloading: org/apache/maven/maven-model/3.8.2/maven-model-3.8.2.jar from central
#14 8.120 Downloading: org/eclipse/sisu/org.eclipse.sisu.inject/0.3.4/org.eclipse.sisu.inject-0.3.4.jar from central
#14 8.135 Downloading: org/apache/maven/resolver/maven-resolver-util/1.6.3/maven-resolver-util-1.6.3.jar from central
#14 8.177 Downloading: slipset/deps-deploy/0.1.5/deps-deploy-0.1.5.jar from clojars
#14 8.297 Downloading: ch/qos/logback/logback-classic/1.0.12/logback-classic-1.0.12.jar from central
#14 8.304 Downloading: org/clojure/core.memoize/1.0.236/core.memoize-1.0.236.jar from central
#14 8.327 Downloading: org/apache/maven/maven-repository-metadata/3.8.2/maven-repository-metadata-3.8.2.jar from central
#14 8.353 Downloading: org/clojure/data.priority-map/1.0.0/data.priority-map-1.0.0.jar from central
#14 8.368 Downloading: aopalliance/aopalliance/1.0/aopalliance-1.0.jar from central
#14 8.372 Downloading: org/apache/maven/maven-builder-support/3.8.2/maven-builder-support-3.8.2.jar from central
#14 8.411 Downloading: com/google/code/findbugs/jsr305/3.0.2/jsr305-3.0.2.jar from central
#14 8.417 Downloading: com/amazonaws/aws-java-sdk-kms/1.11.337/aws-java-sdk-kms-1.11.337.jar from central
#14 8.417 Downloading: org/clojure/core.cache/1.0.207/core.cache-1.0.207.jar from central
#14 8.426 Downloading: org/apache/maven/maven-plugin-api/3.8.2/maven-plugin-api-3.8.2.jar from central
#14 8.436 Downloading: org/clojure/core.async/1.3.622/core.async-1.3.622.jar from central
#14 8.487 Downloading: org/apache/maven/maven-artifact/3.8.2/maven-artifact-3.8.2.jar from central
#14 8.518 Downloading: org/clojure/data.codec/0.1.0/data.codec-0.1.0.jar from central
#14 8.526 Downloading: com/amazonaws/aws-java-sdk-s3/1.11.337/aws-java-sdk-s3-1.11.337.jar from central
#14 14.11 Downloading: ring/ring-core/1.9.4/ring-core-1.9.4.pom from clojars
#14 14.11 Downloading: ring/ring-defaults/0.3.3/ring-defaults-0.3.3.pom from clojars
#14 14.11 Downloading: metosin/reitit/0.5.15/reitit-0.5.15.pom from clojars
#14 14.12 Downloading: metosin/muuntaja/0.6.8/muuntaja-0.6.8.pom from clojars
#14 14.53 Downloading: luminus-transit/luminus-transit/0.1.3/luminus-transit-0.1.3.pom from clojars
#14 14.53 Downloading: io/github/kit-clj/kit-repl/1.0.0/kit-repl-1.0.0.pom from clojars
#14 14.55 Downloading: metosin/ring-http-response/0.9.3/ring-http-response-0.9.3.pom from clojars
#14 14.61 Downloading: io/github/kit-clj/kit-undertow/1.0.0/kit-undertow-1.0.0.pom from clojars
#14 14.64 Downloading: io/github/kit-clj/kit-core/1.0.0/kit-core-1.0.0.pom from clojars
#14 15.01 Downloading: com/cognitect/transit-cljs/0.8.256/transit-cljs-0.8.256.pom from central
#14 15.03 Downloading: com/cognitect/transit-clj/1.0.324/transit-clj-1.0.324.pom from central
#14 15.04 Downloading: com/andrewmcveigh/cljs-time/0.5.2/cljs-time-0.5.2.pom from clojars
#14 15.06 Downloading: metosin/jsonista/0.3.1/jsonista-0.3.1.pom from clojars
#14 15.06 Downloading: integrant/integrant/0.8.0/integrant-0.8.0.pom from clojars
#14 15.06 Downloading: potemkin/potemkin/0.4.5/potemkin-0.4.5.pom from clojars
#14 15.09 Downloading: javax/servlet/javax.servlet-api/3.1.0/javax.servlet-api-3.1.0.pom from central
#14 15.11 Downloading: ring/ring-anti-forgery/1.3.0/ring-anti-forgery-1.3.0.pom from clojars
#14 15.12 Downloading: integrant/integrant/0.8.0/integrant-0.8.0.pom from clojars
#14 15.15 Downloading: metosin/reitit-core/0.5.15/reitit-core-0.5.15.pom from clojars
#14 15.15 Downloading: metosin/reitit-dev/0.5.15/reitit-dev-0.5.15.pom from clojars
#14 15.18 Downloading: net/java/jvnet-parent/3/jvnet-parent-3.pom from central
#14 15.20 Downloading: metosin/reitit-malli/0.5.15/reitit-malli-0.5.15.pom from clojars
#14 15.21 Downloading: metosin/reitit-spec/0.5.15/reitit-spec-0.5.15.pom from clojars
#14 15.22 Downloading: metosin/reitit-schema/0.5.15/reitit-schema-0.5.15.pom from clojars
#14 15.23 Downloading: metosin/reitit-ring/0.5.15/reitit-ring-0.5.15.pom from clojars
#14 15.24 Downloading: metosin/reitit-middleware/0.5.15/reitit-middleware-0.5.15.pom from clojars
#14 15.28 Downloading: metosin/reitit-http/0.5.15/reitit-http-0.5.15.pom from clojars
#14 15.28 Downloading: metosin/reitit-interceptors/0.5.15/reitit-interceptors-0.5.15.pom from clojars
#14 15.29 Downloading: metosin/reitit-swagger/0.5.15/reitit-swagger-0.5.15.pom from clojars
#14 15.29 Downloading: metosin/reitit-swagger-ui/0.5.15/reitit-swagger-ui-0.5.15.pom from clojars
#14 15.34 Downloading: com/fasterxml/jackson/core/jackson-databind/2.12.4/jackson-databind-2.12.4.pom from central
#14 15.34 Downloading: com/fasterxml/jackson/core/jackson-core/2.12.4/jackson-core-2.12.4.pom from central
#14 15.36 Downloading: metosin/reitit-sieppari/0.5.15/reitit-sieppari-0.5.15.pom from clojars
#14 15.36 Downloading: metosin/reitit-frontend/0.5.15/reitit-frontend-0.5.15.pom from clojars
#14 15.39 Downloading: com/fasterxml/jackson/jackson-base/2.12.4/jackson-base-2.12.4.pom from central
#14 15.41 Downloading: commons-io/commons-io/2.10.0/commons-io-2.10.0.pom from central
#14 15.41 Downloading: commons-fileupload/commons-fileupload/1.4/commons-fileupload-1.4.pom from central
#14 15.41 Downloading: ring/ring-codec/1.1.3/ring-codec-1.1.3.pom from clojars
#14 15.43 Downloading: com/fasterxml/jackson/jackson-bom/2.12.4/jackson-bom-2.12.4.pom from central
#14 15.46 Downloading: org/apache/commons/commons-parent/52/commons-parent-52.pom from central
#14 15.47 Downloading: com/fasterxml/jackson/jackson-parent/2.12/jackson-parent-2.12.pom from central
#14 15.48 Downloading: crypto-random/crypto-random/1.2.1/crypto-random-1.2.1.pom from clojars
#14 15.50 Downloading: crypto-equality/crypto-equality/1.0.0/crypto-equality-1.0.0.pom from clojars
#14 15.51 Downloading: com/fasterxml/oss-parent/41/oss-parent-41.pom from central
#14 15.52 Downloading: ring/ring-headers/0.3.0/ring-headers-0.3.0.pom from clojars
#14 15.53 Downloading: ring/ring-ssl/0.3.0/ring-ssl-0.3.0.pom from clojars
#14 15.53 Downloading: org/clojure/tools.logging/1.2.3/tools.logging-1.2.3.pom from central
#14 15.54 Downloading: org/junit/junit-bom/5.7.2/junit-bom-5.7.2.pom from central
#14 15.57 Downloading: ch/qos/logback/logback-classic/1.2.10/logback-classic-1.2.10.pom from central
#14 15.57 Downloading: com/cognitect/transit-js/0.8.846/transit-js-0.8.846.pom from central
#14 15.57 Downloading: aero/aero/1.1.6/aero-1.1.6.pom from clojars
#14 15.60 Downloading: luminus/ring-undertow-adapter/1.2.5/ring-undertow-adapter-1.2.5.pom from clojars
#14 15.61 Downloading: ch/qos/logback/logback-parent/1.2.10/logback-parent-1.2.10.pom from central
#14 15.61 Downloading: clj-tuple/clj-tuple/0.2.2/clj-tuple-0.2.2.pom from clojars
#14 15.62 Downloading: com/fasterxml/jackson/datatype/jackson-datatype-jsr310/2.12.0/jackson-datatype-jsr310-2.12.0.pom from central
#14 15.62 Downloading: riddley/riddley/0.1.12/riddley-0.1.12.pom from clojars
#14 15.63 Downloading: com/cognitect/transit-java/1.0.343/transit-java-1.0.343.pom from central
#14 15.67 Downloading: com/fasterxml/jackson/module/jackson-modules-java8/2.12.0/jackson-modules-java8-2.12.0.pom from central
#14 15.70 Downloading: hiccup/hiccup/1.0.5/hiccup-1.0.5.pom from clojars
#14 15.71 Downloading: com/fasterxml/jackson/jackson-base/2.12.0/jackson-base-2.12.0.pom from central
#14 15.77 Downloading: com/fasterxml/jackson/jackson-bom/2.12.0/jackson-bom-2.12.0.pom from central
#14 16.07 Downloading: io/undertow/undertow-core/2.2.14.Final/undertow-core-2.2.14.Final.pom from central
#14 16.09 Downloading: expound/expound/0.8.9/expound-0.8.9.pom from clojars
#14 16.09 Downloading: meta-merge/meta-merge/1.0.0/meta-merge-1.0.0.pom from clojars
#14 16.09 Downloading: com/bhauman/spell-spec/0.1.2/spell-spec-0.1.2.pom from clojars
#14 16.10 Downloading: fipp/fipp/0.6.24/fipp-0.6.24.pom from clojars
#14 16.10 Downloading: metosin/malli/0.5.1/malli-0.5.1.pom from clojars
#14 16.11 Downloading: metosin/schema-tools/0.12.3/schema-tools-0.12.3.pom from clojars
#14 16.12 Downloading: io/undertow/undertow-parent/2.2.14.Final/undertow-parent-2.2.14.Final.pom from central
#14 16.16 Downloading: lambdaisland/deep-diff/0.0-47/deep-diff-0.0-47.pom from clojars
#14 16.17 Downloading: org/jboss/jboss-parent/35/jboss-parent-35.pom from central
#14 16.18 Downloading: metosin/jsonista/0.3.3/jsonista-0.3.3.pom from clojars
#14 16.18 Downloading: metosin/ring-swagger-ui/3.46.0/ring-swagger-ui-3.46.0.pom from clojars
#14 16.19 Downloading: metosin/sieppari/0.0.0-alpha13/sieppari-0.0.0-alpha13.pom from clojars
#14 16.21 Downloading: com/fasterxml/jackson/core/jackson-annotations/2.12.4/jackson-annotations-2.12.4.pom from central
#14 16.23 Downloading: commons-codec/commons-codec/1.15/commons-codec-1.15.pom from central
#14 16.24 Downloading: org/slf4j/slf4j-api/1.7.32/slf4j-api-1.7.32.pom from central
#14 16.24 Downloading: ch/qos/logback/logback-core/1.2.10/logback-core-1.2.10.pom from central
#14 16.26 Downloading: org/msgpack/msgpack/0.6.12/msgpack-0.6.12.pom from central
#14 16.29 Downloading: javax/xml/bind/jaxb-api/2.3.0/jaxb-api-2.3.0.pom from central
#14 16.29 Downloading: org/slf4j/slf4j-parent/1.7.32/slf4j-parent-1.7.32.pom from central
#14 16.29 Downloading: org/jboss/logging/jboss-logging/3.4.1.Final/jboss-logging-3.4.1.Final.pom from central
#14 16.29 Downloading: org/jboss/xnio/xnio-api/3.8.4.Final/xnio-api-3.8.4.Final.pom from central
#14 16.31 Downloading: org/jboss/xnio/xnio-nio/3.8.4.Final/xnio-nio-3.8.4.Final.pom from central
#14 16.33 Downloading: org/jboss/jboss-parent/34/jboss-parent-34.pom from central
#14 16.33 Downloading: javax/xml/bind/jaxb-api-parent/2.3.0/jaxb-api-parent-2.3.0.pom from central
#14 16.33 Downloading: org/jboss/xnio/xnio-all/3.8.4.Final/xnio-all-3.8.4.Final.pom from central
#14 16.34 Downloading: org/jboss/threads/jboss-threads/3.1.0.Final/jboss-threads-3.1.0.Final.pom from central
#14 16.38 Downloading: net/java/jvnet-parent/5/jvnet-parent-5.pom from central
#14 16.40 Downloading: org/jboss/jboss-parent/36/jboss-parent-36.pom from central
#14 16.51 Downloading: metosin/spec-tools/0.10.5/spec-tools-0.10.5.pom from clojars
#14 16.99 Downloading: org/clojure/test.check/1.1.0/test.check-1.1.0.pom from central
#14 16.99 Downloading: org/clojure/core.rrb-vector/0.0.14/core.rrb-vector-0.0.14.pom from central
#14 17.01 Downloading: borkdude/edamame/0.0.11/edamame-0.0.11.pom from clojars
#14 17.01 Downloading: mvxcvi/puget/1.1.2/puget-1.1.2.pom from clojars
#14 17.01 Downloading: tech/droit/clj-diff/1.0.1/clj-diff-1.0.1.pom from clojars
#14 17.04 Downloading: com/fasterxml/jackson/datatype/jackson-datatype-jsr310/2.12.3/jackson-datatype-jsr310-2.12.3.pom from central
#14 17.04 Downloading: com/googlecode/json-simple/json-simple/1.1.1/json-simple-1.1.1.pom from central
#14 17.05 Downloading: mvxcvi/arrangement/1.2.0/arrangement-1.2.0.pom from clojars
#14 17.07 Downloading: org/javassist/javassist/3.18.1-GA/javassist-3.18.1-GA.pom from central
#14 17.07 Downloading: org/wildfly/common/wildfly-common/1.5.2.Final/wildfly-common-1.5.2.Final.pom from central
#14 17.08 Downloading: com/fasterxml/jackson/module/jackson-modules-java8/2.12.3/jackson-modules-java8-2.12.3.pom from central
#14 17.09 Downloading: org/wildfly/client/wildfly-client-config/1.0.1.Final/wildfly-client-config-1.0.1.Final.pom from central
#14 17.12 Downloading: prismatic/schema/1.1.12/schema-1.1.12.pom from clojars
#14 17.13 Downloading: com/fasterxml/jackson/jackson-base/2.12.3/jackson-base-2.12.3.pom from central
#14 17.14 Downloading: org/jboss/jboss-parent/23/jboss-parent-23.pom from central
#14 17.17 Downloading: com/fasterxml/jackson/jackson-bom/2.12.3/jackson-bom-2.12.3.pom from central
#14 17.44 Downloading: borkdude/dynaload/0.2.2/dynaload-0.2.2.pom from clojars
#14 17.60 Downloading: org/clojure/tools.reader/1.3.4/tools.reader-1.3.4.pom from central
#14 17.66 Downloading: commons-codec/commons-codec/1.15/commons-codec-1.15.jar from central
#14 17.66 Downloading: org/clojure/tools.logging/1.2.3/tools.logging-1.2.3.jar from central
#14 17.67 Downloading: com/cognitect/transit-java/1.0.343/transit-java-1.0.343.jar from central
#14 17.69 Downloading: io/undertow/undertow-core/2.2.14.Final/undertow-core-2.2.14.Final.jar from central
#14 17.72 Downloading: metosin/reitit-middleware/0.5.15/reitit-middleware-0.5.15.jar from clojars
#14 17.76 Downloading: com/fasterxml/jackson/core/jackson-databind/2.12.4/jackson-databind-2.12.4.jar from central
#14 17.83 Downloading: luminus-transit/luminus-transit/0.1.3/luminus-transit-0.1.3.jar from clojars
#14 17.83 Downloading: expound/expound/0.8.9/expound-0.8.9.jar from clojars
#14 17.84 Downloading: metosin/ring-swagger-ui/3.46.0/ring-swagger-ui-3.46.0.jar from clojars
#14 17.84 Downloading: metosin/muuntaja/0.6.8/muuntaja-0.6.8.jar from clojars
#14 18.05 Downloading: mvxcvi/puget/1.1.2/puget-1.1.2.jar from clojars
#14 18.16 Downloading: commons-fileupload/commons-fileupload/1.4/commons-fileupload-1.4.jar from central
#14 18.19 Downloading: io/github/kit-clj/kit-repl/1.0.0/kit-repl-1.0.0.jar from clojars
#14 18.21 Downloading: metosin/ring-http-response/0.9.3/ring-http-response-0.9.3.jar from clojars
#14 18.23 Downloading: org/wildfly/common/wildfly-common/1.5.2.Final/wildfly-common-1.5.2.Final.jar from central
#14 18.32 Downloading: ring/ring-ssl/0.3.0/ring-ssl-0.3.0.jar from clojars
#14 18.36 Downloading: metosin/spec-tools/0.10.5/spec-tools-0.10.5.jar from clojars
#14 18.38 Downloading: lambdaisland/deep-diff/0.0-47/deep-diff-0.0-47.jar from clojars
#14 18.39 Downloading: com/googlecode/json-simple/json-simple/1.1.1/json-simple-1.1.1.jar from central
#14 18.41 Downloading: com/cognitect/transit-cljs/0.8.256/transit-cljs-0.8.256.jar from central
#14 18.41 Downloading: ch/qos/logback/logback-core/1.2.10/logback-core-1.2.10.jar from central
#14 18.46 Downloading: ring/ring-defaults/0.3.3/ring-defaults-0.3.3.jar from clojars
#14 18.47 Downloading: commons-io/commons-io/2.10.0/commons-io-2.10.0.jar from central
#14 18.48 Downloading: org/jboss/logging/jboss-logging/3.4.1.Final/jboss-logging-3.4.1.Final.jar from central
#14 18.54 Downloading: fipp/fipp/0.6.24/fipp-0.6.24.jar from clojars
#14 18.61 Downloading: com/fasterxml/jackson/core/jackson-core/2.12.4/jackson-core-2.12.4.jar from central
#14 18.62 Downloading: metosin/reitit-swagger/0.5.15/reitit-swagger-0.5.15.jar from clojars
#14 18.67 Downloading: aero/aero/1.1.6/aero-1.1.6.jar from clojars
#14 18.69 Downloading: metosin/reitit-ring/0.5.15/reitit-ring-0.5.15.jar from clojars
#14 18.70 Downloading: com/cognitect/transit-js/0.8.846/transit-js-0.8.846.jar from central
#14 18.74 Downloading: integrant/integrant/0.8.0/integrant-0.8.0.jar from clojars
#14 18.79 Downloading: clj-tuple/clj-tuple/0.2.2/clj-tuple-0.2.2.jar from clojars
#14 18.82 Downloading: metosin/reitit-core/0.5.15/reitit-core-0.5.15.jar from clojars
#14 18.83 Downloading: com/fasterxml/jackson/core/jackson-annotations/2.12.4/jackson-annotations-2.12.4.jar from central
#14 18.85 Downloading: ring/ring-headers/0.3.0/ring-headers-0.3.0.jar from clojars
#14 18.89 Downloading: org/javassist/javassist/3.18.1-GA/javassist-3.18.1-GA.jar from central
#14 18.90 Downloading: org/jboss/xnio/xnio-nio/3.8.4.Final/xnio-nio-3.8.4.Final.jar from central
#14 18.93 Downloading: riddley/riddley/0.1.12/riddley-0.1.12.jar from clojars
#14 18.93 Downloading: hiccup/hiccup/1.0.5/hiccup-1.0.5.jar from clojars
#14 18.95 Downloading: borkdude/dynaload/0.2.2/dynaload-0.2.2.jar from clojars
#14 18.96 Downloading: metosin/reitit-schema/0.5.15/reitit-schema-0.5.15.jar from clojars
#14 19.06 Downloading: org/msgpack/msgpack/0.6.12/msgpack-0.6.12.jar from central
#14 19.09 Downloading: org/jboss/threads/jboss-threads/3.1.0.Final/jboss-threads-3.1.0.Final.jar from central
#14 19.16 Downloading: borkdude/edamame/0.0.11/edamame-0.0.11.jar from clojars
#14 19.18 Downloading: mvxcvi/arrangement/1.2.0/arrangement-1.2.0.jar from clojars
#14 19.21 Downloading: metosin/malli/0.5.1/malli-0.5.1.jar from clojars
#14 19.24 Downloading: com/cognitect/transit-clj/1.0.324/transit-clj-1.0.324.jar from central
#14 19.27 Downloading: crypto-random/crypto-random/1.2.1/crypto-random-1.2.1.jar from clojars
#14 19.28 Downloading: ring/ring-codec/1.1.3/ring-codec-1.1.3.jar from clojars
#14 19.30 Downloading: metosin/reitit-malli/0.5.15/reitit-malli-0.5.15.jar from clojars
#14 19.34 Downloading: metosin/schema-tools/0.12.3/schema-tools-0.12.3.jar from clojars
#14 19.36 Downloading: org/clojure/core.rrb-vector/0.0.14/core.rrb-vector-0.0.14.jar from central
#14 19.40 Downloading: ring/ring-anti-forgery/1.3.0/ring-anti-forgery-1.3.0.jar from clojars
#14 19.43 Downloading: com/bhauman/spell-spec/0.1.2/spell-spec-0.1.2.jar from clojars
#14 19.43 Downloading: org/wildfly/client/wildfly-client-config/1.0.1.Final/wildfly-client-config-1.0.1.Final.jar from central
#14 19.47 Downloading: crypto-equality/crypto-equality/1.0.0/crypto-equality-1.0.0.jar from clojars
#14 19.47 Downloading: metosin/reitit-sieppari/0.5.15/reitit-sieppari-0.5.15.jar from clojars
#14 19.47 Downloading: com/andrewmcveigh/cljs-time/0.5.2/cljs-time-0.5.2.jar from clojars
#14 19.49 Downloading: org/clojure/tools.reader/1.3.4/tools.reader-1.3.4.jar from central
#14 19.49 Downloading: javax/servlet/javax.servlet-api/3.1.0/javax.servlet-api-3.1.0.jar from central
#14 19.54 Downloading: potemkin/potemkin/0.4.5/potemkin-0.4.5.jar from clojars
#14 19.54 Downloading: org/slf4j/slf4j-api/1.7.32/slf4j-api-1.7.32.jar from central
#14 19.55 Downloading: metosin/reitit-http/0.5.15/reitit-http-0.5.15.jar from clojars
#14 19.56 Downloading: org/jboss/xnio/xnio-api/3.8.4.Final/xnio-api-3.8.4.Final.jar from central
#14 19.57 Downloading: org/clojure/test.check/1.1.0/test.check-1.1.0.jar from central
#14 19.60 Downloading: metosin/reitit-frontend/0.5.15/reitit-frontend-0.5.15.jar from clojars
#14 19.61 Downloading: prismatic/schema/1.1.12/schema-1.1.12.jar from clojars
#14 19.64 Downloading: metosin/reitit-spec/0.5.15/reitit-spec-0.5.15.jar from clojars
#14 19.67 Downloading: metosin/jsonista/0.3.3/jsonista-0.3.3.jar from clojars
#14 19.67 Downloading: metosin/reitit-swagger-ui/0.5.15/reitit-swagger-ui-0.5.15.jar from clojars
#14 19.68 Downloading: ch/qos/logback/logback-classic/1.2.10/logback-classic-1.2.10.jar from central
#14 19.70 Downloading: metosin/reitit/0.5.15/reitit-0.5.15.jar from clojars
#14 19.73 Downloading: ring/ring-core/1.9.4/ring-core-1.9.4.jar from clojars
#14 19.73 Downloading: metosin/reitit-dev/0.5.15/reitit-dev-0.5.15.jar from clojars
#14 19.74 Downloading: meta-merge/meta-merge/1.0.0/meta-merge-1.0.0.jar from clojars
#14 19.77 Downloading: com/fasterxml/jackson/datatype/jackson-datatype-jsr310/2.12.3/jackson-datatype-jsr310-2.12.3.jar from central
#14 19.77 Downloading: javax/xml/bind/jaxb-api/2.3.0/jaxb-api-2.3.0.jar from central
#14 19.81 Downloading: metosin/sieppari/0.0.0-alpha13/sieppari-0.0.0-alpha13.jar from clojars
#14 19.86 Downloading: metosin/reitit-interceptors/0.5.15/reitit-interceptors-0.5.15.jar from clojars
#14 19.86 Downloading: tech/droit/clj-diff/1.0.1/clj-diff-1.0.1.jar from clojars
#14 20.04 Downloading: io/github/kit-clj/kit-undertow/1.0.0/kit-undertow-1.0.0.jar from clojars
#14 20.05 Downloading: luminus/ring-undertow-adapter/1.2.5/ring-undertow-adapter-1.2.5.jar from clojars
#14 20.21 Downloading: io/github/kit-clj/kit-core/1.0.0/kit-core-1.0.0.jar from clojars
#14 20.68 Cleaning target
#14 20.68 Writing Pom...
#14 20.96 Compiling Clojure...
#14 30.44 Making uberjar...
#14 DONE 37.8s

#15 [native 3/7] COPY --from=build /target/graal-test-standalone.jar /usr/src/app/app.jar
#15 sha256:dbc27bc7a447a21024f1f95b6a3a2802078b346bcf5a0933be90152f96a1f0b4
#15 DONE 0.1s

#16 [native 4/7] RUN gu install native-image
#16 sha256:55e2c676575f3e7d91aa9a8f5c4f303b082e9176353d1c80eaf311bf23cd297b
#16 0.220 Downloading: Component catalog from www.graalvm.org
#16 0.790 Processing Component: Native Image
#16 0.790 Downloading: Component native-image: Native Image  from github.com
#16 1.434 Installing new component: Native Image (org.graalvm.native-image, version 21.0.0)
#16 3.387 Refreshed alternative links in /usr/bin/
#16 DONE 3.4s

#17 [native 5/7] COPY script/compile.sh .
#17 sha256:832944125456e8acc03a3a2fcd3ed20fad6f8d6640e89537c7ea848b9a313f14
#17 DONE 0.0s

#18 [native 6/7] RUN chmod +x compile.sh
#18 sha256:4110a9eaa78f53d0362fbc7b051f0e3de30dbdfb244f27b0ca548d3ee4f64a0c
#18 DONE 0.2s

#19 [native 7/7] RUN ./compile.sh
#19 sha256:59951400ff7df7416800d00473a6b780b2b24fbea884a5d17898ec5d96ddbfca
#19 0.242 [{
#19 0.242     name : org.apache.commons.logging.impl.Jdk14Logger,
#19 0.242     allDeclaredConstructors : true,
#19 0.242     allPublicConstructors : true,
#19 0.242     allDeclaredMethods : true,
#19 0.242     allPublicMethods : true
#19 0.242   }, {
#19 0.242   name: ...
#19 0.242   ]
#19 0.376 Executing [
#19 0.377 /opt/graalvm-ce-java11-21.0.0/bin/java \
#19 0.377 -XX:+UseParallelGC \
#19 0.377 -XX:+UnlockExperimentalVMOptions \
#19 0.377 -XX:+EnableJVMCI \
#19 0.377 -Dtruffle.TrustAllTruffleRuntimeProviders=true \
#19 0.377 -Dtruffle.TruffleRuntime=com.oracle.truffle.api.impl.DefaultTruffleRuntime \
#19 0.377 -Dgraalvm.ForcePolyglotInvalid=true \
#19 0.377 -Dgraalvm.locatorDisabled=true \
#19 0.377 -Dsubstratevm.IgnoreGraalVersionCheck=true \
#19 0.377 --add-exports=jdk.internal.vm.ci/jdk.vm.ci.aarch64=ALL-UNNAMED \
#19 0.377 --add-exports=jdk.internal.vm.ci/jdk.vm.ci.amd64=ALL-UNNAMED \
#19 0.377 --add-exports=jdk.internal.vm.ci/jdk.vm.ci.code.site=ALL-UNNAMED \
#19 0.377 --add-exports=jdk.internal.vm.ci/jdk.vm.ci.code.stack=ALL-UNNAMED \
#19 0.377 --add-exports=jdk.internal.vm.ci/jdk.vm.ci.code=ALL-UNNAMED \
#19 0.377 --add-exports=jdk.internal.vm.ci/jdk.vm.ci.common=ALL-UNNAMED \
#19 0.377 --add-exports=jdk.internal.vm.ci/jdk.vm.ci.hotspot.aarch64=ALL-UNNAMED \
#19 0.377 --add-exports=jdk.internal.vm.ci/jdk.vm.ci.hotspot.amd64=ALL-UNNAMED \
#19 0.377 --add-exports=jdk.internal.vm.ci/jdk.vm.ci.hotspot.sparc=ALL-UNNAMED \
#19 0.377 --add-exports=jdk.internal.vm.ci/jdk.vm.ci.hotspot=ALL-UNNAMED \
#19 0.377 --add-exports=jdk.internal.vm.ci/jdk.vm.ci.meta=ALL-UNNAMED \
#19 0.377 --add-exports=jdk.internal.vm.ci/jdk.vm.ci.runtime=ALL-UNNAMED \
#19 0.377 --add-exports=jdk.internal.vm.ci/jdk.vm.ci.services=ALL-UNNAMED \
#19 0.377 --add-exports=jdk.internal.vm.ci/jdk.vm.ci.sparc=ALL-UNNAMED \
#19 0.377 --add-exports=org.graalvm.truffle/com.oracle.truffle.api=ALL-UNNAMED \
#19 0.377 --add-opens=jdk.internal.vm.compiler/org.graalvm.compiler.debug=ALL-UNNAMED \
#19 0.377 --add-opens=jdk.internal.vm.compiler/org.graalvm.compiler.nodes=ALL-UNNAMED \
#19 0.377 --add-opens=jdk.unsupported/sun.reflect=ALL-UNNAMED \
#19 0.377 --add-opens=java.base/jdk.internal.module=ALL-UNNAMED \
#19 0.377 --add-opens=java.base/jdk.internal.ref=ALL-UNNAMED \
#19 0.377 --add-opens=java.base/jdk.internal.reflect=ALL-UNNAMED \
#19 0.377 --add-opens=java.base/java.io=ALL-UNNAMED \
#19 0.377 --add-opens=java.base/java.lang=ALL-UNNAMED \
#19 0.377 --add-opens=java.base/java.lang.reflect=ALL-UNNAMED \
#19 0.377 --add-opens=java.base/java.lang.invoke=ALL-UNNAMED \
#19 0.377 --add-opens=java.base/java.lang.ref=ALL-UNNAMED \
#19 0.377 --add-opens=java.base/java.net=ALL-UNNAMED \
#19 0.377 --add-opens=java.base/java.nio=ALL-UNNAMED \
#19 0.377 --add-opens=java.base/java.nio.file=ALL-UNNAMED \
#19 0.377 --add-opens=java.base/java.security=ALL-UNNAMED \
#19 0.377 --add-opens=java.base/javax.crypto=ALL-UNNAMED \
#19 0.377 --add-opens=java.base/java.util=ALL-UNNAMED \
#19 0.377 --add-opens=java.base/java.util.concurrent.atomic=ALL-UNNAMED \
#19 0.377 --add-opens=java.base/sun.security.x509=ALL-UNNAMED \
#19 0.377 --add-opens=java.base/jdk.internal.logger=ALL-UNNAMED \
#19 0.377 --add-opens=org.graalvm.sdk/org.graalvm.nativeimage.impl=ALL-UNNAMED \
#19 0.377 --add-opens=org.graalvm.sdk/org.graalvm.polyglot=ALL-UNNAMED \
#19 0.377 --add-opens=org.graalvm.truffle/com.oracle.truffle.polyglot=ALL-UNNAMED \
#19 0.377 --add-opens=org.graalvm.truffle/com.oracle.truffle.api.impl=ALL-UNNAMED \
#19 0.377 -XX:+UseJVMCINativeLibrary \
#19 0.377 -Xss10m \
#19 0.377 -Xms1g \
#19 0.377 -Xmx6676928920 \
#19 0.377 -Duser.country=US \
#19 0.377 -Duser.language=en \
#19 0.377 -Djava.awt.headless=true \
#19 0.377 -Dorg.graalvm.version=21.0.0 \
#19 0.377 -Dorg.graalvm.config= \
#19 0.377 -Dcom.oracle.graalvm.isaot=true \
#19 0.377 -Djava.system.class.loader=com.oracle.svm.hosted.NativeImageSystemClassLoader \
#19 0.377 -Dawt.toolkit=sun.awt.X11.XToolkit \
#19 0.377 -Djava.awt.graphicsenv=sun.awt.X11GraphicsEnvironment \
#19 0.377 -Djava.awt.printerjob=sun.print.PSPrinterJob \
#19 0.377 -Xshare:off \
#19 0.377 --module-path \
#19 0.377 /opt/graalvm-ce-java11-21.0.0/lib/truffle/truffle-api.jar \
#19 0.377 -Djdk.internal.lambda.disableEagerInitialization=true \
#19 0.377 -Djdk.internal.lambda.eagerlyInitialize=false \
#19 0.377 -Djava.lang.invoke.InnerClassLambdaMetafactory.initializeLambdas=false \
#19 0.377 -Dclojure.spec.skip.macros=true \
#19 0.377 -Dclojure.compiler.direct-linking=true \
#19 0.377 -Xmx3G \
#19 0.377 -javaagent:/opt/graalvm-ce-java11-21.0.0/lib/svm/builder/svm.jar \
#19 0.377 -cp \
#19 0.377 /opt/graalvm-ce-java11-21.0.0/lib/svm/builder/objectfile.jar:/opt/graalvm-ce-java11-21.0.0/lib/svm/builder/llvm-platform-specific-shadowed.jar:/opt/graalvm-ce-java11-21.0.0/lib/svm/builder/svm-llvm.jar:/opt/graalvm-ce-java11-21.0.0/lib/svm/builder/pointsto.jar:/opt/graalvm-ce-java11-21.0.0/lib/svm/builder/javacpp-shadowed.jar:/opt/graalvm-ce-java11-21.0.0/lib/svm/builder/llvm-wrapper-shadowed.jar:/opt/graalvm-ce-java11-21.0.0/lib/svm/builder/svm.jar \
#19 0.377 'com.oracle.svm.hosted.NativeImageGeneratorRunner$JDK9Plus' \
#19 0.377 -watchpid \
#19 0.377 10 \
#19 0.377 -imagecp \
#19 0.377 /opt/graalvm-ce-java11-21.0.0/lib/svm/library-support.jar:/usr/src/app/app.jar \
#19 0.377 -H:Path=/usr/src/app \
#19 0.377 -H:Class=org.ninerian.graal_test.core \
#19 0.377 -H:Name=app \
#19 0.377 -H:+ReportExceptionStackTraces \
#19 0.377 -H:ClassInitialization=:build_time \
#19 0.377 -H:EnableURLProtocols=http \
#19 0.377 -H:EnableURLProtocols=https \
#19 0.377 -H:FallbackThreshold=0 \
#19 0.377 -H:+ReportUnsupportedElementsAtRuntime \
#19 0.377 -H:+DumpTargetInfo \
#19 0.377 -H:+StaticExecutableWithDynamicLibC \
#19 0.377 -H:CCompilerOption=-pipe \
#19 0.377 -H:+AllowIncompleteClasspath \
#19 0.377 -H:EnableURLProtocols=http,https \
#19 0.377 -H:+EnableAllSecurityServices \
#19 0.377 -H:CLibraryPath=/opt/graalvm-ce-java11-21.0.0/lib/svm/clibraries/linux-amd64 \
#19 0.377 
#19 0.377 ]
#19 4.185 [app:29]    classlist:   3,081.54 ms,  0.94 GB
#19 5.560 [app:29]        (cap):     533.60 ms,  0.94 GB
#19 6.470 [app:29]        setup:   2,262.68 ms,  0.94 GB
#19 6.579 # Building image for target platform: org.graalvm.nativeimage.Platform$LINUX_AMD64
#19 6.579 # Using native toolchain:
#19 6.579 #   Name: GNU project C and C++ compiler (gcc)
#19 6.579 #   Vendor: redhat
#19 6.580 #   Version: 8.3.1
#19 6.580 #   Target architecture: x86_64
#19 6.580 #   Path: /usr/bin/gcc
#19 6.580 # Using CLibrary: com.oracle.svm.core.posix.linux.libc.GLibC
#19 13.67 07:48:47.891 [ForkJoinPool-2-worker-1] DEBUG org.jboss.logging - Logging Provider: org.jboss.logging.Slf4jLoggerProvider
#19 13.75 07:48:47.967 [ForkJoinPool-2-worker-9] INFO org.xnio - XNIO version 3.8.4.Final
#19 14.59 07:48:48.806 [ForkJoinPool-2-worker-11] DEBUG io.undertow - Using JDK9 ALPN
#19 33.04 07:49:07.262 [ForkJoinPool-4-worker-1] INFO org.xnio.nio - XNIO NIO Implementation Version 3.8.4.Final
#19 36.99 07:49:11.209 [ForkJoinPool-4-worker-5] INFO org.jboss.threads - JBoss Threads version 3.1.0.Final
#19 40.30 07:49:14.520 [ForkJoinPool-4-worker-9] DEBUG io.undertow - JDK8 ALPN Hack failed 
#19 40.30 java.lang.NoSuchFieldException: handshaker
#19 40.30       at java.base/java.lang.Class.getDeclaredField(Class.java:2411)
#19 40.30       at io.undertow.protocols.ssl.ALPNHackSSLEngine.<clinit>(ALPNHackSSLEngine.java:80)
#19 40.30       at java.base/jdk.internal.misc.Unsafe.ensureClassInitialized0(Native Method)
#19 40.30       at java.base/jdk.internal.misc.Unsafe.ensureClassInitialized(Unsafe.java:1042)
#19 40.30       at jdk.unsupported/sun.misc.Unsafe.ensureClassInitialized(Unsafe.java:698)
#19 40.30       at com.oracle.svm.hosted.classinitialization.ConfigurableClassInitialization.ensureClassInitialized(ConfigurableClassInitialization.java:174)
#19 40.30       at com.oracle.svm.hosted.classinitialization.ConfigurableClassInitialization.computeInitKindAndMaybeInitializeClass(ConfigurableClassInitialization.java:607)
#19 40.30       at com.oracle.svm.hosted.classinitialization.ConfigurableClassInitialization.computeInitKindAndMaybeInitializeClass(ConfigurableClassInitialization.java:127)
#19 40.30       at com.oracle.svm.hosted.classinitialization.ConfigurableClassInitialization.maybeInitializeHosted(ConfigurableClassInitialization.java:165)
#19 40.30       at com.oracle.svm.hosted.SVMHost.initializeType(SVMHost.java:265)
#19 40.30       at com.oracle.graal.pointsto.meta.AnalysisType.lambda$new$0(AnalysisType.java:227)
#19 40.30       at java.base/java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:515)
#19 40.30       at java.base/java.util.concurrent.FutureTask.run(FutureTask.java:264)
#19 40.30       at java.base/java.util.concurrent.ForkJoinTask$RunnableExecuteAction.exec(ForkJoinTask.java:1426)
#19 40.30       at java.base/java.util.concurrent.ForkJoinTask.doExec(ForkJoinTask.java:290)
#19 40.30       at java.base/java.util.concurrent.ForkJoinPool$WorkQueue.topLevelExec(ForkJoinPool.java:1020)
#19 40.30       at java.base/java.util.concurrent.ForkJoinPool.scan(ForkJoinPool.java:1656)
#19 40.30       at java.base/java.util.concurrent.ForkJoinPool.runWorker(ForkJoinPool.java:1594)
#19 40.30       at java.base/java.util.concurrent.ForkJoinWorkerThread.run(ForkJoinWorkerThread.java:183)
#19 52.34 WARNING: Could not register reflection metadata for io.undertow.protocols.alpn.JettyAlpnProvider. Reason: java.lang.NoClassDefFoundError: org/eclipse/jetty/alpn/ALPN$ClientProvider.
#19 55.60 WARNING: Could not register reflection metadata for io.undertow.protocols.alpn.JettyAlpnProvider. Reason: java.lang.NoClassDefFoundError: org/eclipse/jetty/alpn/ALPN$ClientProvider.
#19 57.59 WARNING: Could not register reflection metadata for io.undertow.protocols.alpn.JettyAlpnProvider. Reason: java.lang.NoClassDefFoundError: org/eclipse/jetty/alpn/ALPN$ClientProvider.
#19 60.18 Warning: class initialization of class io.undertow.protocols.alpn.JettyAlpnProvider$Impl failed with exception java.lang.NoClassDefFoundError: org/eclipse/jetty/alpn/ALPN$Provider. This class will be initialized at run time because option --allow-incomplete-classpath is used for image building. Use the option --initialize-at-run-time=io.undertow.protocols.alpn.JettyAlpnProvider$Impl to explicitly request delayed initialization of this class.
#19 61.00 [app:29]     (clinit):   1,037.50 ms,  2.04 GB
#19 61.00 # Static libraries:
#19 61.00 #   ../../../opt/graalvm-ce-java11-21.0.0/lib/svm/clibraries/linux-amd64/liblibchelper.a
#19 61.00 #   ../../../opt/graalvm-ce-java11-21.0.0/lib/static/linux-amd64/glibc/libnet.a
#19 61.00 #   ../../../opt/graalvm-ce-java11-21.0.0/lib/static/linux-amd64/glibc/libextnet.a
#19 61.00 #   ../../../opt/graalvm-ce-java11-21.0.0/lib/static/linux-amd64/glibc/libnio.a
#19 61.00 #   ../../../opt/graalvm-ce-java11-21.0.0/lib/static/linux-amd64/glibc/libjava.a
#19 61.00 #   ../../../opt/graalvm-ce-java11-21.0.0/lib/static/linux-amd64/glibc/libfdlibm.a
#19 61.00 #   ../../../opt/graalvm-ce-java11-21.0.0/lib/static/linux-amd64/glibc/libsunec.a
#19 61.00 #   ../../../opt/graalvm-ce-java11-21.0.0/lib/static/linux-amd64/glibc/libzip.a
#19 61.00 #   ../../../opt/graalvm-ce-java11-21.0.0/lib/svm/clibraries/linux-amd64/libjvm.a
#19 61.00 # Other libraries: stdc++,pthread,dl,z,rt
#19 61.30 [app:29]   (typeflow):  19,007.57 ms,  2.04 GB
#19 61.30 [app:29]    (objects):  29,978.31 ms,  2.04 GB
#19 61.30 [app:29]   (features):   1,524.26 ms,  2.04 GB
#19 64.08 [app:29]     analysis:  57,556.18 ms,  2.04 GB
#19 64.09 Error: Unsupported features in 4 methods
#19 64.09 Detailed message:
#19 64.09 Error: com.oracle.graal.pointsto.constraints.UnsupportedFeatureException: Detected a MBean server in the image heap. This is currently not supported, but could be changed in the future. Management beans are registered in many global caches that would need to be cleared and properly re-built at image build time. Class of disallowed object: com.sun.jmx.mbeanserver.JmxMBeanServer  To see how this object got instantiated use --trace-object-instantiation=com.sun.jmx.mbeanserver.JmxMBeanServer. The object was probably created by a class initializer and is reachable from a static field. You can request class initialization at image runtime by using the option --initialize-at-run-time=<class-name>. Or you can write your own initialization methods and call them explicitly from your main entry point.
#19 64.09 Trace: 
#19 64.09       at parsing org.xnio.Xnio$MBeanHolder.access$000(Xnio.java:75)
#19 64.09 Call path from entry point to org.xnio.Xnio$MBeanHolder.access$000(): 
#19 64.09       at org.xnio.Xnio$MBeanHolder.access$000(Xnio.java:75)
#19 64.09       at org.xnio.Xnio$MBeanCloseable.close(Xnio.java:624)
#19 64.09       at org.xnio.IoUtils.safeClose(IoUtils.java:152)
#19 64.09       at org.xnio.nio.WorkerThread.run(WorkerThread.java:506)
#19 64.09       at com.oracle.svm.core.thread.JavaThreads.threadStartRoutine(JavaThreads.java:519)
#19 64.09       at com.oracle.svm.core.posix.thread.PosixJavaThreads.pthreadStartRoutine(PosixJavaThreads.java:192)
#19 64.09       at com.oracle.svm.core.code.IsolateEnterStub.PosixJavaThreads_pthreadStartRoutine_e1f4a8c0039f8337338252cd8734f63a79b5e3df(generated:0)
#19 64.09 Error: com.oracle.graal.pointsto.constraints.UnsupportedFeatureException: Detected a direct/mapped ByteBuffer in the image heap. A direct ByteBuffer has a pointer to unmanaged C memory, and C memory from the image generator is not available at image runtime.A mapped ByteBuffer references a file descriptor, which is no longer open and mapped at run time.   To see how this object got instantiated use --trace-object-instantiation=java.nio.DirectByteBuffer. The object was probably created by a class initializer and is reachable from a static field. You can request class initialization at image runtime by using the option --initialize-at-run-time=<class-name>. Or you can write your own initialization methods and call them explicitly from your main entry point.
#19 64.09 Trace: 
#19 64.09       at parsing io.undertow.server.protocol.ajp.AjpServerRequestConduit.read(AjpServerRequestConduit.java:195)
#19 64.09 Call path from entry point to io.undertow.server.protocol.ajp.AjpServerRequestConduit.read(ByteBuffer): 
#19 64.09       at io.undertow.server.protocol.ajp.AjpServerRequestConduit.read(AjpServerRequestConduit.java:183)
#19 64.09       at io.undertow.protocols.ssl.SslConduit.doUnwrap(SslConduit.java:727)
#19 64.09       at io.undertow.protocols.ssl.SslConduit.doHandshake(SslConduit.java:672)
#19 64.09       at io.undertow.protocols.ssl.SslConduit.access$900(SslConduit.java:70)
#19 64.09       at io.undertow.protocols.ssl.SslConduit$5$1.run(SslConduit.java:1129)
#19 64.09       at org.xnio.nio.WorkerThread.safeRun(WorkerThread.java:612)
#19 64.09       at org.xnio.nio.WorkerThread.run(WorkerThread.java:479)
#19 64.09       at com.oracle.svm.core.thread.JavaThreads.threadStartRoutine(JavaThreads.java:519)
#19 64.09       at com.oracle.svm.core.posix.thread.PosixJavaThreads.pthreadStartRoutine(PosixJavaThreads.java:192)
#19 64.09       at com.oracle.svm.core.code.IsolateEnterStub.PosixJavaThreads_pthreadStartRoutine_e1f4a8c0039f8337338252cd8734f63a79b5e3df(generated:0)
#19 64.09 Error: com.oracle.graal.pointsto.constraints.UnsupportedFeatureException: Detected a direct/mapped ByteBuffer in the image heap. A direct ByteBuffer has a pointer to unmanaged C memory, and C memory from the image generator is not available at image runtime.A mapped ByteBuffer references a file descriptor, which is no longer open and mapped at run time.   To see how this object got instantiated use --trace-object-instantiation=java.nio.DirectByteBuffer. The object was probably created by a class initializer and is reachable from a static field. You can request class initialization at image runtime by using the option --initialize-at-run-time=<class-name>. Or you can write your own initialization methods and call them explicitly from your main entry point.
#19 64.09 Trace: 
#19 64.09       at parsing io.undertow.server.protocol.ajp.AjpServerResponseConduit.flush(AjpServerResponseConduit.java:404)
#19 64.09 Call path from entry point to io.undertow.server.protocol.ajp.AjpServerResponseConduit.flush(): 
#19 64.09       at io.undertow.server.protocol.ajp.AjpServerResponseConduit.flush(AjpServerResponseConduit.java:402)
#19 64.09       at org.xnio.conduits.ConduitStreamSinkChannel.flush(ConduitStreamSinkChannel.java:162)
#19 64.09       at io.undertow.channels.DetachableStreamSinkChannel.flush(DetachableStreamSinkChannel.java:119)
#19 64.09       at org.xnio.channels.Channels.flushBlocking(Channels.java:63)
#19 64.09       at io.undertow.io.UndertowOutputStream.flush(UndertowOutputStream.java:283)
#19 64.09       at java.io.PrintStream.flush(PrintStream.java:417)
#19 64.09       at com.oracle.svm.jni.functions.JNIFunctions.ExceptionDescribe(JNIFunctions.java:763)
#19 64.09       at com.oracle.svm.core.code.IsolateEnterStub.JNIFunctions_ExceptionDescribe_b5412f7570bccae90b000bc37855f00408b2ad73(generated:0)
#19 64.09 Error: com.oracle.graal.pointsto.constraints.UnsupportedFeatureException: No instances of sun.nio.ch.FileChannelImpl are allowed in the image heap as this class should be initialized at image runtime. To see how this object got instantiated use --trace-object-instantiation=sun.nio.ch.FileChannelImpl.
#19 64.09 Trace: 
#19 64.09       at parsing org.xnio.channels.Channels.drain(Channels.java:911)
#19 64.09 Call path from entry point to org.xnio.channels.Channels.drain(StreamSourceChannel, long): 
#19 64.09       at org.xnio.channels.Channels.drain(Channels.java:906)
#19 64.09       at io.undertow.server.HttpServerExchange.endExchange(HttpServerExchange.java:1722)
#19 64.09       at io.undertow.websockets.spi.AsyncWebSocketHttpServerExchange.close(AsyncWebSocketHttpServerExchange.java:219)
#19 64.09       at org.xnio.IoUtils.safeClose(IoUtils.java:152)
#19 64.09       at org.xnio.nio.WorkerThread.run(WorkerThread.java:506)
#19 64.09       at com.oracle.svm.core.thread.JavaThreads.threadStartRoutine(JavaThreads.java:519)
#19 64.09       at com.oracle.svm.core.posix.thread.PosixJavaThreads.pthreadStartRoutine(PosixJavaThreads.java:192)
#19 64.09       at com.oracle.svm.core.code.IsolateEnterStub.PosixJavaThreads_pthreadStartRoutine_e1f4a8c0039f8337338252cd8734f63a79b5e3df(generated:0)
#19 64.09 
#19 64.09 com.oracle.svm.core.util.UserError$UserException: Unsupported features in 4 methods
#19 64.09 Detailed message:
#19 64.09 Error: com.oracle.graal.pointsto.constraints.UnsupportedFeatureException: Detected a MBean server in the image heap. This is currently not supported, but could be changed in the future. Management beans are registered in many global caches that would need to be cleared and properly re-built at image build time. Class of disallowed object: com.sun.jmx.mbeanserver.JmxMBeanServer  To see how this object got instantiated use --trace-object-instantiation=com.sun.jmx.mbeanserver.JmxMBeanServer. The object was probably created by a class initializer and is reachable from a static field. You can request class initialization at image runtime by using the option --initialize-at-run-time=<class-name>. Or you can write your own initialization methods and call them explicitly from your main entry point.
#19 64.09 Trace: 
#19 64.09       at parsing org.xnio.Xnio$MBeanHolder.access$000(Xnio.java:75)
#19 64.09 Call path from entry point to org.xnio.Xnio$MBeanHolder.access$000(): 
#19 64.09       at org.xnio.Xnio$MBeanHolder.access$000(Xnio.java:75)
#19 64.09       at org.xnio.Xnio$MBeanCloseable.close(Xnio.java:624)
#19 64.09       at org.xnio.IoUtils.safeClose(IoUtils.java:152)
#19 64.09       at org.xnio.nio.WorkerThread.run(WorkerThread.java:506)
#19 64.09       at com.oracle.svm.core.thread.JavaThreads.threadStartRoutine(JavaThreads.java:519)
#19 64.09       at com.oracle.svm.core.posix.thread.PosixJavaThreads.pthreadStartRoutine(PosixJavaThreads.java:192)
#19 64.09       at com.oracle.svm.core.code.IsolateEnterStub.PosixJavaThreads_pthreadStartRoutine_e1f4a8c0039f8337338252cd8734f63a79b5e3df(generated:0)
#19 64.09 Error: com.oracle.graal.pointsto.constraints.UnsupportedFeatureException: Detected a direct/mapped ByteBuffer in the image heap. A direct ByteBuffer has a pointer to unmanaged C memory, and C memory from the image generator is not available at image runtime.A mapped ByteBuffer references a file descriptor, which is no longer open and mapped at run time.   To see how this object got instantiated use --trace-object-instantiation=java.nio.DirectByteBuffer. The object was probably created by a class initializer and is reachable from a static field. You can request class initialization at image runtime by using the option --initialize-at-run-time=<class-name>. Or you can write your own initialization methods and call them explicitly from your main entry point.
#19 64.09 Trace: 
#19 64.09       at parsing io.undertow.server.protocol.ajp.AjpServerRequestConduit.read(AjpServerRequestConduit.java:195)
#19 64.09 Call path from entry point to io.undertow.server.protocol.ajp.AjpServerRequestConduit.read(ByteBuffer): 
#19 64.09       at io.undertow.server.protocol.ajp.AjpServerRequestConduit.read(AjpServerRequestConduit.java:183)
#19 64.09       at io.undertow.protocols.ssl.SslConduit.doUnwrap(SslConduit.java:727)
#19 64.09       at io.undertow.protocols.ssl.SslConduit.doHandshake(SslConduit.java:672)
#19 64.09       at io.undertow.protocols.ssl.SslConduit.access$900(SslConduit.java:70)
#19 64.09       at io.undertow.protocols.ssl.SslConduit$5$1.run(SslConduit.java:1129)
#19 64.09       at org.xnio.nio.WorkerThread.safeRun(WorkerThread.java:612)
#19 64.09       at org.xnio.nio.WorkerThread.run(WorkerThread.java:479)
#19 64.09       at com.oracle.svm.core.thread.JavaThreads.threadStartRoutine(JavaThreads.java:519)
#19 64.09       at com.oracle.svm.core.posix.thread.PosixJavaThreads.pthreadStartRoutine(PosixJavaThreads.java:192)
#19 64.09       at com.oracle.svm.core.code.IsolateEnterStub.PosixJavaThreads_pthreadStartRoutine_e1f4a8c0039f8337338252cd8734f63a79b5e3df(generated:0)
#19 64.09 Error: com.oracle.graal.pointsto.constraints.UnsupportedFeatureException: Detected a direct/mapped ByteBuffer in the image heap. A direct ByteBuffer has a pointer to unmanaged C memory, and C memory from the image generator is not available at image runtime.A mapped ByteBuffer references a file descriptor, which is no longer open and mapped at run time.   To see how this object got instantiated use --trace-object-instantiation=java.nio.DirectByteBuffer. The object was probably created by a class initializer and is reachable from a static field. You can request class initialization at image runtime by using the option --initialize-at-run-time=<class-name>. Or you can write your own initialization methods and call them explicitly from your main entry point.
#19 64.09 Trace: 
#19 64.09       at parsing io.undertow.server.protocol.ajp.AjpServerResponseConduit.flush(AjpServerResponseConduit.java:404)
#19 64.09 Call path from entry point to io.undertow.server.protocol.ajp.AjpServerResponseConduit.flush(): 
#19 64.09       at io.undertow.server.protocol.ajp.AjpServerResponseConduit.flush(AjpServerResponseConduit.java:402)
#19 64.09       at org.xnio.conduits.ConduitStreamSinkChannel.flush(ConduitStreamSinkChannel.java:162)
#19 64.09       at io.undertow.channels.DetachableStreamSinkChannel.flush(DetachableStreamSinkChannel.java:119)
#19 64.09       at org.xnio.channels.Channels.flushBlocking(Channels.java:63)
#19 64.09       at io.undertow.io.UndertowOutputStream.flush(UndertowOutputStream.java:283)
#19 64.09       at java.io.PrintStream.flush(PrintStream.java:417)
#19 64.09       at com.oracle.svm.jni.functions.JNIFunctions.ExceptionDescribe(JNIFunctions.java:763)
#19 64.09       at com.oracle.svm.core.code.IsolateEnterStub.JNIFunctions_ExceptionDescribe_b5412f7570bccae90b000bc37855f00408b2ad73(generated:0)
#19 64.09 Error: com.oracle.graal.pointsto.constraints.UnsupportedFeatureException: No instances of sun.nio.ch.FileChannelImpl are allowed in the image heap as this class should be initialized at image runtime. To see how this object got instantiated use --trace-object-instantiation=sun.nio.ch.FileChannelImpl.
#19 64.09 Trace: 
#19 64.09       at parsing org.xnio.channels.Channels.drain(Channels.java:911)
#19 64.09 Call path from entry point to org.xnio.channels.Channels.drain(StreamSourceChannel, long): 
#19 64.09       at org.xnio.channels.Channels.drain(Channels.java:906)
#19 64.09       at io.undertow.server.HttpServerExchange.endExchange(HttpServerExchange.java:1722)
#19 64.09       at io.undertow.websockets.spi.AsyncWebSocketHttpServerExchange.close(AsyncWebSocketHttpServerExchange.java:219)
#19 64.09       at org.xnio.IoUtils.safeClose(IoUtils.java:152)
#19 64.09       at org.xnio.nio.WorkerThread.run(WorkerThread.java:506)
#19 64.09       at com.oracle.svm.core.thread.JavaThreads.threadStartRoutine(JavaThreads.java:519)
#19 64.09       at com.oracle.svm.core.posix.thread.PosixJavaThreads.pthreadStartRoutine(PosixJavaThreads.java:192)
#19 64.09       at com.oracle.svm.core.code.IsolateEnterStub.PosixJavaThreads_pthreadStartRoutine_e1f4a8c0039f8337338252cd8734f63a79b5e3df(generated:0)
#19 64.09 
#19 64.09       at com.oracle.svm.core.util.UserError.abort(UserError.java:82)
#19 64.09       at com.oracle.svm.hosted.FallbackFeature.reportAsFallback(FallbackFeature.java:233)
#19 64.09       at com.oracle.svm.hosted.NativeImageGenerator.runPointsToAnalysis(NativeImageGenerator.java:773)
#19 64.09       at com.oracle.svm.hosted.NativeImageGenerator.doRun(NativeImageGenerator.java:563)
#19 64.09       at com.oracle.svm.hosted.NativeImageGenerator.lambda$run$0(NativeImageGenerator.java:476)
#19 64.09       at java.base/java.util.concurrent.ForkJoinTask$AdaptedRunnableAction.exec(ForkJoinTask.java:1407)
#19 64.09       at java.base/java.util.concurrent.ForkJoinTask.doExec(ForkJoinTask.java:290)
#19 64.09       at java.base/java.util.concurrent.ForkJoinPool$WorkQueue.topLevelExec(ForkJoinPool.java:1020)
#19 64.09       at java.base/java.util.concurrent.ForkJoinPool.scan(ForkJoinPool.java:1656)
#19 64.09       at java.base/java.util.concurrent.ForkJoinPool.runWorker(ForkJoinPool.java:1594)
#19 64.09       at java.base/java.util.concurrent.ForkJoinWorkerThread.run(ForkJoinWorkerThread.java:183)
#19 64.09 Caused by: com.oracle.graal.pointsto.constraints.UnsupportedFeatureException: Unsupported features in 4 methods
#19 64.09 Detailed message:
#19 64.09 Error: com.oracle.graal.pointsto.constraints.UnsupportedFeatureException: Detected a MBean server in the image heap. This is currently not supported, but could be changed in the future. Management beans are registered in many global caches that would need to be cleared and properly re-built at image build time. Class of disallowed object: com.sun.jmx.mbeanserver.JmxMBeanServer  To see how this object got instantiated use --trace-object-instantiation=com.sun.jmx.mbeanserver.JmxMBeanServer. The object was probably created by a class initializer and is reachable from a static field. You can request class initialization at image runtime by using the option --initialize-at-run-time=<class-name>. Or you can write your own initialization methods and call them explicitly from your main entry point.
#19 64.09 Trace: 
#19 64.09       at parsing org.xnio.Xnio$MBeanHolder.access$000(Xnio.java:75)
#19 64.09 Call path from entry point to org.xnio.Xnio$MBeanHolder.access$000(): 
#19 64.09       at org.xnio.Xnio$MBeanHolder.access$000(Xnio.java:75)
#19 64.09       at org.xnio.Xnio$MBeanCloseable.close(Xnio.java:624)
#19 64.09       at org.xnio.IoUtils.safeClose(IoUtils.java:152)
#19 64.09       at org.xnio.nio.WorkerThread.run(WorkerThread.java:506)
#19 64.09       at com.oracle.svm.core.thread.JavaThreads.threadStartRoutine(JavaThreads.java:519)
#19 64.09       at com.oracle.svm.core.posix.thread.PosixJavaThreads.pthreadStartRoutine(PosixJavaThreads.java:192)
#19 64.09       at com.oracle.svm.core.code.IsolateEnterStub.PosixJavaThreads_pthreadStartRoutine_e1f4a8c0039f8337338252cd8734f63a79b5e3df(generated:0)
#19 64.09 Error: com.oracle.graal.pointsto.constraints.UnsupportedFeatureException: Detected a direct/mapped ByteBuffer in the image heap. A direct ByteBuffer has a pointer to unmanaged C memory, and C memory from the image generator is not available at image runtime.A mapped ByteBuffer references a file descriptor, which is no longer open and mapped at run time.   To see how this object got instantiated use --trace-object-instantiation=java.nio.DirectByteBuffer. The object was probably created by a class initializer and is reachable from a static field. You can request class initialization at image runtime by using the option --initialize-at-run-time=<class-name>. Or you can write your own initialization methods and call them explicitly from your main entry point.
#19 64.09 Trace: 
#19 64.09       at parsing io.undertow.server.protocol.ajp.AjpServerRequestConduit.read(AjpServerRequestConduit.java:195)
#19 64.09 Call path from entry point to io.undertow.server.protocol.ajp.AjpServerRequestConduit.read(ByteBuffer): 
#19 64.09       at io.undertow.server.protocol.ajp.AjpServerRequestConduit.read(AjpServerRequestConduit.java:183)
#19 64.09       at io.undertow.protocols.ssl.SslConduit.doUnwrap(SslConduit.java:727)
#19 64.09       at io.undertow.protocols.ssl.SslConduit.doHandshake(SslConduit.java:672)
#19 64.09       at io.undertow.protocols.ssl.SslConduit.access$900(SslConduit.java:70)
#19 64.09       at io.undertow.protocols.ssl.SslConduit$5$1.run(SslConduit.java:1129)
#19 64.09       at org.xnio.nio.WorkerThread.safeRun(WorkerThread.java:612)
#19 64.09       at org.xnio.nio.WorkerThread.run(WorkerThread.java:479)
#19 64.09       at com.oracle.svm.core.thread.JavaThreads.threadStartRoutine(JavaThreads.java:519)
#19 64.09       at com.oracle.svm.core.posix.thread.PosixJavaThreads.pthreadStartRoutine(PosixJavaThreads.java:192)
#19 64.09       at com.oracle.svm.core.code.IsolateEnterStub.PosixJavaThreads_pthreadStartRoutine_e1f4a8c0039f8337338252cd8734f63a79b5e3df(generated:0)
#19 64.09 Error: com.oracle.graal.pointsto.constraints.UnsupportedFeatureException: Detected a direct/mapped ByteBuffer in the image heap. A direct ByteBuffer has a pointer to unmanaged C memory, and C memory from the image generator is not available at image runtime.A mapped ByteBuffer references a file descriptor, which is no longer open and mapped at run time.   To see how this object got instantiated use --trace-object-instantiation=java.nio.DirectByteBuffer. The object was probably created by a class initializer and is reachable from a static field. You can request class initialization at image runtime by using the option --initialize-at-run-time=<class-name>. Or you can write your own initialization methods and call them explicitly from your main entry point.
#19 64.09 Trace: 
#19 64.09       at parsing io.undertow.server.protocol.ajp.AjpServerResponseConduit.flush(AjpServerResponseConduit.java:404)
#19 64.09 Call path from entry point to io.undertow.server.protocol.ajp.AjpServerResponseConduit.flush(): 
#19 64.09       at io.undertow.server.protocol.ajp.AjpServerResponseConduit.flush(AjpServerResponseConduit.java:402)
#19 64.09       at org.xnio.conduits.ConduitStreamSinkChannel.flush(ConduitStreamSinkChannel.java:162)
#19 64.09       at io.undertow.channels.DetachableStreamSinkChannel.flush(DetachableStreamSinkChannel.java:119)
#19 64.09       at org.xnio.channels.Channels.flushBlocking(Channels.java:63)
#19 64.09       at io.undertow.io.UndertowOutputStream.flush(UndertowOutputStream.java:283)
#19 64.09       at java.io.PrintStream.flush(PrintStream.java:417)
#19 64.09       at com.oracle.svm.jni.functions.JNIFunctions.ExceptionDescribe(JNIFunctions.java:763)
#19 64.09       at com.oracle.svm.core.code.IsolateEnterStub.JNIFunctions_ExceptionDescribe_b5412f7570bccae90b000bc37855f00408b2ad73(generated:0)
#19 64.09 Error: com.oracle.graal.pointsto.constraints.UnsupportedFeatureException: No instances of sun.nio.ch.FileChannelImpl are allowed in the image heap as this class should be initialized at image runtime. To see how this object got instantiated use --trace-object-instantiation=sun.nio.ch.FileChannelImpl.
#19 64.09 Trace: 
#19 64.09       at parsing org.xnio.channels.Channels.drain(Channels.java:911)
#19 64.09 Call path from entry point to org.xnio.channels.Channels.drain(StreamSourceChannel, long): 
#19 64.09       at org.xnio.channels.Channels.drain(Channels.java:906)
#19 64.09       at io.undertow.server.HttpServerExchange.endExchange(HttpServerExchange.java:1722)
#19 64.09       at io.undertow.websockets.spi.AsyncWebSocketHttpServerExchange.close(AsyncWebSocketHttpServerExchange.java:219)
#19 64.09       at org.xnio.IoUtils.safeClose(IoUtils.java:152)
#19 64.09       at org.xnio.nio.WorkerThread.run(WorkerThread.java:506)
#19 64.09       at com.oracle.svm.core.thread.JavaThreads.threadStartRoutine(JavaThreads.java:519)
#19 64.09       at com.oracle.svm.core.posix.thread.PosixJavaThreads.pthreadStartRoutine(PosixJavaThreads.java:192)
#19 64.09       at com.oracle.svm.core.code.IsolateEnterStub.PosixJavaThreads_pthreadStartRoutine_e1f4a8c0039f8337338252cd8734f63a79b5e3df(generated:0)
#19 64.09 
#19 64.09       at com.oracle.graal.pointsto.constraints.UnsupportedFeatures.report(UnsupportedFeatures.java:129)
#19 64.09       at com.oracle.svm.hosted.NativeImageGenerator.runPointsToAnalysis(NativeImageGenerator.java:770)
#19 64.09       ... 8 more
#19 64.39 Error: Image build request failed with exit status 1
#19 64.39 com.oracle.svm.driver.NativeImage$NativeImageError: Image build request failed with exit status 1
#19 64.39       at com.oracle.svm.driver.NativeImage.showError(NativeImage.java:1676)
#19 64.39       at com.oracle.svm.driver.NativeImage.build(NativeImage.java:1426)
#19 64.39       at com.oracle.svm.driver.NativeImage.performBuild(NativeImage.java:1387)
#19 64.39       at com.oracle.svm.driver.NativeImage.main(NativeImage.java:1374)
#19 64.39       at com.oracle.svm.driver.NativeImage$JDK9Plus.main(NativeImage.java:1858)
#19 64.39 chmod: cannot access 'app': No such file or directory
#19 64.39 ls: cannot access 'app': No such file or directory
#19 64.39 Size of generated native-image 
#19 DONE 64.4s

#20 exporting to image
#20 sha256:e8c613e07b0b7ff33893b694f7759a10d42e180f2b4dc349fb57dc6b71dcab00
#20 exporting layers 0.2s done
#20 writing image sha256:33288292aa885ba16106a312dcfbd42f8a9f72aea702c3740c056279b57c3fbf done
#20 DONE 0.2s
```
</details>
