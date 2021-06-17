FROM node:14.6

WORKDIR /app
COPY . /app
RUN npm install
EXPOSE 8080

ENTRYPOINT npm start
