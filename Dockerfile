FROM ruby:4.0.2-trixie

RUN apt-get update && apt-get install -y rsync
