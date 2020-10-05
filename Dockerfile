FROM node:13-alpine3.11

RUN mkdir /mbtiles-server/

WORKDIR /mbtiles-server/

COPY . .

RUN npm install

ENTRYPOINT ["npm", "run", "start"]

