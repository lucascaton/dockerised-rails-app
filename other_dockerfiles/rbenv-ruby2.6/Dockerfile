FROM ubuntu:latest
ENV APP_HOME /app
WORKDIR $APP_HOME

RUN apt-get -qq update && apt-get install -y \
    build-essential \
    git \
    wget \
    libssl-dev \
    libreadline-dev \
    zlib1g-dev

RUN git clone https://github.com/rbenv/rbenv.git $HOME/.rbenv && \
    git clone https://github.com/rbenv/ruby-build.git $HOME/.rbenv/plugins/ruby-build && \
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc && \
    echo 'eval "$(rbenv init -)"' >> ~/.bashrc && \
    export PATH="$HOME/.rbenv/bin:$PATH"

RUN cd $HOME/.rbenv/plugins/ruby-build && git pull

RUN $HOME/.rbenv/bin/rbenv install 2.6.0
RUN $HOME/.rbenv/bin/rbenv global  2.6.0

# RUN $HOME/.rbenv/versions/2.6.0/bin/ruby -v
