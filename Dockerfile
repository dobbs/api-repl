FROM ruby:2.4-alpine

RUN apk update && apk add bind-tools curl ca-certificates \
 && gem install pry \
 && gem install faraday
RUN addgroup -S -g 7777 pry \
 && adduser -S -u 7777 -D pry
USER pry
WORKDIR /home/pry

ENTRYPOINT ["env", "pry", "-r", "faraday", "-r", "json", "-r", "yaml"]
