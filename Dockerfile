FROM ruby:2.5

RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
  nodejs \
  vim

COPY . /usr/src/app/
WORKDIR /usr/src/app
RUN bundle install

CMD ["bin/rails", "s", "-b", "0.0.0.0"]
