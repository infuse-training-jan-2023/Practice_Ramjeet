FROM node
WORKDIR ./app
RUN npm install -g npm
ENV port=5000
RUN npm install express 
RUN npm i -D nodemon
COPY server.js .
EXPOSE 5000
CMD npm start
