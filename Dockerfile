FROM mongo-express:latest

WORKDIR /app

RUN rm config.default.js \
    && rm lib/db.js

COPY configs/mongo-multiple-db.js config.default.js
COPY lib/db.js lib/db.js
