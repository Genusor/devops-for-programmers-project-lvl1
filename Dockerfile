FROM node:14.6

WORKDIR /app

RUN npm install --global @nodosjs/cli

CMD ["nodos", "server -h 0.0.0.0"]
