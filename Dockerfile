FROM ruby:2.7.2
RUN apt-get update
WORKDIR /app
COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install
