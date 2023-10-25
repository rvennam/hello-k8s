FROM node:13.6.0-alpine

RUN apk --no-cache add curl

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY app/package.json .
RUN npm install

# Bundle app source
COPY ./app/* .

USER node
CMD [ "npm", "start" ]
