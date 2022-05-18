FROM     node
RUN      mkdir /app
WORKDIR  /app
COPY     server.js .
COPY     package.json .
CMD      ["node","server.js"]