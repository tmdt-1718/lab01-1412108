from ruby

run apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

run mkdir /web
workdir /web

add Gemfile /web/Gemfile
add Gemfile.lock /web/Gemfile.lock

Run bundle install

add . /web