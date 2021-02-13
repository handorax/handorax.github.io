# syntax=docker/dockerfile:experimental
FROM jekyll/jekyll:4.1.0
ENV LANG C.UTF-8
ENV BUNDLE_PATH=$GEM_HOME
WORKDIR /app
COPY Gemfile Gemfile
RUN touch Gemfile.lock
RUN chmod a+w Gemfile.lock
# RUN gem install bundler --version=2.0.2
RUN bundle install
CMD ["jekyll", "serve", "--watch", "-P", "4000"]
