FROM ruby:2.4.2

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs cmake pdftk dos2unix libreoffice
RUN cd /tmp && curl -LO https://storage.googleapis.com/binti-public/phantomjs-2.1.1-linux-x86_64.tar.bz2 && \
  tar jxf phantomjs-2.1.1-linux-x86_64.tar.bz2 && mv phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin
