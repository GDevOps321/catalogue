FROM     node
RUN      mkdir /app
WORKDIR  /app
COPY     server.js package.json /app/
CMD      ["node","server.js"]