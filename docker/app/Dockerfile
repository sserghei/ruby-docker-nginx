FROM ruby:2.6.1-alpine

RUN apk update && apk add build-base git nodejs postgresql-dev libxslt-dev libxml2-dev tzdata bash dcron && rm -rf /var/cache/apk/*

#WORKDIR /app
#
#COPY Gemfile Gemfile.lock ./
#RUN bundle config build.nokogiri --use-system-libraries
#RUN bundle install --binstubs
#
#COPY . .
#
#RUN bin/rake assets:precompile
#
#CMD puma -C config/puma.rb
#




ENV RAILS_ROOT /var/www/app
RUN mkdir -p $RAILS_ROOT

# Set working directory
WORKDIR $RAILS_ROOT

# Adding gems
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle install --binstubs
COPY . .
RUN bundle exec rake assets:precompile

EXPOSE 3000

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]