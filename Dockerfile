FROM selenium/hub:3.141.59-yttrium
USER root

RUN apt-get update -y
RUN apt-get upgrade -y

# Ruby のビルドに必要なパッケージを apt-get 経由でインストールする
RUN apt-get install -y build-essential
RUN apt-get install -y libssl-dev libreadline-dev zlib1g-dev
RUN apt-get install -y git wget

# ruby-build を使って任意の Ruby バージョンをインストールする
RUN git clone --depth=1 https://github.com/rbenv/ruby-build
RUN PREFIX=/usr/local ./ruby-build/install.sh
RUN rm -rf ruby-build
RUN ruby-build 2.7.2 /usr/local

RUN apt-get update

RUN apt-get -y install software-properties-common git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev libffi-dev nodejs

RUN gem install cucumber -v 2.4.0 -N
RUN gem install selenium-webdriver -v 3.4.0 -N
RUN gem install capybara -v 2.13.0 -N
RUN gem install rspec-expectations -v 3.5.0 -N
RUN gem install rspec -v 3.5.0 -N
RUN gem install chronic -v 0.10.2 -N
RUN gem install httparty -v 0.13.7 -N
RUN gem install parallel_tests -v 2.6.0 -N
RUN gem install byebug -v 9.0.5 -N
RUN gem install poltergeist -v 1.10.0 -N
RUN gem update selenium-webdriver -N