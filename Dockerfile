FROM node

WORKDIR /app

COPY package.json /app

RUN yarn

COPY . .

ENV PORT 7777

EXPOSE $PORT

VOLUME [ "/app/data" ]

CMD ["node", "app.js"]