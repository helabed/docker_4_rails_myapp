FROM ruby:2.5

LABEL maintainer="h@elabed.net"
LABEL modified_on="10-24-2018" modified_at="9:00 pm"

RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
  nodejs \
  vim

COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app
RUN bundle install

COPY . /usr/src/app/

CMD ["bin/rails", "s", "-b", "0.0.0.0"]
