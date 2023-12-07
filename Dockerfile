FROM node:11-alpine
WORKDIR /app
RUN apt-get update && \
    apt-get install -y nodejs npm 
COPY package.json /app/
RUN npm install
COPY . /app/
CMD [ "npm","start" ]
