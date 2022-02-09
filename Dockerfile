FROM node:16-alpine

WORKDIR /app/

COPY package.json yarn.lock /app/
COPY worker.js /app/

RUN yarn install --silent --frozen-lockfile

CMD [ "node", "worker.js" ]
