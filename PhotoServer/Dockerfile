# syntax=docker/dockerfile:1
# check=error=true

# This Dockerfile is designed for production, not development. Use with Kamal or build'n'run by hand:
# docker build -t photo_server .
# docker run -d -p 80:80 -e RAILS_MASTER_KEY=<value from config/master.key> --name photo_server photo_server

# For a containerized dev environment, see Dev Containers: https://guides.rubyonrails.org/getting_started_with_devcontainer.html

# Make sure RUBY_VERSION matches the Ruby version in .ruby-version
#ARG RUBY_VERSION=3.2.2
#FROM docker.io/library/ruby:$RUBY_VERSION-slim AS base
FROM docker.io/library/ruby:3.2.2-slim AS base

# Rails app lives here
WORKDIR /rails

# Install base packages
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y \
    curl libjemalloc2 libvips sqlite3 && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

# Install packages needed to build gems
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y build-essential git pkg-config && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

# Install mysql dependencies
RUN apt-get update -qq && apt-get install -y \
    default-libmysqlclient-dev \
    build-essential

RUN apt-get update && apt-get install -y libmariadb-dev
RUN apt-get update && apt-get install -y libmariadb3

# Install application gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy application code
COPY . .

ENV RAILS_LOG_TO_STDOUT="true"
ENV RAILS_SERVE_STATIC_FILES="true"

# ports exposed for development, not production
EXPOSE 3000 3035
#CMD ["./bin/thrust", "./bin/rails", "server"]
CMD ["sh", "-c", "rm -f /rails/tmp/pids/server.pid && ./bin/rails server -b 0.0.0.0"]
#CMD ["rails", "server", "-b", "0.0.0.0"]