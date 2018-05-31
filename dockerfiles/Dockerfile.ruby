FROM ruby:2.4.4
USER root

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update
RUN apt-get install -y build-essential libpq-dev nodejs