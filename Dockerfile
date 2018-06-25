FROM openjdk:8-jre-alpine
RUN apk update

# Install unzip
RUN apk add unzip

# Download and unzip DbFit
RUN wget https://github.com/dbfit/dbfit/releases/download/v3.2.0/dbfit-complete-3.2.0.zip
    && unzip -d dbfit dbfit-complete-3.2.0.zip

# Starts on localhost:8085
CMD ./dbfit/startFitnesse.sh

