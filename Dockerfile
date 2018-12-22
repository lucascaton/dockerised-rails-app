FROM ruby:2.5
ENV APP_HOME /app
WORKDIR $APP_HOME

RUN apt-get update -qq -y

COPY Gemfile $APP_HOME/Gemfile
COPY Gemfile.lock $APP_HOME/Gemfile.lock
RUN bundle install

COPY . $APP_HOME
