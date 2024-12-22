#!/bin/bash

# Exit immediately if a command fails
set -e

# Print a message to indicate setup has started
echo "Starting back-end and database setup..."

# Check for rvm
if command -v rbenv > /dev/null 2>&1; then
  echo "rbenv found.  setting up Ruby environment..."
  rbenv install -s $(cat .ruby-version)
  rbenv global $(cat .ruby-version)
else
  echo "rbenv not found.  Please install it first, or switch to rbenv."
  exit 1
fi

# Check for Bundler & install if missing
if ! gem list bundler -i /dev/null 2>&1; then 
  echo "Bundler not found.  Installing ..."
  gem install bundler
else 
  echo "Bundler is already installed."
fi

# Install Ruby gems
echo "Installing Ruby gems..."
bundle install

# Check for MySQL
if command -v > /dev/null 2>&1; then
  echo "MySQL found. Setting up the database..."
  mysql -u root -p -e "CREATE DATABASE IF NOT EXISTS photo_database;"
  echo "Database created or already exists."
else
  echo "MySQL not found.  Please install it and ensure it is running."
  exit 1
fi
