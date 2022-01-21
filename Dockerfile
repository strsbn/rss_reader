FROM ruby:3.0.3
#FROM ruby:3.0.3-slim

RUN apt update -qq && apt install -y \
    build-essential \
    nodejs \
    curl

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt update \
    && apt install -y yarn

RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
RUN yarn install
COPY . /app
