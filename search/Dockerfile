FROM ruby:2.3
WORKDIR /opt/code
COPY Gemfile ./Gemfile 
RUN bundle
VOLUME ["/opt/code"]
ENTRYPOINT bash
