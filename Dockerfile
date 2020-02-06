FROM ruby
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

WORKDIR /usr/src/app
RUN gem install bundler:1.17.2
COPY Gemfile Gemfile.lock ./
RUN bundle install  --path vendor/bundle

COPY . .
ENV RAILS_ENV=development
CMD ["./bin/rails", "server", "-b", "0.0.0.0"]

