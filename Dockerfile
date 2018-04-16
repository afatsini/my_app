FROM ruby:2.5.1
RUN apt-get update && apt-get install

WORKDIR /my_app
COPY Gemfile* ./
RUN bundle install
COPY . ./
CMD bundle exec rails server -p $PORT -b '0.0.0.0'
