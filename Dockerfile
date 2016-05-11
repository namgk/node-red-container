FROM node:6.1.0

RUN mkdir -p /usr/src/node-red && mkdir ~/.node-red
WORKDIR /usr/src/node-red

COPY package.json /usr/src/node-red/
RUN npm install -g grunt-cli && npm install
COPY . /usr/src/node-red
RUN grunt build

EXPOSE 1880

CMD [ "npm", "start" ]
