FROM node:14-buster-slim

RUN apt-get update -y \
    && mkdir -p /usr/share/man/man1 \
    && apt-get install -y curl openjdk-11-jre-headless \
    && npm install -g firebase-tools

ENV FIRESTORE_EMULATOR_HOST "localhost:8888"

# CMD [ "firebase", "emulators:start" ] 