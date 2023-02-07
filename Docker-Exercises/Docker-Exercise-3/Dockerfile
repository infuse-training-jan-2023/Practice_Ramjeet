FROM ruby 
WORKDIR ./app
RUN gem install test-unit

COPY app.rb .
COPY test-app.rb .
CMD ruby app.rb 
CMD ruby test-app.rb 
