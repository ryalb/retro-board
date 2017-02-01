FROM node:6.9.4

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN npm install
RUN npm rebuild node-sass
RUN npm run build

EXPOSE 8080

CMD ["npm", "start"]