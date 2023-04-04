FROM alpine:latest

RUN apk add nodejs
RUN apk add npm

COPY ./ /var/chatgpt-api

WORKDIR /var/chatgpt-api
RUN npm ci --no-color --quiet

ENV API_HOST=0.0.0.0

EXPOSE 4001

ENTRYPOINT npm start
