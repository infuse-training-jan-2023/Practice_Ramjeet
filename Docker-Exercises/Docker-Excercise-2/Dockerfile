FROM ruby 
WORKDIR ./app
RUN gem install json
ENV arg='{"employee_name":"jason","email":"jason@gmail.com"}'
COPY app.rb .
CMD ruby app.rb 
