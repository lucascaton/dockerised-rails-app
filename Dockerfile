FROM ruby:2.5
ENV APP_HOME /app
WORKDIR $APP_HOME

RUN apt-get -qq update && apt-get install -y \
  curl

RUN curl -o- -L https://deb.nodesource.com/setup_11.x | bash
RUN apt-get install -y nodejs

RUN curl -o- -L https://yarnpkg.com/install.sh | bash

COPY Gemfile $APP_HOME/Gemfile
COPY Gemfile.lock $APP_HOME/Gemfile.lock
RUN bundle install

COPY . $APP_HOME
