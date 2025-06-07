FROM ruby:3.4.4-bookworm

RUN apt-get update && apt-get install -y rsync
