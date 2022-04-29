FROM ruby:3.0.0

RUN apt-get update && apt-get install -y build-essential libpq-dev nodejs
ARG DIR=/home/trabajo

WORKDIR ${DIR}

COPY Gemfile ${DIR}
COPY Gemfile.lock ${DIR}

RUN gem install bundler && bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

COPY . ${DIR}
EXPOSE 3000