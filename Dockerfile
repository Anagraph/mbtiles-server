FROM node:14-alpine3.11
RUN apk add --no-cache --virtual .build-deps make gcc g++ python3 sqlite && \
    if [ ! -e /usr/bin/python ]; then ln -sf python3 /usr/bin/python ; fi
ENV PYTHONUNBUFFERED=1


RUN mkdir /mbtiles-server/
WORKDIR /mbtiles-server/

COPY package*.json ./
RUN npm install

COPY . .

CMD ["npm", "run", "start"]

