FROM daocloud.io/library/ruby:2.3.0-slim

RUN echo "deb http://mirrors.163.com/debian/ jessie main non-free contrib \n\
deb http://mirrors.163.com/debian/ jessie-updates main non-free contrib \n\
deb http://mirrors.163.com/debian/ jessie-backports main non-free contrib \n\
deb-src http://mirrors.163.com/debian/ jessie main non-free contrib \n\
deb-src http://mirrors.163.com/debian/ jessie-updates main non-free contrib \n\
deb-src http://mirrors.163.com/debian/ jessie-backports main non-free contrib \n\
deb http://mirrors.163.com/debian-security/ jessie/updates main non-free contrib \n\
deb-src http://mirrors.163.com/debian-security/ jessie/updates main non-free contrib" > /etc/apt/sources.list

RUN apt-get update

# for image manipulation
RUN apt-get install -y imagemagick

# for running test on daocloud
RUN apt-get install -y git

# for mysql
RUN apt-get install -y ruby-mysql libmysqlclient-dev

# for nokogiri
RUN apt-get install -y build-essential libxml2-dev libxslt1-dev

# install libgraphqlparser
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:george-edison55/cmake-3.x
RUN apt-get update || true
RUN apt-get install -y cmake
RUN apt-get install -y wget
RUN wget https://github.com/graphql/libgraphqlparser/archive/v0.5.0.tar.gz
RUN tar -xzvf v0.5.0.tar.gz
RUN cd libgraphqlparser-0.5.0/ && cmake . && make && make install

RUN gem install bundler

RUN bundle install
